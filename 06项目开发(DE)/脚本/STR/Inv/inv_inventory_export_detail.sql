/*==============================inv_inventory_export_detail structure =============================*/
print 'dbo.inv_inventory_export_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_inventory_export_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_inventory_export_detail
(
  inv_id int IDENTITY(1,1) not null ,
  inv_mast_id int  null ,
  org_id int  null ,
  depot_id int  null ,
  depot_name nvarchar(60) null ,
  vendor_id int  null ,
  vendor_code nvarchar(60) null ,
  vendor_name nvarchar(100) null ,
  mat_id int  null ,
  mat_code nvarchar(60) null ,
  mat_name nvarchar(60) null ,
  mat_spec nvarchar(60) null ,
  inv_stnum_unit nvarchar(30) null ,
  depot_mat_num nvarchar(60) null ,
  inv_diff_num nvarchar(60) null ,
  inv_depot_mat_num nvarchar(60) null ,
  inv_remarks nvarchar(200) null ,
  state nchar(1) null DEFAULT((1)),
  create_time datetime2  null ,
  update_time datetime2  null ,
  CONSTRAINT PK_inv_inventory_export_detail PRIMARY KEY  CLUSTERED
  (
    inv_id
  )
)
END

GO

