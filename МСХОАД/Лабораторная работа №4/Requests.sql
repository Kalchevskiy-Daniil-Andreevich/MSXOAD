------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT DISTINCT
    EXTRACT(YEAR FROM DATE_ORDER) AS YEAR,
    CASE
        WHEN EXTRACT(MONTH FROM DATE_ORDER) <= 6 THEN '1-е полугодие'
        ELSE '2-е полугодие'
    END AS HALF_YEAR,
    CASE
        WHEN EXTRACT(MONTH FROM DATE_ORDER) <= 3 THEN '1-й квартал'
        WHEN EXTRACT(MONTH FROM DATE_ORDER) <= 6 THEN '2-й квартал'
        WHEN EXTRACT(MONTH FROM DATE_ORDER) <= 9 THEN '3-й квартал'
        ELSE '4-й квартал'
    END AS QUARTER,
    TO_CHAR(DATE_ORDER, 'Month') AS MONTH,
    SUM(PRICE_ORDER) OVER (PARTITION BY EXTRACT(YEAR FROM DATE_ORDER)) AS SUM_YEAR,
    SUM(PRICE_ORDER) OVER (PARTITION BY EXTRACT(YEAR FROM DATE_ORDER), CASE WHEN EXTRACT(MONTH FROM DATE_ORDER) <= 6 THEN '1-е полугодие' ELSE '2-е полугодие' END) AS SUM_HALF_YEAR,
    SUM(PRICE_ORDER) OVER (PARTITION BY EXTRACT(YEAR FROM DATE_ORDER), CASE
        WHEN EXTRACT(MONTH FROM DATE_ORDER) <= 3 THEN '1-й квартал'
        WHEN EXTRACT(MONTH FROM DATE_ORDER) <= 6 THEN '2-й квартал'
        WHEN EXTRACT(MONTH FROM DATE_ORDER) <= 9 THEN '3-й квартал'
        ELSE '4-й квартал'
    END) AS SUM_QUARTER,
    SUM(PRICE_ORDER) OVER (PARTITION BY EXTRACT(YEAR FROM DATE_ORDER), TO_CHAR(DATE_ORDER, 'Month')) AS SUM_MONTH
FROM
    ORDERS
ORDER BY
    YEAR,
    HALF_YEAR,
    QUARTER,
    MONTH;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    ROUND(PRICE_OF_PERIOD),
    ROUND(PRICE_OF_PERIOD / TOTAL_PRICE) * 100 AS PRICE_OF_PERIOD_PERCENT,
    ROUND(PRICE_OF_PERIOD / MAX_PRICE_IN_PERIOD) * 100 AS PRICE_OF_PERIOD_MAX_PERCENT
FROM
    (
        SELECT
            SUM(ot.PRICE_ORDER) AS PRICE_OF_PERIOD,
            (SELECT SUM(PRICE_ORDER) FROM ORDERS) AS TOTAL_PRICE,
            (SELECT MAX(ot2.PRICE_ORDER) FROM ORDERS ot2) AS MAX_PRICE_IN_PERIOD
        FROM
            ORDERS ot
        WHERE
            TO_CHAR(ot.DATE_ORDER, 'DD.MM.YY') >= '01.01.21' AND TO_CHAR(ot.DATE_ORDER, 'DD.MM.YY') <= '23.11.23'
        GROUP BY
            ot.ID_BOOK
    )
WHERE ROWNUM <= 1;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT *
FROM (
    SELECT
        ROW_NUMBER() OVER (ORDER BY ID_BOOK) AS rn,
        ID_BOOK,
        ID_AUTHOR,
        ID_GENRE,
        NAME_BOOK,
        DIRECTION_BOOK,
        YEAR_OF_PUBLISHING
    FROM
        BOOKS
) sub
WHERE
    rn BETWEEN 1 AND 20;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM BOOKS
WHERE ID_BOOK NOT IN (
    SELECT ID_BOOK FROM (
        SELECT 
            ID_BOOK,
            ROW_NUMBER() OVER (
                PARTITION BY DIRECTION_BOOK
                ORDER BY ID_BOOK
            ) AS RN
        FROM BOOKS
    ) WHERE RN = 1
);

SELECT * FROM BOOKS;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    A.ID_AUTHOR,
    A.LASTNAME_AUTHOR,
    A.NAME_AUTHOR,
    A.MIDDLENAME_AUTHOR,
    TO_CHAR(B.YEAR_OF_PUBLISHING, 'YYYY-MM') AS PUBLISH_MONTH,
    COUNT(B.ID_BOOK) AS COUNT_OF_BOOKS
FROM
    AUTHORS A
    LEFT JOIN BOOKS B ON A.ID_AUTHOR = B.ID_AUTHOR
WHERE
    B.YEAR_OF_PUBLISHING >= ADD_MONTHS(TRUNC(SYSDATE), -6) OR B.YEAR_OF_PUBLISHING IS NULL
GROUP BY
    A.ID_AUTHOR,
    A.LASTNAME_AUTHOR,
    A.NAME_AUTHOR,
    A.MIDDLENAME_AUTHOR,
    TO_CHAR(B.YEAR_OF_PUBLISHING, 'YYYY-MM')
ORDER BY
    A.ID_AUTHOR,
    PUBLISH_MONTH;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT A.NAME_AUTHOR, G.NAME_GENRE
FROM AUTHORS A
JOIN BOOKS B ON A.ID_AUTHOR = B.ID_AUTHOR
JOIN GENRES G ON B.ID_GENRE = G.ID_GENRE
WHERE (
    SELECT COUNT(*)
    FROM BOOKS B2
    WHERE B2.ID_AUTHOR = B.ID_AUTHOR
    GROUP BY B2.ID_AUTHOR
) = (
    SELECT MAX(GENRE_COUNT)
    FROM (
        SELECT COUNT(*) AS GENRE_COUNT
        FROM BOOKS B3
        GROUP BY B3.ID_AUTHOR
    )
);

WITH AuthorGenrePopularity AS (
    SELECT
        A.ID_AUTHOR,
        G.NAME_GENRE,
        COUNT(B.ID_BOOK) AS COUNT_OF_BOOKS
    FROM
        AUTHORS A
        LEFT JOIN BOOKS B ON A.ID_AUTHOR = B.ID_AUTHOR
        LEFT JOIN GENRES G ON B.ID_GENRE = G.ID_GENRE
    GROUP BY
        A.ID_AUTHOR,
        G.NAME_GENRE
)
SELECT
    AGP.ID_AUTHOR,
    AGP.NAME_GENRE,
    AGP.COUNT_OF_BOOKS
FROM (
    SELECT
        AGP.*,
        ROW_NUMBER() OVER (PARTITION BY AGP.ID_AUTHOR ORDER BY AGP.COUNT_OF_BOOKS DESC) AS RN
    FROM
        AuthorGenrePopularity AGP
) AGP
WHERE
    RN = 1;
