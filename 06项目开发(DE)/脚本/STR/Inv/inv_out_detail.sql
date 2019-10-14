/*==============================inv_out_detail structure =============================*/
print 'dbo.inv_out_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_out_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_out_detail
(
  out_detail_id int IDENTITY(1,1) not null ,
  out_master_id int  not null ,
  out_type nvarchar(60) not null ,
  depot_id int  not null ,
  depot_name nvarchar(60) not null ,
  org_id int  not null ,
  out_userid int  not null ,
  vendor_id int  not null ,
  vendor_code nvarchar(60) not null ,
  vendor_name nvarchar(200) not null ,
  mat_id int  not null ,
  mat_code nvarchar(60) not null ,
  mat_name nvarchar(60) not null ,
  mat_spec nvarchar(60) null ,
  out_stnum nvarchar(30) not null ,
  out_stnum_unit nvarchar(30) not null ,
  out_time nvarchar(60) not null ,
  outdetail_remarks nvarchar(200) null ,
  state nchar(1) not null ,
  create_time datetime2  not null ,
  update_time datetime2  null ,
  CONSTRAINT PK_inv_out_detail PRIMARY KEY  CLUSTERED
  (
    out_detail_id
  )
)
END

GO

