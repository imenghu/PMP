truncate table sal_account_detail
set IDENTITY_INSERT sal_account_detail  ON
go
insert INTO sal_account_detail ([no]
      ,[initial_Balance]
      ,[final_Balance]
      ,[this_Add_Loans]
      ,[this_Use_Loans]
      ,[date]
      ,[summary_Activities]
      ,[remarks]) select [no]
      ,[initial_Balance]
      ,[final_Balance]
      ,[this_Add_Loans]
      ,[this_Use_Loans]
      ,[date]
      ,[summary_Activities]
      ,[remarks]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_account_detail') 
set IDENTITY_INSERT sal_account_detail  OFF
go