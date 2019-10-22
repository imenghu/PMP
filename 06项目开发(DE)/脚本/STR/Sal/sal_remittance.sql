/*==============================sal_remittance structure =============================*/
print 'dbo.sal_remittance...'
if not exists (select * from sysobjects where id = object_id('dbo.sal_remittance') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.sal_remittance
(
  remittance_id int IDENTITY(1,1) not null ,
  remittance_date date  null ,
  remittance_name nvarchar(500) null ,
  remittance_money float  null ,
  remittance_man nvarchar(500) null ,
  customer_code nvarchar(500) null ,
  customer_name nvarchar(500) null ,
  name nvarchar(100) null ,
  remittance_recer nvarchar(500) null ,
  remittance_no nvarchar(500) null ,
  remittance_type nvarchar(500) null ,
  remittance_effect nvarchar(500) null ,
  createdate datetime2  null ,
  updatedate datetime2  null ,
  state nvarchar(2) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  CONSTRAINT PK_sal_remittance PRIMARY KEY  CLUSTERED
  (
    remittance_id
  )
)
END

GO

