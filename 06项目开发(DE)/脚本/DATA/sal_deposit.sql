truncate table sal_deposit
set IDENTITY_INSERT sal_deposit  ON
go
insert INTO sal_deposit ([deposit_id]
      ,[deposit_date]
      ,[deposit_flag]
      ,[insert_date]
      ,[deposit_money]
      ,[payment_account]
      ,[customer_code]
      ,[deposit_initial_balance]
      ,[deposit_final_balance]
      ,[customer_name]
      ,[name]
      ,[summary]
      ,[remark]
      ,[depot_id]
      ,[depot_name]
      ,[finance_id]
      ,[finance_name]
      ,[createdate]
      ,[updatedate]
      ,[state]) select [deposit_id]
      ,[deposit_date]
      ,[deposit_flag]
      ,[insert_date]
      ,[deposit_money]
      ,[payment_account]
      ,[customer_code]
      ,[deposit_initial_balance]
      ,[deposit_final_balance]
      ,[customer_name]
      ,[name]
      ,[summary]
      ,[remark]
      ,[depot_id]
      ,[depot_name]
      ,[finance_id]
      ,[finance_name]
      ,[createdate]
      ,[updatedate]
      ,[state]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_deposit') 
set IDENTITY_INSERT sal_deposit  OFF
go