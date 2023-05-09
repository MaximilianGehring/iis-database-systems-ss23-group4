--this is an example on how to delete information in a table, 
-- a colser look just to show we understood how it works
-- 

-- Person 
DELETE FROM
    Person
WHERE
    LastName = "Michaels"
    AND FirstName = "Daniel"
    AND Birth = "20.01.2001";

-- Feedback
DELETE FROM
    Feedback
WHERE
    FID = 1;

-- Product
DELETE FROM
    Product
WHERE
    PID = 1;

-- Sale 
DELETE FROM
    Sale
WHERE
    CustomerBirth = "20.01.2001",
    AND CustomerLastName = "Michaels",
    AND CustomerFirstName = "Daniel",
    AND Product = 1,
    AND PaymentDate = "04.05.2023",
    AND PurchaseDate = "03.05.2023"; 

-- Warehouse 
DELETE FROM
    Warehouse
WHERE
    WhName = "River Banks" 
    AND City = "London";
