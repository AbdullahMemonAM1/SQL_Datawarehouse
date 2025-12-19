EXEC bronze.load_bronze;
CREATE OR ALTER PROCEDURE bronze.load_bronze AS

BEGIN
	BEGIN TRY
		DECLARE @start_time DATETIME ,@end_time DATETIME;
		PRINT '==========================================='
		PRINT 'LOAD BRONZE LAYER'
		PRINT '==========================================='
		set @start_time=getdate();
		truncate table bronze.crm_cust_info;

		BULK INSERT bronze.crm_cust_info
		from 'D:\SQL Data Warehouse Proj\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
		WITH (
		 FIRSTROW=2,
		 FIELDTERMINATOR=',',
		 FORMAT = 'CSV',
		 TABLOCK
		)

		truncate table bronze.crm_prd_info;

		BULK INSERT bronze.crm_prd_info
		from 'D:\SQL Data Warehouse Proj\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
		WITH (
		 FIRSTROW=2,
		 FIELDTERMINATOR=',',
		 FORMAT = 'CSV',
		 TABLOCK
		)

		truncate table bronze.crm_sales_details;

		BULK INSERT bronze.crm_sales_details
		from 'D:\SQL Data Warehouse Proj\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
		WITH (
		 FIRSTROW=2,
		 FORMAT = 'CSV',
		 TABLOCK
		)


		truncate table bronze.erp_cust_az12;

		BULK INSERT bronze.erp_cust_az12
		from 'D:\SQL Data Warehouse Proj\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
		WITH (
		 FIRSTROW=2,
		 FORMAT = 'CSV',
		 TABLOCK
		)

		truncate table bronze.erp_loc_a101

		BULK INSERT bronze.erp_loc_a101
		from 'D:\SQL Data Warehouse Proj\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
		WITH (
		 FIRSTROW=2,
		 FORMAT = 'CSV',
		 TABLOCK
		)

		truncate table bronze.erp_px_cat_g1v2;

		BULK INSERT bronze.erp_px_cat_g1v2
		from 'D:\SQL Data Warehouse Proj\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
		WITH (
		 FIRSTROW=2,
		 FORMAT = 'CSV',
		 TABLOCK
		)
		set @end_time=getdate();
		PRINT '>>LOAD DURATION ' + CAST (DATEDIFF(second,@start_time,@end_time) AS varchar(50)) + 'seconds'
	END TRY
	BEGIN CATCH
	PRINT '============================'
	PRINT 'ERROR OCCURED DURING LOADING';
	PRINT 'ERROR: ' + ERROR_MESSAGE();
	PRINT 'ERROR: ' + CAST (ERROR_NUMBER() AS VARCHAR(50));
	PRINT '============================'
	END CATCH
END
