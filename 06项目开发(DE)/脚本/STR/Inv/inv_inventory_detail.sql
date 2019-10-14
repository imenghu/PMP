/*==============================inv_inventory_detail structure =============================*/
print 'dbo.inv_inventory_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_inventory_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_inventory_detail
(
  inv_id int IDENTITY(1,1) not null ,
  inv_mast_id int  null ,
  org_id int  not null ,
  depot_id int  not null ,
  depot_name nvarchar(60) not null ,
  vendor_id int  not null ,
  vendor_code nvarchar(60) null ,
  vendor_name nvarchar(100) not null ,
  mat_id int  not null ,
  mat_code nvarchar(60) not null ,
  mat_name nvarchar(60) not null ,
  mat_spec nvarchar(60) null ,
  inv_stnum_unit nvarchar(30) not null ,
  depot_mat_num nvarchar(60) not null ,
  inv_diff_num nvarchar(60) null ,
  inv_depot_mat_num nvarchar(60) null ,
  inv_remarks nvarchar(200) null ,
  state nchar(1) not null ,
  create_time datetime2  not null ,
  update_time datetime2  null ,
  CONSTRAINT PK_inv_inventory_detail PRIMARY KEY  CLUSTERED
  (
    inv_id
  )
)
END

GO

