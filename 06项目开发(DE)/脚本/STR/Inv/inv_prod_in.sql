/*==============================inv_prod_in structure =============================*/
print 'dbo.inv_prod_in...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_prod_in') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_prod_in
(
  prod_in_id int IDENTITY(1,1) not null ,
  depot_id int  not null ,
  depot_name nvarchar(100) not null ,
  prod_org_id int  null ,
  dep_org_id int  not null ,
  dep_userid int  not null ,
  mat_id int  not null ,
  mat_code nvarchar(60) not null ,
  mat_name nvarchar(200) not null ,
  mat_spec nvarchar(100) null ,
  in_stnum int  not null ,
  in_stnum_unit nvarchar(60) null ,
  in_time datetime2  not null ,
  prod_in_remarks nvarchar(200) null ,
  state nchar(1) not null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CONSTRAINT PK_inv_prod_in PRIMARY KEY  CLUSTERED
  (
    prod_in_id
  )
)
END

GO

