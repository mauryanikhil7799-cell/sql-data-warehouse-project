Drop database datawarehouse
/*
======================================================================
Create dtatabase and schemas
======================================================================
Script purpose:
	This script create a new database name 'Datawarehouse' after checking if it is already exists.
	if the database exists, it is droped and recretae. Additionlly, the scripts sets up th three schemas
	with the datasets 'bronze, silver, gold'.

WARNING
	Running this scripts will drops the entire 'Datawarehouse' database if it exsits.
	All data in the database will be parmaentaly deleted. Procced with caution
	and ensure you have proper backup before running this script.
	*/

--Create Database 'Datawarehouse'

USE master;
Go

--Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE NAME ='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE DataWarehouse;
END;
GO


---Create the 'DataWarehouse' database

CREATE DATABASE DataWarehouse;

USE DataWarehouse

GO

--Create Schemas

CREATE SCHEMA bronze;

GO
CREATE SCHEMA silver;

GO
CREATE SCHEMA gold;

GO
