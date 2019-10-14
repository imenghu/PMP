/*==============================prod_test10 structure =============================*/
print 'dbo.prod_test10...'
if not exists (select * from sysobjects where id = object_id('dbo.prod_test10') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.prod_test10
(
  analyze_date datetime2  null ,
  mat_id int  null ,
  mat_name nvarchar(60) null ,
  spec nvarchar(30) null ,
  appearance nvarchar(30) null ,
  solid nvarchar(60) null ,
  transmit nvarchar(60) null ,
  ph nvarchar(60) null ,
  result nvarchar(30) null ,
  memo nvarchar(200) null ,
  operator_name nvarchar(30) null ,
  user_id int  null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  org_id int  null ,
  test_id int IDENTITY(1,1) not null ,
  CompanyName varchar(50) null ,
  Company varchar(50) null ,
  DeptName varchar(50) null ,
  Dept varchar(50) null ,
  CONSTRAINT PK_prod_test10 PRIMARY KEY  CLUSTERED
  (
    test_id
  )
)
END

GO

