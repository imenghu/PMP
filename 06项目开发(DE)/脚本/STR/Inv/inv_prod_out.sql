/*==============================inv_prod_out structure =============================*/
print 'dbo.inv_prod_out...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_prod_out') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_prod_out
(
  prod_out_id int IDENTITY(1,1) not null ,
  depot_id int  not null ,
  depot_name nvarchar(100) not null ,
  prod_org_id int  null ,
  dep_org_id int  not null ,
  dep_userid int  not null ,
  mat_id int  not null ,
  mat_code nvarchar(60) not null ,
  mat_name nvarchar(60) not null ,
  mat_spec nvarchar(60) null ,
  out_stnum nvarchar(60) not null ,
  out_stnum_unit nvarchar(60) not null ,
  out_time nvarchar(60) not null ,
  prod_out_remarks nvarchar(200) null ,
  state nchar(1) not null ,
  create_time datetime2  not null ,
  update_time datetime2  null ,
  CONSTRAINT PK_inv_prod_out PRIMARY KEY  CLUSTERED
  (
    prod_out_id
  )
)
END

GO

