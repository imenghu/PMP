/*==============================prod_test3 structure =============================*/
print 'dbo.prod_test3...'
if not exists (select * from sysobjects where id = object_id('dbo.prod_test3') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.prod_test3
(
  prod_date datetime2  null ,
  mat_id int  null ,
  mat_name nvarchar(60) null ,
  sac_id nvarchar(30) null ,
  wort_concent nvarchar(60) null ,
  dextrin nvarchar(60) null ,
  a_nitrogen nvarchar(60) null ,
  total_acid nvarchar(60) null ,
  wort_filt nvarchar(60) null ,
  wort_transp nvarchar(60) null ,
  chroma_ebc nvarchar(60) null ,
  turbidity_ebc nvarchar(60) null ,
  ph nvarchar(60) null ,
  bitter_bu nvarchar(60) null ,
  memo nvarchar(200) null ,
  operator_name nvarchar(30) null ,
  user_id int  null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  test_id int IDENTITY(1,1) not null ,
  org_id int  null ,
  CompanyName varchar(50) null ,
  Company varchar(50) null ,
  DeptName varchar(50) null ,
  Dept varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  CONSTRAINT PK_prod_test3 PRIMARY KEY  CLUSTERED
  (
    test_id
  )
)
END

GO

