/*==============================inv_inventory_master structure =============================*/
print 'dbo.inv_inventory_master...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_inventory_master') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_inventory_master
(
  inv_mast_id int IDENTITY(1,1) not null ,
  org_id int  not null ,
  depot_id int  not null ,
  depot_name nvarchar(100) not null ,
  inv_master_userid int  not null ,
  inv_master_year nchar(4) not null ,
  inv_master_month nchar(2) not null ,
  inv_master_time nvarchar(60) not null ,
  inv_remarks nvarchar(200) null ,
  piid nvarchar(100) null ,
  inv_remarks_state nvarchar(10) null ,
  state nchar(1) not null ,
  create_time datetime2  not null ,
  update_time datetime2  null ,
  CompanyName nvarchar(100) null ,
  DeptName nvarchar(100) null ,
  CreateUserName nvarchar(100) null ,
  CONSTRAINT PK_inv_inventory_master PRIMARY KEY  CLUSTERED
  (
    inv_mast_id
  )
)
END

GO

