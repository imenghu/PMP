/*==============================proc_plan_pur_detail structure =============================*/
print 'dbo.proc_plan_pur_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_plan_pur_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_plan_pur_detail
(
  planpur_detail_id int IDENTITY(1,1) not null ,
  plan_pur_id int  null ,
  org_id int  null ,
  mat_id int  null ,
  mat_code nvarchar(60) null ,
  mat_name nvarchar(60) null ,
  mat_spec nvarchar(60) null ,
  mat_type nvarchar(60) null ,
  planpur_slnum nvarchar(30) null ,
  planpur_slnum_unit nvarchar(30) null ,
  planpur_stnum nvarchar(30) null ,
  planpur_stnum_unit nvarchar(30) null ,
  plan_month nvarchar(4) null ,
  sl_st_scale nvarchar(11) null ,
  allow_deviation nvarchar(10) null ,
  item_price nvarchar(30) null ,
  planpur_detail_remarks nvarchar(200) null ,
  planpur_userid nvarchar(40) null ,
  state nchar(1) not null ,
  create_time datetime2  not null ,
  update_time datetime2  not null ,
  CONSTRAINT PK_proc_plan_pur_detail PRIMARY KEY  CLUSTERED
  (
    planpur_detail_id
  )
)
END

GO

