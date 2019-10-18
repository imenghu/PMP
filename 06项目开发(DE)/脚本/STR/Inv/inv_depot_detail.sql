/*==============================inv_depot_detail structure =============================*/
print 'dbo.inv_depot_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_depot_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_depot_detail
(
  depot_detail_id int IDENTITY(1,1) not null ,
  org_id int  null ,
  depot_id int  null ,
  depot_name nvarchar(255) null ,
  vendor_id int  null ,
  vendor_code nvarchar(255) null ,
  vendor_name nvarchar(255) null ,
  mat_id int  null ,
  mat_code nvarchar(255) null ,
  mat_name nvarchar(255) null ,
  mat_spec nvarchar(255) null ,
  depot_stnum_unit nvarchar(255) null ,
  proc_in_num nvarchar(60) null ,
  inv_out_num nvarchar(60) null ,
  refund_num nvarchar(60) null ,
  inv_diff_num nvarchar(60) null ,
  last_depot_mat_num nvarchar(60) null ,
  depot_mat_num nvarchar(60) null ,
  state nchar(1) null DEFAULT((1)),
  create_time datetime2  null ,
  update_time datetime2  null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  UpdateUser varchar(50) null ,
  UpdateUserName varchar(50) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  CONSTRAINT PK_inv_depot_detail PRIMARY KEY  CLUSTERED
  (
    depot_detail_id
  )
)
END

GO

