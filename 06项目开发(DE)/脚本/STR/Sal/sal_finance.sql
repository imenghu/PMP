/*==============================sal_finance structure =============================*/
print 'dbo.sal_finance...'
if not exists (select * from sysobjects where id = object_id('dbo.sal_finance') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.sal_finance
(
  finance_id int  not null ,
  finance_name nvarchar(500) null ,
  finance_company nvarchar(500) null ,
  finance_position nvarchar(500) null ,
  finance_tel nvarchar(500) null ,
  state nchar(2) null ,
  createdate datetime2  null ,
  updatedate datetime2  null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  CONSTRAINT PK_sal_finance PRIMARY KEY  CLUSTERED
  (
    finance_id
  )
)
END

GO

