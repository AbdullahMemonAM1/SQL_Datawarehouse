use master;
GO

IF EXISTS (select 1 from sys.databases where name='DataWarehouse') 
Begin
	ALTER DATABASE DataWarehouse  set Single_USER with rollback immediate
	DROP Database DataWarehouse;
END;
GO
create database DataWarehouse;

Use DataWarehouse;
GO
Create Schema bronze;
GO
Create Schema silver;
GO
Create Schema gold;
GO
