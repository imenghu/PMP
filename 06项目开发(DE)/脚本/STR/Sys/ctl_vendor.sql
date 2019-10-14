/*==============================ctl_vendor structure =============================*/
print 'dbo.ctl_vendor...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_vendor') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_vendor
(
  vendor_id int IDENTITY(1,1) not null ,
  vendor_code nvarchar(60) null ,
  int_out nvarchar(10) null ,
  vendor_name nvarchar(100) not null ,
  vendor_class nvarchar(60) null ,
  region_class nvarchar(60) null ,
  vendor_status nvarchar(10) null ,
  if_customer nvarchar(3) null ,
  vendor_type nvarchar(60) null ,
  product_info nvarchar(200) null ,
  financial_org nvarchar(60) null ,
  tax_cer_no nvarchar(20) null ,
  vendor_superior nvarchar(100) null ,
  vendor_tax nvarchar(60) null ,
  vendor_contact nvarchar(40) null ,
  vendor_tel nvarchar(11) null ,
  vendor_email nvarchar(30) null ,
  vendor_addr nvarchar(255) null ,
  vendor_zipcode nvarchar(10) null ,
  vendor_wechat nvarchar(20) null ,
  vendor_qq nvarchar(20) null ,
  create_userid int  not null ,
  lastupdate_userid int  not null ,
  vendor_state nchar(1) not null ,
  state nchar(1) not null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CreateUserName varchar(50) null ,
  UpdateUserName varchar(50) null ,
  CONSTRAINT PK_ctl_vendor PRIMARY KEY  CLUSTERED
  (
    vendor_id
  )
)
END

GO

