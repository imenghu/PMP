/*==============================inv_in_detail structure =============================*/
print 'dbo.inv_in_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_in_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_in_detail
(
  in_detail_id int IDENTITY(1,1) not null ,
  in_detail_type nvarchar(60) null DEFAULT(N'²É¹ºÈë¿â'),
  arrival_notice_id int  null ,
  pur_task_id int  null ,
  mat_refund_id int  null ,
  org_id int  null ,
  mat_id int  null ,
  mat_code nvarchar(60) null ,
  mat_name nvarchar(60) null ,
  mat_spesc nvarchar(60) null ,
  vendor_id int  null ,
  vendor_code nvarchar(60) null ,
  vendor_name nvarchar(100) null ,
  plan_in_slnum int  null ,
  deduction_slnum int  null DEFAULT((0)),
  in_slnum int  null ,
  in_slnum_unit nvarchar(30) null ,
  in_stnum nvarchar(30) null ,
  in_stnum_unit nvarchar(30) null ,
  sl_st_scale nvarchar(20) null ,
  if_tests nchar(1) null ,
  depot_id int  null ,
  depot_name nvarchar(60) null ,
  submit_userid nvarchar(11) null ,
  in_remarks nvarchar(200) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  state char(255) null DEFAULT((1)),
  if_compromise char(1) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  CONSTRAINT PK_inv_in_detail PRIMARY KEY  CLUSTERED
  (
    in_detail_id
  )
)
END

GO

