USE CustomerSystem;

CREATE TABLE Person(
	Birth DATE NOT NULL,
	LastName VARCHAR(100) NOT NULL,
	FirstName VARCHAR(100) NOT NULL,
	SSNo INTEGER,
	PhoneNumber INTEGER NOT NULL,
	City VARCHAR(100) NOT NULL,
	Zip INTEGER NOT NULL,
	Street VARCHAR(100) NOT NULL,
	HouseNumber INTEGER NOT NULL,
	EMail VARCHAR(50) NOT NULL,
	Salary NUMBER(6, 2),
	Types VARCHAR(20) NOT NULL,
	CONSTRAINT Person_PK PRIMARY KEY (Birth, LastName, FirstName), -- No foreign key for person table. 
	CONSTRAINT CHK_Person ((Types = "Salesperson" AND SSNo IS NOT NULL AND Salary IS NOT NULL AND WorkingHrs IS NOT NULL) OR (Types = "Customer" AND SSNo IS NULL AND Salary IS NULL AND WorkingHrs IS NULL))
);

CREATE TABLE Feedback(
	FID INTEGER UNIQUE NOT NULL,
	Description VARCHAR(1000) NOT NULL,
	Subject VARCHAR(150) NOT NULL,
	StarRating INTEGER NOT NULL,
	FeedbackDate DATE NOT NULL,
	CustomerBirth DATE NOT NULL,
	CustomerLastName VARCHAR(100) NOT NULL,
	CustomerFirstName VARCHAR(100) NOT NULL,
	Product INTEGER NOT NULL,
	PaymentDate DATE NOT NULL,
	PurchaseDate DATE NOT NULL,
	CONSTRAINT Feedback_PK PRIMARY KEY (FID),
	CONSTRAINT Feedback_fk1 FOREIGN KEY(*) REFERENCES Person(Birth) ON DELETE CASCADE,
	-- (i have forgotten what this star is for during the relation :) but we will discuss with Melissa on tuesday.
	CONSTRAINT Feedback_fk2 FOREIGN KEY(*) REFERENCES Person(LastName) ON DELETE CASCADE,
	CONSTRAINT Feedback_fk3 FOREIGN KEY(*) REFERENCES Person(FirstName) ON DELETE CASCADE,
	CONSTRAINT Feedback_fk4 FOREIGN KEY(*) REFERENCES Product(PID) ON DELETE CASCADE,
	CONSTRAINT Feedback_fk5 FOREIGN KEY(*) REFERENCES Sale(PaymentType) ON DELETE CASCADE,
	CONSTRAINT Feedback_fk6 FOREIGN KEY(*) REFERENCES Sale(PurchaseDate) ON DELETE CASCADE,
	CONSTRAINT Feedback_fk7 FOREIGN KEY(StarRating) REFERENCES StarRating(StarRating) ON DELETE CASCADE
);

CREATE TABLE Product(
	PID INTEGER UNIQUE NOT NULL,
	WhName VARCHAR(100) NOT NULL,
	City VARCHAR(100) NOT NULL,
	Compartment INTEGER NOT NULL,
	Levels INTEGER NOT NULL,
	-- Level is a keyword and cannot be taken.
	Bins INTEGER NOT NULL,
	-- Bin is a keyword and cannot be taken. 
	Title VARCHAR() NOT NULL,
	Price FLOAT NOT NULL,
	CONSTRAINT Product_PK PRIMARY KEY (PID),
	CONSTRAINT Rroduct_fk1 FOREIGN KEY(WhName) REFERENCES Warehouse(WhName) ON DELETE CASCADE,
	CONSTRAINT Rroduct_fk2 FOREIGN KEY(City) REFERENCES Warehouse(City) ON DELETE CASCADE,
	CONSTRAINT Rroduct_fk3 FOREIGN KEY(Title) REFERENCES Title(Title) ON DELETE CASCADE
);

CREATE TABLE Sale(
	CustomerBirth DATE NOT NULL,
	CustomerLastName VARCHAR(100) NOT NULL,
	CustomerFirstName VARCHAR(100) NOT NULL,
	Product INTEGER NOT NULL,
	PaymentDate DATE NOT NULL,
	PurchaseDate DATE NOT NULL,
	SalesPersonBirth DATE NOT NULL,
	SalesPersonLastName VARCHAR(100) NOT NULL,
	SalesPersonFirstName VARCHAR(100) NOT NULL,
	PaymentType VARCHAR(30) NOT NULL,
	CONSTRAINT Sale_PK PRIMARY KEY (
		CustomerBirth,
		CustomerLastName,
		CustomerFirstName,
		Product,
		PaymentDate,
		PurchaseDate
	),
	CONSTRAINT sale_fk1 FOREIGN KEY(CustomerBirth) REFERENCES Person(Birth) ON DELETE CASCADE,
	CONSTRAINT sale_fk2 FOREIGN KEY(CustomerLastName) REFERENCES Person(LastName) ON DELETE CASCADE,
	CONSTRAINT sale_fk3 FOREIGN KEY(CustomerFirstName) REFERENCES Person(FirstName) ON DELETE CASCADE,
	CONSTRAINT sale_fk4 FOREIGN KEY(SalesPersonBirth) REFERENCES Person(Birth) ON DELETE CASCADE,
	CONSTRAINT sale_fk5 FOREIGN KEY(SalesPersonLastName) REFERENCES Person(LastName) ON DELETE CASCADE,
	CONSTRAINT sale_fk6 FOREIGN KEY(SalesPersonFirstName) REFERENCES Person(FirstName) ON DELETE CASCADE,
	CONSTRAINT sale_fk7 FOREIGN KEY(PaymentType) REFERENCES PaymentType(PaymentType) ON DELETE CASCADE,
	CONSTRAINT sale_fk8 FOREIGN KEY(Product) REFERENCES Product(PID) ON DELETE CASCADE
);

CREATE TABLE Warehouse(
	WhName VARCHAR(100) NOT NULL,
	City VARCHAR(100) NOT NULL,
	CONSTRAINT Warehouse_PK PRIMARY KEY (WhName, City)
);

CREATE TABLE Picture(
	-- Image is a keyword and cannot be taken. 
	Picture TEXT NOT NULL,
	Feedback INTEGER NOT NULL,
	CONSTRAINT Picture_PK PRIMARY KEY (Picture),
	CONSTRAINT Picture_fk1 FOREIGN KEY(Feedback) REFERENCES Feedback(FID) ON DELETE CASCADE
);

CREATE TABLE Title(
	Title VARCHAR(150) NOT NULL,
	CONSTRAINT Title_PK PRIMARY KEY (Title),
);

CREATE TABLE PaymentType(
	PaymentType VARCHAR(30) NOT NULL,
	CONSTRAINT PaymentType_PK PRIMARY KEY (PaymentType)
);

CREATE TABLE StarRating(
	StarRating INTEGER NOT NULL,
	CONSTRAINT StarRating_PK PRIMARY KEY (StarRating)
);

CREATE TABLE SPWorkingHrs(
	SalesPersonBirth DATE NOT NULL,
	SalesPersonLastName VARCHAR(100) NOT NULL,
	SalesPersonFirstName VARCHAR(100) NOT NULL,
	WorkingHrs NUMBER NOT NULL,
	CONSTRAINT SPWorkingHrs_PK PRIMARY KEY (
		SalesPersonBirth,
		SalesPersonLastName,
		SalesPersonFirstName,
		WorkingHrs
	),
	CONSTRAINT SPWorkingHrs_fk1 FOREIGN KEY(SalesPersonBirth) REFERENCES Person(Birth) ON DELETE CASCADE,
	CONSTRAINT SPWorkingHrs_fk2 FOREIGN KEY(SalesPersonLastName) REFERENCES Person(LastName) ON DELETE CASCADE,
	CONSTRAINT SPWorkingHrs_fk3 FOREIGN KEY(SalesPersonFirstName) REFERENCES Person(FirstName) ON DELETE CASCADE
);