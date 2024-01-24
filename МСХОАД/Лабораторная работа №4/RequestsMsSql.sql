--Вычисление итогов выпуска продукции(книг) определенного жанра помесячно, за квартал, за полгода, за год.--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--В базе данных SQLite, журнал используется для обеспечения целостности данных и поддержания надежности транзакций. SQLite поддерживает несколько режимов журналирования, которые определяют, как база данных
--обрабатывает транзакции и какие механизмы обеспечиваются для восстановления данных в случае сбоев. Режимы журналирования включают в себя:DELETE, TRUNCATE (Обрезание), PERSIST (Сохранение), MEMORY. WAL.
--журнал удаляется после успешного завершения транзакции; Журнал обрезается после завершения транзакции, и данные сохраняются в журнале до того, как он обрезается; режим сохраняет журнал даже после завершения транзакции
--В этом режиме журнал хранится в памяти, а не на диске. Изменения записываются в отдельный файл журнала (wal-файл), а база данных остается неизменной до момента фиксации транзакции.
SELECT DISTINCT
    b.ID_GENRE,
    YEAR(b.YEAR_OF_PUBLISHING) AS YEAR,
    CONCAT(YEAR(b.YEAR_OF_PUBLISHING), '-', FLOOR((MONTH(b.YEAR_OF_PUBLISHING) - 1) / 6) + 1) AS HALF_YEAR,
    CONCAT(YEAR(b.YEAR_OF_PUBLISHING), '-', FLOOR((MONTH(b.YEAR_OF_PUBLISHING) - 1) / 3) + 1) AS QUARTER,
    MONTH(b.YEAR_OF_PUBLISHING) AS MONTH,
    SUM(CASE WHEN YEAR(b.YEAR_OF_PUBLISHING) = YEAR(b.YEAR_OF_PUBLISHING) THEN 1 ELSE 0 END) OVER (PARTITION BY b.ID_GENRE, YEAR(b.YEAR_OF_PUBLISHING)) AS SUM_YEAR,
    SUM(CASE WHEN YEAR(b.YEAR_OF_PUBLISHING) = YEAR(b.YEAR_OF_PUBLISHING) AND FLOOR((MONTH(b.YEAR_OF_PUBLISHING) - 1) / 6) + 1 = FLOOR((MONTH(b.YEAR_OF_PUBLISHING) - 1) / 6) + 1 THEN 1 ELSE 0 END) OVER (PARTITION BY b.ID_GENRE, YEAR(b.YEAR_OF_PUBLISHING), CONCAT(YEAR(b.YEAR_OF_PUBLISHING), '-', FLOOR((MONTH(b.YEAR_OF_PUBLISHING) - 1) / 6) + 1)) AS SUM_HALF_YEAR,
    SUM(CASE WHEN YEAR(b.YEAR_OF_PUBLISHING) = YEAR(b.YEAR_OF_PUBLISHING) AND FLOOR((MONTH(b.YEAR_OF_PUBLISHING) - 1) / 3) + 1 = FLOOR((MONTH(b.YEAR_OF_PUBLISHING) - 1) / 3) + 1 THEN 1 ELSE 0 END) OVER (PARTITION BY b.ID_GENRE, YEAR(b.YEAR_OF_PUBLISHING), CONCAT(YEAR(b.YEAR_OF_PUBLISHING), '-', FLOOR((MONTH(b.YEAR_OF_PUBLISHING) - 1) / 3) + 1)) AS SUM_QUARTER,
    SUM(CASE WHEN YEAR(b.YEAR_OF_PUBLISHING) = YEAR(b.YEAR_OF_PUBLISHING) AND MONTH(b.YEAR_OF_PUBLISHING) = MONTH(b.YEAR_OF_PUBLISHING) THEN 1 ELSE 0 END) OVER (PARTITION BY b.ID_GENRE, YEAR(b.YEAR_OF_PUBLISHING), MONTH(b.YEAR_OF_PUBLISHING)) AS SUM_MONTH
FROM
    BOOKS b
WHERE
    b.ID_GENRE = 1
ORDER BY
    YEAR,
    HALF_YEAR,
    QUARTER,
    MONTH;


--Вычисление итогов выпуска продукции определенного направления за определенный период: объем выпуска; сравнение с общим объемом выпуска (в %); сравнение с пиковыми значениями объема выпуска (в %)---------------
--проводить агрегацию по общему объему услуг и объему услуг для каждой даты заказа; Оставляет только строки, где производится агрегация по дате заказа, исключая строки, где производится общая агрегация.----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--функции оконного анализа

WITH GenreCounts AS (
    SELECT
        GENRES.ID_GENRE,
        MAX(COUNT(*)) OVER () AS 'Пиковое_значение'
    FROM
        ORDERS
    JOIN
        BOOKS ON ORDERS.ID_BOOK = BOOKS.ID_BOOK
    JOIN
        GENRES ON BOOKS.ID_GENRE = GENRES.ID_GENRE
    WHERE
        DATE_ORDER BETWEEN DATEADD(YEAR, -1, GETDATE()) AND GETDATE()
    GROUP BY
        GENRES.ID_GENRE
)

SELECT 
    GENRES.NAME_GENRE,
    COUNT(*) AS 'Объем выпуска',
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM ORDERS WHERE DATE_ORDER BETWEEN DATEADD(YEAR, -1, GETDATE()) AND GETDATE())) AS 'Процент от общего объема',
    (COUNT(*) * 100.0 / gc.Пиковое_значение) AS 'Процент от пикового значения'
FROM 
    ORDERS
JOIN 
    BOOKS ON ORDERS.ID_BOOK = BOOKS.ID_BOOK
JOIN 
    GENRES ON BOOKS.ID_GENRE = GENRES.ID_GENRE
JOIN
    GenreCounts gc ON GENRES.ID_GENRE = gc.ID_GENRE
WHERE 
    DATE_ORDER BETWEEN DATEADD(YEAR, -1, GETDATE()) AND GETDATE()
GROUP BY 
    GENRES.NAME_GENRE, GENRES.ID_GENRE, gc.Пиковое_значение;


--Продемонстрируйте применение функции ранжирования ROW_NUMBER() для разбиения результатов запроса на страницы (по 20 строк на каждую страницу)---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--присваивает каждой строке уникальный номер в пределах определенного порядка сортировки. ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DECLARE
	@PageNumber INT = 1;
SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY ID_ORDER) AS RowNumber
    FROM ORDERS
) AS RowNumbered
WHERE RowNumber BETWEEN ((@PageNumber - 1) * 20 + 1) AND (@PageNumber * 20);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
WITH RankedOrders AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY ID_BOOK ORDER BY ID_BOOK) AS RowNumber
    FROM ORDERS
)
DELETE FROM RankedOrders
WHERE RowNumber > 1;

SELECT * FROM ORDERS;
--Вернуть для каждого автора количество изданных книг за последние 6 месяцев помесячно.---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    A.ID_AUTHOR,
    A.LASTNAME_AUTHOR,
    A.NAME_AUTHOR,
    A.MIDDLENAME_AUTHOR,
    COUNT(*) AS NUMBER_OF_BOOKS,
    MONTH(B.YEAR_OF_PUBLISHING) AS PUBLISH_MONTH
FROM
    AUTHORS A
    INNER JOIN BOOKS B ON A.ID_AUTHOR = B.ID_AUTHOR
WHERE
    B.YEAR_OF_PUBLISHING >= DATEADD(MONTH, -6, GETDATE())
GROUP BY
    A.ID_AUTHOR,
    A.LASTNAME_AUTHOR,
    A.NAME_AUTHOR,
    A.MIDDLENAME_AUTHOR,
    MONTH(B.YEAR_OF_PUBLISHING)
ORDER BY
    A.ID_AUTHOR,
    PUBLISH_MONTH;
--Какой жанр пользовался наибольшей популярностью для определенного автора? Вернуть для всех авторов. на основе количества книг каждого жанра---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    A.ID_AUTHOR,
    A.LASTNAME_AUTHOR,
    A.NAME_AUTHOR,
    A.MIDDLENAME_AUTHOR,
    G.NAME_GENRE AS POPULAR_GENRE
FROM
    AUTHORS A
    INNER JOIN (
        SELECT
            B.ID_AUTHOR,
            B.ID_GENRE,
            COUNT(*) AS GENRE_COUNT,
            ROW_NUMBER() OVER (PARTITION BY B.ID_AUTHOR ORDER BY COUNT(*) DESC) AS RN
        FROM
            BOOKS B
        GROUP BY
            B.ID_AUTHOR,
            B.ID_GENRE
    ) AS BG ON A.ID_AUTHOR = BG.ID_AUTHOR
    INNER JOIN GENRES G ON BG.ID_GENRE = G.ID_GENRE
WHERE
    BG.RN = 1
ORDER BY
    A.ID_AUTHOR;

go
CREATE OR ALTER PROCEDURE RandomStocks
AS
BEGIN
    DECLARE @idStock INT = 1,
            @idBook INT,
            @countBook INT,
            @dateArrival DATE;

    WHILE (@idStock <= 500)
    BEGIN
        SET @idBook = ROUND(RAND() * 499 + 1, 0);
        SET @countBook = ROUND(RAND() * 499 + 1, 0); 
        SET @dateArrival = DATEADD(day, ABS(CHECKSUM(NEWID())) % DATEDIFF(day, '2020-01-01', '2023-11-07'), '2020-01-01');

        INSERT INTO STOCKS(ID_STOCK, ID_BOOK, COUNT_BOOK, DATE_ARRIVAL)
        VALUES (@idStock, @idBook, @countBook, @dateArrival);

        SET @idStock = @idStock + 1;
    END;
END;

EXEC RandomStocks;
