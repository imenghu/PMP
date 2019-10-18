/*==============================inv_out_master structure =============================*/
print 'dbo.inv_out_master...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_out_master') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_out_master
(
  out_master_id int IDENTITY(1,1) not null ,
  org_id int  null ,
  out_userid int  null ,
  req_org_id int  null ,
  req_userid int  null ,
  piid nvarchar(100) null ,
  out_state nchar(1) null ,
  state nchar(1) null ,
  outmaster_remarks nvarchar(200) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  TaskID int  null ,
  ReqOrgName varchar(50) null ,
  ReqUserAccount varchar(50) null ,
  ReqUserName varchar(50) null ,
  Attachments varchar(500) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  UpdateUser varchar(50) null ,
  UpdateUserName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  CONSTRAINT PK_inv_out_master PRIMARY KEY  CLUSTERED
  (
    out_master_id
  )
)
END

GO

/*==============================inv_out_detail structure =============================*/
print 'dbo.inv_out_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_out_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_out_detail
(
  out_detail_id int IDENTITY(1,1) not null ,
  out_master_id int  null ,
  out_type nvarchar(60) null ,
  depot_id int  null ,
  depot_name nvarchar(60) null ,
  org_id int  null ,
  out_userid int  null ,
  vendor_id int  null ,
  vendor_code nvarchar(60) null ,
  vendor_name nvarchar(200) null ,
  mat_id int  null ,
  mat_code nvarchar(60) null ,
  mat_name nvarchar(60) null ,
  mat_spec nvarchar(60) null ,
  out_stnum nvarchar(30) null ,
  out_stnum_unit nvarchar(30) null ,
  out_time nvarchar(60) null ,
  outdetail_remarks nvarchar(200) null ,
  state nchar(1) null DEFAULT((1)),
  create_time datetime2  null ,
  update_time datetime2  null ,
  TaskID int  null ,
  CONSTRAINT PK_inv_out_detail PRIMARY KEY  CLUSTERED
  (
    out_detail_id
  )
)
END

GO

