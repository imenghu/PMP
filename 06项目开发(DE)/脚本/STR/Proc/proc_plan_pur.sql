/*==============================proc_plan_pur structure =============================*/
print 'dbo.proc_plan_pur...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_plan_pur') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_plan_pur
(
  plan_pur_id int IDENTITY(1,1) not null ,
  plan_pur_name nvarchar(100) null ,
  org_id int  null ,
  plan_pur_year nchar(4) null ,
  plan_type nvarchar(30) null ,
  total_price nvarchar(30) null ,
  plan_pur_remarks nvarchar(200) null ,
  demand_userid int  null ,
  demand_state nchar(1) null ,
  state nchar(1) not null ,
  create_time datetime2  not null ,
  update_time datetime2  not null ,
  CONSTRAINT PK_proc_plan_pur PRIMARY KEY  CLUSTERED
  (
    plan_pur_id
  )
)
END

GO

