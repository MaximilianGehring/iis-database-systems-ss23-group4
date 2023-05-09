-- Person (customer and salesperson)
INSERT INTO
    Person(
        Birth,
        LastName,
        FirstName,
        SSNo,
        PhoneNumber,
        City,
        Zip,
        Street,
        HouseNumber,
        EMail,
        Salary,
        Types
    )
VALUES
    (
        "20.01.2001",
        "Michaels",
        "Daniel",
        2356488,
        0176525542,
        "London",
        25634,
        "Queen Stret" "40",
        "Daniels.meat@yahoo.com",
        5000,
        "Customer"
    );

INSERT INTO
    Person(
        Birth,
        LastName,
        FirstName,
        SSNo,
        PhoneNumber,
        City,
        Zip,
        Street,
        HouseNumber,
        EMail,
        Salary,
        Types
    )
VALUES
    (
        "22.01.2001",
        "Daniels",
        "Mike",
        2356486,
        01765255426,
        "Oxford",
        15634,
        "King Street" 43,
        "mike.meat@yahoo.com",
        6000,
        "Salesperson",
    );

-- Warehouse 
INSERT INTO 
    Warhouse(
        WhName, 
        City
    ) VALUES (
        "Outskirts",
        "Oxford"
    ); 

INSERT INTO 
    Warhouse(
        WhName, 
        City
    ) VALUES (
        "River Banks",
        "London"
    ); 

-- Picture 
INSERT INTO 
    Picture(
        Picture,
        Feedback
    ) VALUES (
        "My base64 encrypted image 1!", 
        1
    ); 

INSERT INTO 
    Picture(
        Picture,
        Feedback
    ) VALUES (
        "My base64 encrypted image 2!", 
        2
    ); 

-- Title 
INSERT INTO 
    Title(
        Title
    ) VALUES (
        "Belt"
    ); 

INSERT INTO 
    Title(
        Title
    ) VALUES (
        "Trousers"
    ); 

-- PaymentType 
INSERT INTO 
    PaymentType(
        PaymentType
    ) VALUES (
        "bank_account"
    ); 

INSERT INTO 
    PaymentType(
        PaymentType
    ) VALUES (
        "credit_card"
    ); 

-- StarRating 
INSERT INTO 
    StarRating(
        StarRating
    ) VALUES (
        1
    ); 

INSERT INTO 
    StarRating(
        StarRating
    ) VALUES (
        2
    ); 

INSERT INTO 
    StarRating(
        StarRating
    ) VALUES (
        3
    ); 

INSERT INTO 
    StarRating(
        StarRating
    ) VALUES (
        4
    ); 

INSERT INTO 
    StarRating(
        StarRating
    ) VALUES (
        5
    ); 

-- Feedback
INSERT INTO
    Feedback(
        FID,
        Description,
        Subject,
        StarRating,
        FeedbackDate,
        CustomerBirth,
        CustomerLastName,
        CustomerFirstName,
        Product,
        PaymentDate,
        PurchaseDate
    )
VALUES
    (
        1,
        "This is not good product spoils fast",
        "Spoiler alert",
        1,
        "03.05.2023",
        "20.01.2001",
        "Michaels",
        "Daniel",
        1,
        "04.05.2023",
        "03.05.2023"
    );

INSERT INTO
    Feedback(
        FID,
        Description,
        Subject,
        StarRating,
        FeedbackDate,
        CustomerBirth,
        CustomerLastName,
        CustomerFirstName,
        Product,
        PaymentDate,
        PurchaseDate
    )
VALUES
    (
        2,
        "This is a  good product",
        "Delivery fast and fine.",
        5,
        "03.05.2023",
        "23.01.2001",
        "Daniels",
        "Mike",
        2,
        "06.05.2023",
        "05.05.2023"
    );

-- Product 
INSERT INTO
    Product(
        PID,
        WhName,
        City,
        Compartment,
        Levels,
        Bins,
        Title,
        Price
    )
VALUES
    (
        1,
        "River Banks",
        "London",
        5,
        4,
        3,
        "Belt",
        20
    );

INSERT INTO
    Product(
        PID,
        WhName,
        City,
        Compartment,
        Levels,
        Bins,
        Title,
        Price
    )
VALUES
    (
        2,
        "Outskirts",
        "Oxford",
        5,
        4,
        3,
        "Trousers",
        70
    ); 
-- Sale 
INSERT INTO 
    Sale(
        CustomerBirth,
        CustomerLastName,
        CustomerFirstName,
        Product,
        PaymentDate,
        PurchaseDate,
        SalesPersonBirth,
        SalesPersonLastName,
        SalesPersonFirstName,
        PaymentType
    ) VALUES (
        "20.01.2001",
        "Michaels",
        "Daniel", 
        1, 
        "04.05.2023",
        "03.05.2023", 
        "22.01.2001",
        "Daniels",
        "Mike"
        "banking_account"
    ); 
    
INSERT INTO 
    Sale(
        CustomerBirth,
        CustomerLastName,
        CustomerFirstName,
        Product,
        PaymentDate,
        PurchaseDate,
        SalesPersonBirth,
        SalesPersonLastName,
        SalesPersonFirstName,
        PaymentType
    ) VALUES (
        "20.01.2001",
        "Michaels",
        "Daniel",  
        2, 
        "04.05.2023",
        "06.05.2023", 
        "22.01.2001",
        "Daniels",
        "Mike", 
        "credit_card"
    );  

-- SPWorkingHrs
INSERT INTO 
    SPWorkingHrs(
        SalesPersonBirth, 
        SalesPersonLastName, 
        SalesPersonFirstName, 
        WorkingHrs
    ) VALUES (
        "22.01.2001",
        "Daniels",
        "Mike", 
        10
    ); 