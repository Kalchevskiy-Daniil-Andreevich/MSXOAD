--увеличивая количество выпускаемых книг на 1% 

DECLARE
    pMONTH_ORDER NUMBER;
    pYEAR_ORDER NUMBER;
    pCOUNT_BOOK NUMBER;
BEGIN
    FOR COUNTER IN  1..1000
    LOOP
    SELECT DBMS_RANDOM.VALUE(1, 12) NUM INTO pMONTH_ORDER FROM DUAL;
    pMONTH_ORDER := ROUND(pMONTH_ORDER);
    SELECT DBMS_RANDOM.VALUE(2020, 2023) NUM INTO pYEAR_ORDER FROM DUAL;
    pYEAR_ORDER := ROUND(pYEAR_ORDER);
    SELECT DBMS_RANDOM.VALUE(1, 500) NUM INTO pCOUNT_BOOK FROM DUAL;
    pCOUNT_BOOK := ROUND(pCOUNT_BOOK);
    INSERT INTO SALES(ID_AUTHOR, ID_ORDER, ID_BOOK, ID_READER, STATUS_ORDER,COUNT_BOOK, MONTH_ORDER, YEAR_ORDER, PRICE_ORDER) 
    VALUES(COUNTER, COUNTER, IBOOKS, IDREADER, RAND_STATORDER, pCOUNT_BOOK, pMONTH_ORDER, pYEAR_ORDER, PRICEORDER);
    END LOOP;  
END;

SELECT ID_READER, ID_BOOK, YEAR_ORDER, MONTH_ORDER, COUNT_BOOK
FROM SALES
MODEL -- предоставляет возможность создать временный набор данных, который можно использовать для анализа, прогнозирования или расчета значений на основе заданных правил и формул.
UNIQUE SINGLE REFERENCE
PARTITION BY (ID_READER)
DIMENSION BY (ID_BOOK, YEAR_ORDER, MONTH_ORDER) --измерения определяют, как данные будут группироваться и использоваться внутри модели.
MEASURES (COUNT_BOOK COUNT_BOOK) --мера
RULES (COUNT_BOOK[FOR ID_BOOK FROM 1 TO 3 INCREMENT 1, 1, 2023] =
COUNT_BOOK[currentv(), 1, 2022] * 1.1, 
COUNT_BOOK[FOR ID_BOOK FROM 4 TO 5 INCREMENT 1, 1, 2023] = COUNT_BOOK[currentv(), 1, 2022])
ORDER BY YEAR_ORDER DESC, MONTH_ORDER, ID_READER, ID_BOOK;


SELECT *
FROM SALES
MATCH_RECOGNIZE (--которая позволяет искать и анализировать последовательности событий в данных.
  PARTITION BY ID_BOOK
  ORDER BY YEAR_ORDER, MONTH_ORDER
  MEASURES 
    FIRST(YEAR_ORDER) AS start_year,
    LAST(YEAR_ORDER) AS end_year,
    FIRST(MONTH_ORDER) AS start_month,
    LAST(MONTH_ORDER) AS end_month
  ONE ROW PER MATCH --Указывает, что для каждого совпадения должна быть возвращена одна строка.
  AFTER MATCH SKIP TO NEXT ROW --Указывает, что после каждого найденного совпадения следует пропустить следующую строку в данных.
  PATTERN (UP DOWN UP)
  DEFINE
    UP AS COUNT_BOOK > PREV(COUNT_BOOK),
    DOWN AS COUNT_BOOK < PREV(COUNT_BOOK)
) MR;



