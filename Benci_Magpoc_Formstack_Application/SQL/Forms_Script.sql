CREATE TABLE Form (
	FormID int,
    Name varchar(20),
    Description varchar(100),
    Date date
);

INSERT INTO Form (FormID, Name, Description, Date)
VALUES (001, 'Barry Allen', 'The Flash', '2019-02-11');

INSERT INTO Form (FormID, Name, Description, Date)
VALUES (002, 'Matthew Murdock', 'Daredevil', '2009-03-01');

INSERT INTO Form (FormID, Name, Description, Date)
VALUES (003, 'Oliver Queen', 'The Arrow', '2014-03-21');