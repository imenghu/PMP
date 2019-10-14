/*==============================prod_report2 structure =============================*/
print 'dbo.prod_report2...'
if not exists (select * from sysobjects where id = object_id('dbo.prod_report2') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.prod_report2
(
  report_id int IDENTITY(1,1) not null ,
  input_date datetime2  null ,
  tankid_source nvarchar(60) null ,
  tankid_dest nvarchar(60) null ,
  concentration nvarchar(60) null ,
  outferment_liquor_num nvarchar(30) null ,
  xl_saka_num nvarchar(30) null ,
  saka_degree nvarchar(60) null ,
  outsaka_actual_num nvarchar(30) null ,
  xl_saka_actualnum nvarchar(30) null ,
  filter_wine_damage nvarchar(60) null ,
  memo nvarchar(60) null ,
  user_id int  null ,
  org_id int  null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CompanyName varchar(50) null ,
  Company varchar(50) null ,
  DeptName varchar(50) null ,
  Dept varchar(50) null ,
  CONSTRAINT PK_prod_report2 PRIMARY KEY  CLUSTERED
  (
    report_id
  )
)
END

GO

