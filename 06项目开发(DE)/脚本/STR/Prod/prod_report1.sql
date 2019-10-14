/*==============================prod_report1 structure =============================*/
print 'dbo.prod_report1...'
if not exists (select * from sysobjects where id = object_id('dbo.prod_report1') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.prod_report1
(
  report_id int IDENTITY(1,1) not null ,
  mat_id int  null ,
  mat_name nvarchar(60) null ,
  ferment_tankno nvarchar(60) null ,
  full_tank_date datetime2  null ,
  wort_batch nvarchar(60) null ,
  export_date datetime2  null ,
  full_tank_num nvarchar(30) null ,
  outferment_liquor_num nvarchar(30) null ,
  ferment_wine_damage nvarchar(60) null ,
  end_date datetime2  null ,
  memo nvarchar(200) null ,
  user_id int  null ,
  org_id int  null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CompanyName varchar(50) null ,
  Company varchar(50) null ,
  DeptName varchar(50) null ,
  Dept varchar(50) null ,
  CONSTRAINT PK_prod_report1 PRIMARY KEY  CLUSTERED
  (
    report_id
  )
)
END

GO

