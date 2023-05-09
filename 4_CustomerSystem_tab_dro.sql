-- This is just an example during table drop.
-- Using cascade helps to drop table and its dependant components:
-- if the table is being referenced by a foreign key, we might not be able to delete it so we need to delete the foreign key first.
-- to avoid double work we cascade the table and the foreign key will automaticall be deleted.
DROP TABLE Person CASCADE;

DROP TABLE Feedback CASCADE;

DROP TABLE Product CASCADE;

DROP TABLE Sale CASCADE; 

DROP TABLE Warehouse CASCADE; 

DROP TABLE Picture CASCADE; 

DROP TABLE Title CASCADE; 

DROP TABLE PaymentType CASCADE; 

DROP TABLE StarRating CASCADE; 

DROP TABLE SPWorkingHrs CASCADE;