/*==============================proc_tests structure =============================*/
print 'dbo.proc_tests...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_tests') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_tests
(
  tests_id int IDENTITY(1,1) not null ,
  fore_key_id int  null ,
  tests_class nvarchar(60) null ,
  org_id int  null ,
  vendor_id nvarchar(11) null ,
  vendor_code nvarchar(40) null ,
  vendor_name nvarchar(60) null ,
  mat_id nvarchar(11) null ,
  mat_code nvarchar(60) null ,
  mat_name nvarchar(60) null ,
  mat_spesc nvarchar(60) null ,
  tests_remarks nvarchar(200) null ,
  tests_result nvarchar(60) null ,
  submit_userid int  null ,
  tests_userid nvarchar(11) null ,
  state nchar(1) null DEFAULT((1)),
  create_time datetime2  null ,
  update_time datetime2  null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  CONSTRAINT PK_proc_tests_1 PRIMARY KEY  CLUSTERED
  (
    tests_id
  )
)
END

GO

