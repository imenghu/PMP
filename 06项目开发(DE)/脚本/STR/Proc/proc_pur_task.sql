/*==============================proc_pur_task structure =============================*/
print 'dbo.proc_pur_task...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_pur_task') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_pur_task
(
  pur_task_id int IDENTITY(1,1) not null ,
  demand_detail_id int  null ,
  org_id int  null ,
  pur_task_userid nvarchar(40) null ,
  mat_id int  null ,
  mat_code nvarchar(60) null ,
  mat_name nvarchar(60) null ,
  mat_spec nvarchar(60) null ,
  plan_price nvarchar(60) null ,
  pur_slnum nvarchar(30) null ,
  pur_slnum_unit nvarchar(30) null ,
  pur_stnum nvarchar(30) null ,
  pur_stnum_unit nvarchar(30) null ,
  sl_st_scale nvarchar(20) null ,
  plan_arrival_time datetime2  null ,
  if_urg nchar(1) null ,
  item_price nvarchar(60) null ,
  pur_task_remarks nvarchar(200) null ,
  vendor_id nvarchar(11) null ,
  vendor_code nvarchar(60) null ,
  vendor_name nvarchar(60) null ,
  if_tests nchar(1) null ,
  tests_id nvarchar(20) null ,
  allot_userid nvarchar(40) null ,
  task_state nvarchar(20) null ,
  perform_info nvarchar(40) null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  pur_task_userid_name nvarchar(40) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  TaskUser varchar(50) null ,
  TaskUserName varchar(50) null ,
  CONSTRAINT PK_proc_pur_task PRIMARY KEY  CLUSTERED
  (
    pur_task_id
  )
)
END

GO

