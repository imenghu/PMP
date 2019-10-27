/*==============================inv_inventory_master structure =============================*/
print 'dbo.inv_inventory_master...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_inventory_master') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_inventory_master
(
  inv_mast_id int IDENTITY(1,1) not null ,
  org_id int  null ,
  depot_id int  null ,
  depot_name nvarchar(100) null ,
  inv_master_userid int  null ,
  inv_master_year nchar(4) null ,
  inv_master_month nchar(4) null ,
  inv_master_time nvarchar(60) null ,
  inv_remarks nvarchar(200) null ,
  piid nvarchar(100) null ,
  inv_remarks_state nvarchar(10) null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  TaskID int  null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  UpdateUser varchar(50) null ,
  UpdateUserName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  CONSTRAINT PK_inv_inventory_master PRIMARY KEY  CLUSTERED
  (
    inv_mast_id
  )
)
END

GO


/*==============================inv_inventory_detail structure =============================*/
print 'dbo.inv_inventory_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_inventory_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_inventory_detail
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
  TaskID int  null ,
  CONSTRAINT PK_inv_inventory_detail PRIMARY KEY  CLUSTERED
  (
    inv_id
  )
)
END

GO


