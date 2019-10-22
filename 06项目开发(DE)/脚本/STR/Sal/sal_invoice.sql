/*==============================sal_invoice structure =============================*/
print 'dbo.sal_invoice...'
if not exists (select * from sysobjects where id = object_id('dbo.sal_invoice') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.sal_invoice
(
  invoice_id int IDENTITY(1,1) not null ,
  invoice_date datetime2  null ,
  insert_date datetime2  null ,
  invoice_code nvarchar(500) not null ,
  invoice_type nvarchar(50) null ,
  invoice_money float  null ,
  customer_code nvarchar(500) null ,
  customer_name nvarchar(500) null ,
  name nvarchar(100) null ,
  finance_id nvarchar(500) null ,
  finance_name nvarchar(500) null ,
  summary nvarchar(500) null ,
  remark nvarchar(500) null ,
  create_date datetime2  null ,
  update_date datetime2  null ,
  state nvarchar(2) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  CONSTRAINT PK_sal_invoice PRIMARY KEY  CLUSTERED
  (
    invoice_id
  )
)
END

GO

