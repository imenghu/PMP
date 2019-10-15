/*==============================inv_prod_out structure =============================*/
print 'dbo.inv_prod_out...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_prod_out') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_prod_out
(
  prod_out_id int IDENTITY(1,1) not null ,
  depot_id int  null ,
  depot_name nvarchar(100) null ,
  prod_org_id int  null ,
  dep_org_id int  null ,
  dep_userid int  null ,
  mat_id int  null ,
  mat_code nvarchar(60) null ,
  mat_name nvarchar(60) null ,
  mat_spec nvarchar(60) null ,
  out_stnum nvarchar(60) null ,
  out_stnum_unit nvarchar(60) null ,
  out_time nvarchar(60) null ,
  prod_out_remarks nvarchar(200) null ,
  state nchar(1) null DEFAULT((1)),
  create_time datetime2  null ,
  update_time datetime2  null ,
  ProdUser varchar(50) null ,
  ProdUserName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  UpdateUser varchar(50) null ,
  UpdateUserName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  CONSTRAINT PK_inv_prod_out PRIMARY KEY  CLUSTERED
  (
    prod_out_id
  )
)
END

GO

