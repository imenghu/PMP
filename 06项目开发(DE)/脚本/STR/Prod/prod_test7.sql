/*==============================prod_test7 structure =============================*/
print 'dbo.prod_test7...'
if not exists (select * from sysobjects where id = object_id('dbo.prod_test7') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.prod_test7
(
  analyze_date datetime2  null ,
  mat_id int  null ,
  mat_name nvarchar(60) null ,
  production_line nvarchar(30) null ,
  position nvarchar(30) null ,
  steril_time nvarchar(60) null ,
  beer_temp nvarchar(60) null ,
  steril_temp_max nvarchar(60) null ,
  pu50 nvarchar(60) null ,
  pu60 nvarchar(60) null ,
  memo nvarchar(200) null ,
  operator_name nvarchar(30) null ,
  user_id int  null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  org_id int  null ,
  test_id int IDENTITY(1,1) not null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  DeptName varchar(50) null ,
  Dept varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  CONSTRAINT PK_prod_test7 PRIMARY KEY  CLUSTERED
  (
    test_id
  )
)
END

GO

