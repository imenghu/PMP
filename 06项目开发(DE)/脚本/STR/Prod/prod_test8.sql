/*==============================prod_test8 structure =============================*/
print 'dbo.prod_test8...'
if not exists (select * from sysobjects where id = object_id('dbo.prod_test8') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.prod_test8
(
  analyze_date datetime2  null ,
  mat_id int  null ,
  mat_name nvarchar(60) null ,
  impurity nvarchar(60) null ,
  moisture nvarchar(60) null ,
  leach_rate nvarchar(60) null ,
  sac_time nvarchar(60) null ,
  sac_WK nvarchar(60) null ,
  a_nitrogen nvarchar(60) null ,
  total_acid nvarchar(60) null ,
  sprout nvarchar(60) null ,
  powdery nvarchar(60) null ,
  chroma_ebc nvarchar(60) null ,
  chroma_ebc_boil nvarchar(60) null ,
  ph nvarchar(60) null ,
  memo nvarchar(200) null ,
  operator_name nvarchar(60) null ,
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
  CONSTRAINT PK_prod_test8 PRIMARY KEY  CLUSTERED
  (
    test_id
  )
)
END

GO

