CREATE DATABASE db_marquitalibrary;

USE db_marquitalibrary;

CREATE TABLE LIBRARY_BRANCH (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL
);

INSERT INTO LIBRARY_BRANCH
	(BranchName, Address)
	VALUES 
	('Sharpstown', '123 Front St'),
	('Central','456 Green Rd'),
	('Green River','789 Purple Way'),
	('Rock Springs','382 Center St')
;

SELECT * FROM LIBRARY_BRANCH;


CREATE TABLE PUBLISHER (
	PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

INSERT INTO PUBLISHER 
	(PublisherName, Address, Phone)
	VALUES
	('Galaxy Press', 'Los Angeles, CA','800-763-4738'),
	('Avery Publishhing','New York City, NY','394-383-8573'),
	('Bison Books','Lincoln, NE','192-194-4837'),
	('Random House','New York City, NY','938-485-8274')
;

INSERT INTO PUBLISHER
	(PublisherName, Address, Phone)
	VALUES 
	('Scholastic','Wilkensberg, PA','389-383-4829'),
	('New English Library','England','392-384-8485'),
	('Doubleday','New York City, NY','294-384-3847'),
	('The Viking Press','New York City, NY','193-384-2847'),
	('Norstedts Forlag','Sweden','294-328-4847'),
	('Sphere Books','United Kingdom','193-384-2848'),
	('Algonquin Books of Chapel Hill','New York City, NY','293-485-3847'),
	('William Heinemann','United Kingdom','939-183-3848'),
	('Longman Green and Co','England','193-485-3837'),
	('Alfred A. Knopf','New York City, NY','484-283-4854'),
	('Bradbury Press','New York City, NY','239-383-4847'),
	('McClelland & Stewart','Toronto, Ontario','193-484-3874')
;

SELECT * FROM PUBLISHER;

CREATE TABLE BOOKS (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL
);

INSERT INTO BOOKS
	(Title, PublisherName)
	VALUES
	('The Lost Tribe','Bison Books'),
	('Sabrina & Corina','Random House'),
	('Harry Potter & the Sorcerer''s Stone','Scholastic'),
	('Harry Potter & the Chamber of Secrets','Scholastic'),
	('Harry Potter & the Prisoner of Azkaban','Scholastic'),
	('Harry Potter & the Goblet of Fire','Scholastic'),
	('Harry Potter & the Order of the Phoenix','Scholastic'),
	('Harry Potter & the Half Blood Prince','Scholastic'),
	('Harry Potter & the Deathly Hallows','Scholastic'),
	('Salems Lot', 'New English Library'),
	('Pet Sematary','Doubleday'),
	('The Grapes of Wrath','The Viking Press'),
	('The Girl with the Dragon Tattoo','Norstedts Forlag'),
	('The Cuckoo''s Calling','Sphere Books'),
	('Water for Elephants','Algonquin Books of Chapel Hill'),
	('A Clockwork Orange','William Heinemann'),
	('At Swim-Two-Birds','Longman Green and Co'),
	('The Big Sleep','Alfred A. Knopf'),
	('Are you there God? It''s me, Margaret.','Bradbury Press'),
	('The Blind Assassin','McClelland & Stewart')
;

SELECT * FROM BOOKS


CREATE TABLE BORROWER (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

INSERT INTO BORROWER 
	(Name,Address,Phone)
	VALUES
	('Connie Barclay','495 Green St','303-474-3746'),
	('Lala Aziz','494 Purple Ave','303-485-3827'),
	('Theresa Petrino','202 Nice Rd','303-192-5848'),
	('Andrew Johann','120 Good St','123-485-3475'),
	('Lisa Dixon','847 Magenta Rd','947-347-3847'),
	('Kensey Lucero','494 Short St','938-384-3874'),
	('Chezney Graunke','392 Me Way','098-765-4331'),
	('Tyrel Hartman','098 Taylor Way','948-274-8479')
;

SELECT * FROM BORROWER;


CREATE TABLE BOOK_AUTHORS (
	BookID INT NOT NULL CONSTRAINT fk_book_id FOREIGN KEY REFERENCES BOOKS(BOOKID) ON UPDATE CASCADE ON DELETE CASCADE,
	AuthorName VARCHAR(50) NOT NULL
);


INSERT INTO BOOK_AUTHORS
	(BookID, AuthorName)
	VALUES
	(1,'Mark Lee'),
	(2,'Kali Fajardo-Anstine'),
	(3,'J.K. Rowling'),
	(10,'Stephen King'),
	(12,'John Steinbeck'),
	(13,'Stieg Larsson'),
	(14,'Robert Galbraith'),
	(15,'Sara Gruen'),
	(16,'Anthony Burgess'),
	(17,'Brian O''Nolan'),
	(18,'Raymond Chandler'),
	(19,'Judy Bloom'),
	(20,'Margaret Atwood')
;

SELECT * FROM BOOK_AUTHORS;

--DROP TABLE BOOK_AUTHORS


CREATE TABLE BOOK_COPIES (
	BookID INT NOT NULL CONSTRAINT fk_book_id2 FOREIGN KEY REFERENCES BOOKS(BOOKID) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchID INT NOT NULL,
	Number_Of_Copies INT NOT NULL
);

--DROP TABLE BOOK_COPIES

INSERT INTO BOOK_COPIES
	(BookID, BranchID, Number_Of_Copies)
	VALUES
	(1,1,2),
	(2,1,2),
	(3,1,2),
	(4,1,2),
	(5,1,2),
	(6,1,2),
	(7,1,2),
	(8,1,2),
	(9,1,2),
	(10,1,2),
	(11,1,2),
	(12,1,2),
	(13,1,2),
	(14,1,2),
	(15,1,2),
	(16,1,2),
	(17,1,2),
	(18,1,2),
	(19,1,2),
	(20,1,2),
	(1,2,2),
	(2,2,2),
	(3,2,2),
	(4,2,2),
	(5,2,2),
	(6,2,2),
	(7,2,2),
	(8,2,2),
	(9,2,2),
	(10,2,2),
	(11,2,2),
	(12,2,2),
	(13,2,2),
	(14,2,2),
	(15,2,2),
	(16,2,2),
	(17,2,2),
	(18,2,2),
	(19,2,2),
	(20,2,2),
	(1,3,2),
	(2,3,2),
	(3,3,2),
	(4,3,2),
	(5,3,2),
	(6,3,2),
	(7,3,2),
	(8,3,2),
	(9,3,2),
	(10,3,2),
	(1,4,2),
	(2,4,2),
	(3,4,2),
	(4,4,2),
	(5,4,2),
	(6,4,2),
	(7,4,2),
	(8,4,2),
	(9,4,2),
	(10,4,2)
;

SELECT * FROM BOOK_COPIES;

CREATE TABLE BOOK_LOANS (
	BookID INT NOT NULL CONSTRAINT fk_book_id3 FOREIGN KEY REFERENCES BOOKS(BOOKID) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchID INT NOT NULL IDENTITY (1,1),
	CardNo INT NOT NULL CONSTRAINT fk_card_id FOREIGN KEY REFERENCES BORROWER(CARDNO) ON UPDATE CASCADE ON DELETE CASCADE,
	DateOut DATE NOT NULL,
	DateDue DATE NOT NULL
);

SET IDENTITY_INSERT BOOK_LOANS ON;  
GO  
 

--DROP TABLE BOOK_LOANS;

INSERT INTO BOOK_LOANS
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(1,1,1,'2019-06-01','2019-06-30')
;
INSERT INTO BOOK_LOANS
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(2,1,1,'2018-05-03','2018-06-20')
;
INSERT INTO BOOK_LOANS
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(3,1,1,'2019-01-01','2019-01-30'),
	(4,2,1,'2019-01-02','2019-02-20'),
	(5,2,1,'2019-01-03','2019-02-21'),
	(6,2,1,'2019-01-03','2019-02-21'),
	(7,3,2,'2019-03-01','2019-03-30'),
	(8,3,2,'2019-03-01','2019-03-30'),
	(9,3,2,'2019-03-01','2019-03-30')
;
INSERT INTO BOOK_LOANS
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(10,4,2,'2019-03-01','2019-03-30'),
	(11,4,2,'2019-03-01','2019-03-30'),
	(12,4,2,'2019-03-01','2019-03-30'),
	(13,4,3,'2019-03-15','2019-04-14'),
	(14,1,3,'2019-03-15','2019-04-14'),
	(15,1,3,'2019-03-15','2019-04-14'),
	(16,1,3,'2019-03-15','2019-04-14'),
	(17,1,3,'2019-03-15','2019-04-14'),
	(18,2,3,'2019-03-15','2019-04-14'),
	(19,2,3,'2019-03-15','2019-04-14'),
	(20,2,3,'2019-03-15','2019-04-14'),
	(19,2,4,'2019-04-01','2019-04-30'),
	(18,2,4,'2019-04-01','2019-04-30'),
	(17,2,4,'2019-04-01','2019-04-30')
;
INSERT INTO BOOK_LOANS
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(16,1,4,'2019-04-01','2019-04-30'),
	(15,2,4,'2019-04-01','2019-04-30'),
	(14,3,4,'2019-04-01','2019-04-30'),
	(13,4,4,'2019-04-01','2019-04-30'),
	(12,1,4,'2019-04-01','2019-04-30'),
	(11,2,4,'2019-04-01','2019-04-30'),
	(10,3,4,'2019-04-01','2019-04-30'),
	(9,4,4,'2019-04-01','2019-04-30'),
	(8,1,4,'2019-04-01','2019-04-30'),
	(7,2,4,'2019-04-01','2019-04-30'),
	(6,3,4,'2019-04-01','2019-04-30'),
	(5,4,4,'2019-04-01','2019-04-30'),
	(4,4,4,'2019-04-01','2019-04-30'),
	(3,4,4,'2019-04-01','2019-04-30'),
	(2,4,4,'2019-04-01','2019-04-30'),
	(1,3,4,'2019-04-01','2019-04-30'),
	(2,3,5,'2019-02-01','2019-02-28'),
	(3,3,5,'2019-02-01','2019-02-28'),
	(4,3,5,'2019-02-01','2019-02-28'),
	(5,2,5,'2019-02-01','2019-02-28'),
	(6,2,6,'2019-02-01','2019-02-28'),
	(7,2,6,'2019-02-01','2019-02-28'),
	(8,2,6,'2019-02-01','2019-02-28'),
	(9,1,6,'2019-02-01','2019-02-28'),
	(10,1,6,'2019-02-01','2019-02-28'),
	(11,1,6,'2019-02-01','2019-02-28'),
	(12,1,6,'2019-02-01','2019-02-28'),
	(13,1,6,'2019-02-01','2019-02-28')
;

INSERT INTO BOOK_LOANS
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(14,1,6,'2019-06-01','2019-06-27')
;

SELECT * FROM BOOK_LOANS;

/*1) How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?*/

CREATE PROC theLostTribe_Sharpstown
AS 

SELECT 
	Number_Of_Copies, BranchName
FROM BOOK_COPIES
JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchID = LIBRARY_BRANCH.BranchID
JOIN BOOKS ON BOOK_COPIES.BookID = LIBRARY_BRANCH.BranchID
WHERE Title = 'The Lost Tribe' AND BranchName = 'Sharpstown'
GO

EXEC theLostTribe_Sharpstown


/*2) How many copies of the book titled "The Lost Tribe" are owned by each library branch?*/

CREATE PROC copiesTheLostTribe
AS

SELECT * FROM BOOK_COPIES WHERE BookID = 1;

EXEC copiesTheLostTribe


/*3) Retrieve the names of all borrowers who do not have any books checked out*/

CREATE PROC proc3
AS

SELECT 
	B.Name, BL.CardNo
FROM BORROWER B
LEFT JOIN BOOK_LOANS BL ON B.CardNo = BL.CardNo 
WHERE BL.CardNo IS NULL
GO

EXEC proc3

--DROP PROC proc3


/*4) For each book that is loaned out from the "Sharpstown" branch and whose DueDate is 
today, retrieve the book title, the borrower's name, and the borrower's address.*/

CREATE PROC proc4
AS

SELECT 
	BK.Title, B.Name, B.Address, L.BranchId
FROM LIBRARY_BRANCH L
JOIN BOOK_LOANS ON L.BranchID = BOOK_LOANS.BranchID
JOIN BOOKS BK ON BOOK_LOANS.BookID = BK.BookID
JOIN BORROWER B ON BOOK_LOANS.CardNo = B.CardNo
WHERE L.BranchID = 1 AND DateDue = '2019-06-27'
GO

EXEC proc4


/*5) For each library branch, retrieve the branch name and the total number of books loaned out from that branch.*/

CREATE PROC proc5
AS

SELECT 
	LB.BranchName, COUNT(*)
FROM BOOK_LOANS BL
JOIN LIBRARY_BRANCH LB ON BL.BranchID = LB.BranchID
GROUP BY LB.BranchName

EXEC proc5


/*6) Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out*/

CREATE PROC proc6
AS

SELECT
	B.Name, B.Address, COUNT(BookID) AS "More than 5"
FROM BORROWER B
JOIN BOOK_LOANS BL ON B.CardNo = BL.CardNo
GROUP BY B.Name, B.Address
GO

EXEC proc6


/*7) For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central"*/

CREATE PROC proc7
AS

SELECT
	B.title, BC.Number_Of_Copies, BA.AuthorName, LB.BranchName
FROM BOOKS B
JOIN BOOK_COPIES BC ON B.BookID = BC.BookID
JOIN BOOK_AUTHORS BA ON BC.BookID = BA.BookID
JOIN LIBRARY_BRANCH LB ON BC.BranchID = LB.BranchID
WHERE AuthorName = 'Stephen King' AND BranchName = 'Central'
GO

EXEC proc7


