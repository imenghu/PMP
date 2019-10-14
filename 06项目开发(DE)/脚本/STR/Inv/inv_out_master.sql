/*==============================inv_out_master structure =============================*/
print 'dbo.inv_out_master...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_out_master') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_out_master
(
  out_master_id int IDENTITY(1,1) not null ,
  org_id int  not null ,
  out_userid int  not null ,
  req_org_id int  not null ,
  req_userid int  not null ,
  piid nvarchar(100) null ,
  out_state nchar(1) null ,
  state nchar(1) not null ,
  outmaster_remarks nvarchar(200) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CompanyName nvarchar(100) null ,
  DeptName nvarchar(100) null ,
  CreateUserName nvarchar(100) null ,
  CONSTRAINT PK_inv_out_master PRIMARY KEY  CLUSTERED
  (
    out_master_id
  )
)
END

GO

