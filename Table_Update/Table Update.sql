---------- Update Table
--add
ALTER TABLE clothe
ADD made_in nvarchar(50);

ALTER TABLE Office_Manager
ADD Date_of_birth DATE;

--change
ALTER TABLE clothe
ALTER COLUMN brand varchar(40);

ALTER TABLE Branch_phone_number
ALTER COLUMN phone_number varchar(20);

--delete
ALTER TABLE clothe
DROP COLUMN size;

ALTER TABLE customer
DROP COLUMN username;
