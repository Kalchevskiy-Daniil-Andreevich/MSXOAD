CREATE OR ALTER PROCEDURE RamdomAuthor
AS
BEGIN
    DECLARE @FirstName NVARCHAR(50), 
			@LastName NVARCHAR(50), 
			@MiddleName NVARCHAR(50),
			@CountAuthors INT = 1;

WHILE(@CountAuthors <= 500)
	BEGIN
	SELECT TOP 1 @FirstName = FirstName
	FROM (
		SELECT '�������' AS FirstName UNION ALL
		SELECT '������' AS FirstName UNION ALL
		SELECT '������' AS FirstName UNION ALL
		SELECT '���������' AS FirstName UNION ALL
		SELECT '����' AS FirstName UNION ALL
		SELECT '����' AS FirstName UNION ALL
		SELECT '����' AS FirstName UNION ALL
		SELECT '���������' AS FirstName UNION ALL
		SELECT '��������' AS FirstName
	) AS MaleFirstNames
	ORDER BY NEWID();
	SELECT TOP 1 @LastName = SecondName
	FROM (
		SELECT '�����' AS SecondName UNION ALL
		SELECT '����' AS SecondName UNION ALL
		SELECT '���������' AS SecondName UNION ALL
		SELECT '������' AS SecondName UNION ALL
		SELECT '��������' AS SecondName UNION ALL
		SELECT '����������' AS SecondName UNION ALL
		SELECT '���������' AS SecondName UNION ALL
		SELECT '��������' AS SecondName UNION ALL
		SELECT '���������' AS SecondName UNION ALL
		SELECT '��������' AS SecondName UNION ALL
		SELECT '�����' AS SecondName UNION ALL
		SELECT '�����' AS SecondName UNION ALL
		SELECT '���������' AS SecondName UNION ALL
		SELECT '�������' AS SecondName UNION ALL
		SELECT '��������' AS SecondName UNION ALL
		SELECT '���������' AS SecondName UNION ALL
		SELECT '�����' AS SecondName UNION ALL
		SELECT '����' AS SecondName
	) AS MaleLastNames
	ORDER BY NEWID();
	SELECT TOP 1 @MiddleName = MiddleName
	FROM (
		SELECT '��������' AS MiddleName UNION ALL
		SELECT '�������������' AS MiddleName UNION ALL
		SELECT '��������' AS MiddleName UNION ALL
		SELECT '�����������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '��������' AS MiddleName UNION ALL
		SELECT '�������������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '�����������' AS MiddleName UNION ALL
		SELECT '���������' AS MiddleName UNION ALL
		SELECT '��������' AS MiddleName UNION ALL
		SELECT '������������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '���������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName
	) AS MaleMiddleNames
	ORDER BY NEWID();
	INSERT INTO AUTHORS(ID_AUTHOR, LASTNAME_AUTHOR, NAME_AUTHOR, MIDDLENAME_AUTHOR)
	VALUES(@CountAuthors, @LastName, @FirstName,  @MiddleName);
	SET @CountAuthors = @CountAuthors + 1;
END;
END;

EXEC RamdomAuthor;

SELECT * FROM AUTHORS;
DELETE AUTHORS;

DROP PROCEDURE RamdomAuthor;


go
CREATE OR ALTER PROCEDURE RamdomBooks
AS
BEGIN
    DECLARE @idBook INT = 1,
			@FirstName NVARCHAR(50), 
			@LastName NVARCHAR(50), 
			@id_Author INT,
			@idGenre INT,
			@nameBook NVARCHAR(50),
			@yearOfPubl Date;

WHILE(@idBook <= 500)
	BEGIN
	SELECT TOP 1 @FirstName = FirstName
	FROM (
		SELECT '������� ������' AS FirstName UNION ALL
		SELECT '�������� ������' AS FirstName UNION ALL
		SELECT '��������� ������' AS FirstName UNION ALL
		SELECT '������ ����' AS FirstName UNION ALL
		SELECT '������� ����������' AS FirstName UNION ALL
		SELECT '�������� �������' AS FirstName UNION ALL
		SELECT '������� ������' AS FirstName UNION ALL
		SELECT '������� �����' AS FirstName UNION ALL
		SELECT '����� �������' AS FirstName
	) AS MaleFirstNames
	ORDER BY NEWID();
	SET @id_Author = ROUND(RAND() * 499 + 1, 0);
	SET @idGenre = ROUND(RAND() * 4 + 1, 0); 
	SET @yearOfPubl = DATEADD(day, ABS(CHECKSUM(NEWID())) % DATEDIFF(day, '2020-01-01', '2023-11-07'), '2020-01-01');
	INSERT INTO BOOKS(ID_BOOK, ID_AUTHOR, ID_GENRE, NAME_BOOK, YEAR_OF_PUBLISHING)
	VALUES(@idBook, @id_Author, @idGenre, @FirstName,  @yearOfPubl);
	SET @idBook = @idBook + 1;
END;
END;

EXEC RamdomBooks;

DROP PROCEDURE RamdomBooks;

SELECT * FROM BOOKS;
DELETE BOOKS;

INSERT INTO GENRES(ID_GENRE, NAME_GENRE)
VALUES (1, '������'),
(2, '�����������'),
(3, '���������'),
(4, '����'),
(5, '�������');

SELECT * FROM GENRES;
DELETE GENRES;

GO
CREATE OR ALTER PROCEDURE RamdomReader
AS
BEGIN
    DECLARE @FirstName NVARCHAR(50), 
			@LastName NVARCHAR(50), 
			@MiddleName NVARCHAR(50),
			@CountReaders INT = 1;

WHILE(@CountReaders <= 500)
	BEGIN
	SELECT TOP 1 @FirstName = FirstName
	FROM (
		SELECT '�������' AS FirstName UNION ALL
		SELECT '������' AS FirstName UNION ALL
		SELECT '������' AS FirstName UNION ALL
		SELECT '���������' AS FirstName UNION ALL
		SELECT '����' AS FirstName UNION ALL
		SELECT '����' AS FirstName UNION ALL
		SELECT '����' AS FirstName UNION ALL
		SELECT '���������' AS FirstName UNION ALL
		SELECT '��������' AS FirstName
	) AS MaleFirstNames
	ORDER BY NEWID();
	SELECT TOP 1 @LastName = SecondName
	FROM (
		SELECT '�����' AS SecondName UNION ALL
		SELECT '����' AS SecondName UNION ALL
		SELECT '���������' AS SecondName UNION ALL
		SELECT '������' AS SecondName UNION ALL
		SELECT '��������' AS SecondName UNION ALL
		SELECT '����������' AS SecondName UNION ALL
		SELECT '���������' AS SecondName UNION ALL
		SELECT '��������' AS SecondName UNION ALL
		SELECT '���������' AS SecondName UNION ALL
		SELECT '��������' AS SecondName UNION ALL
		SELECT '�����' AS SecondName UNION ALL
		SELECT '�����' AS SecondName UNION ALL
		SELECT '���������' AS SecondName UNION ALL
		SELECT '�������' AS SecondName UNION ALL
		SELECT '��������' AS SecondName UNION ALL
		SELECT '���������' AS SecondName UNION ALL
		SELECT '�����' AS SecondName UNION ALL
		SELECT '����' AS SecondName
	) AS MaleLastNames
	ORDER BY NEWID();
	SELECT TOP 1 @MiddleName = MiddleName
	FROM (
		SELECT '��������' AS MiddleName UNION ALL
		SELECT '�������������' AS MiddleName UNION ALL
		SELECT '��������' AS MiddleName UNION ALL
		SELECT '�����������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '��������' AS MiddleName UNION ALL
		SELECT '�������������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '�����������' AS MiddleName UNION ALL
		SELECT '���������' AS MiddleName UNION ALL
		SELECT '��������' AS MiddleName UNION ALL
		SELECT '������������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName UNION ALL
		SELECT '���������' AS MiddleName UNION ALL
		SELECT '����������' AS MiddleName
	) AS MaleMiddleNames
	ORDER BY NEWID();
	INSERT INTO READERS(ID_READER, LASTNAME_READER, NAME_READER, MIDDLENAME_READER)
	VALUES(@CountReaders, @LastName, @FirstName,  @MiddleName);
	SET @CountReaders = @CountReaders + 1;
END;
END;

EXEC RamdomReader;

SELECT * FROM READERS;
DELETE BOOKS;

DROP PROCEDURE RamdomReader;


go
CREATE OR ALTER PROCEDURE RamdomOrders
AS
BEGIN
    DECLARE @idOrder INT = 1,
			@idBook INT,
			@idReader INT,
			@priceOrder INT,
			@dateOrder Date;

WHILE(@idOrder <= 500)
	BEGIN
	SET @idBook = ROUND(RAND() * 499 + 1, 0);
	SET @idReader = ROUND(RAND() * 499 + 1, 0); 
	SET @priceOrder = ROUND(RAND() * 499 + 1, 0); 
	SET @dateOrder = DATEADD(day, ABS(CHECKSUM(NEWID())) % DATEDIFF(day, '2020-01-01', '2023-11-07'), '2020-01-01');
	INSERT INTO ORDERS(ID_ORDER, ID_BOOK, ID_READER, DATE_ORDER, PRICE_ORDER)
	VALUES(@idOrder, @idBook, @idReader, @dateOrder,  @priceOrder);
	SET @idOrder = @idOrder + 1;
END;

END;

EXEC RamdomOrders;

SELECT * FROM ORDERS;
DELETE ORDERS;

DROP PROCEDURE RamdomOrders;
