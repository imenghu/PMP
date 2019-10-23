/*==============================sal_deposit structure =============================*/
print 'dbo.sal_deposit...'
if not exists (select * from sysobjects where id = object_id('dbo.sal_deposit') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.sal_deposit
(
  deposit_id int IDENTITY(1,1) not null ,
  deposit_date datetime2  null ,
  deposit_flag int  null ,
  insert_date datetime2  null ,
  deposit_money float  null ,
  payment_account nvarchar(500) null ,
  customer_code nvarchar(500) null ,
  deposit_initial_balance float  null ,
  deposit_final_balance float  null ,
  customer_name nvarchar(500) null ,
  name nvarchar(100) null ,
  summary nvarchar(500) null ,
  remark nvarchar(500) null ,
  depot_id int  null ,
  depot_name nvarchar(500) null ,
  finance_id int  null ,
  finance_name nvarchar(500) null ,
  createdate datetime2  null ,
  updatedate datetime2  null ,
  state nvarchar(500) null ,
  CONSTRAINT PK_sal_deposit PRIMARY KEY  CLUSTERED
  (
    deposit_id
  )
)
END

GO

