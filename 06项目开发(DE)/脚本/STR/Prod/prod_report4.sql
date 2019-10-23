/*==============================prod_report4 structure =============================*/
print 'dbo.prod_report4...'
if not exists (select * from sysobjects where id = object_id('dbo.prod_report4') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.prod_report4
(
  report_id int IDENTITY(1,1) not null ,
  mat_id int  null ,
  mat_name nvarchar(60) null ,
  date datetime2  null ,
  Sac_id nvarchar(30) null ,
  Boiler nvarchar(60) null ,
  malt_kg nvarchar(60) null ,
  caramelmalt_kg nvarchar(60) null ,
  smallmalt_kg nvarchar(60) null ,
  syrup_kg nvarchar(60) null ,
  sum_kg nvarchar(60) null ,
  coldwort_kl nvarchar(60) null ,
  wort_concent nvarchar(60) null ,
  convert11_kl nvarchar(60) null ,
  convert11_loss_kl nvarchar(60) null ,
  memo nvarchar(255) null ,
  user_id int  null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CompanyName varchar(50) null ,
  Company varchar(50) null ,
  DeptName varchar(50) null ,
  Dept varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  CONSTRAINT PK_prod_report4 PRIMARY KEY  CLUSTERED
  (
    report_id
  )
)
END

GO

