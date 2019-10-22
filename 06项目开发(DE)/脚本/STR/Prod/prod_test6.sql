/*==============================prod_test6 structure =============================*/
print 'dbo.prod_test6...'
if not exists (select * from sysobjects where id = object_id('dbo.prod_test6') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.prod_test6
(
  analyze_date datetime2  null ,
  mat_id int  null ,
  mat_name nvarchar(60) null ,
  tank_id nvarchar(30) null ,
  ferment_days nvarchar(60) null ,
  diacetyl nvarchar(60) null ,
  memo nvarchar(60) null ,
  operator_name nvarchar(60) null ,
  user_id int  null ,
  org_id int  null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  test_id int IDENTITY(1,1) not null ,
  CompanyName varchar(50) null ,
  Company varchar(50) null ,
  DeptName varchar(50) null ,
  Dept varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  CONSTRAINT PK_prod_test6 PRIMARY KEY  CLUSTERED
  (
    test_id
  )
)
END

GO

