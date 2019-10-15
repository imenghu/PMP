/*==============================proc_pur_enquiry structure =============================*/
print 'dbo.proc_pur_enquiry...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_pur_enquiry') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_pur_enquiry
(
  pur_enquiry_id int IDENTITY(1,1) not null ,
  pur_task_id int  null ,
  demand_detail_id int  null ,
  org_id int  null ,
  vendor_id int  null ,
  vendor_code nvarchar(40) null ,
  vendor_name nvarchar(60) null ,
  mat_id int  null ,
  mat_code nvarchar(60) null ,
  mat_name nvarchar(60) null ,
  mat_spesc nvarchar(60) null ,
  pur_slnum nvarchar(30) null ,
  pur_slnum_unit nvarchar(30) null ,
  pur_stnum nvarchar(30) null ,
  pur_stnum_unit nvarchar(30) null ,
  sl_st_scale nvarchar(20) null ,
  plan_pur_time datetime2  null ,
  plan_arrival_time datetime2  null ,
  quotation nvarchar(40) null ,
  if_tax nchar(1) null ,
  tax_rate nvarchar(5) null ,
  if_freight nchar(1) null ,
  total_price nvarchar(30) null ,
  if_vat_ticket nchar(1) null ,
  pur_enquiry_remarks nvarchar(200) null ,
  pur_enquiry_userid int  null ,
  if_tests nchar(1) null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  Attachment varchar(500) null ,
  CONSTRAINT PK_proc_pur_enquiry PRIMARY KEY  CLUSTERED
  (
    pur_enquiry_id
  )
)
END

GO

