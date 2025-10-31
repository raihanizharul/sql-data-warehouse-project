/*

====================================
Create Database and Schemas
====================================

Script Purpose:
	This script creates a new database named 'DWH_Enterprise' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three 
	schemas within the database: 'bronze', 'silver', and 'gold'.

WARNING:
	Running this script will drop the entire 'DWH_Enterprise' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution and 
	ensure you have proper backups before running this script.

*/

USE master;
GO

-- Drop and recreate the DWH_Enterprise
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DWH_Enterprise')
BEGIN
	ALTER DATABASE DWH_Enterprise SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DWH_Enterprise;
END;
GO

-- Create Database 'DWH_Enterprise'
CREATE DATABASE DWH_Enterprise;
GO

USE DWH_Enterprise;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;



