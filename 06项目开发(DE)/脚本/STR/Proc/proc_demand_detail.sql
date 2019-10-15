/*==============================proc_demand_detail structure =============================*/
print 'dbo.proc_demand_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_demand_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_demand_detail
(
  demand_detail_id int IDENTITY(1,1) not null ,
  demand_id int  null ,
  sale_order varchar(200) null ,
  org_id int  null ,
  mat_id int  null ,
  mat_code varchar(60) null ,
  mat_name varchar(60) null ,
  mat_type varchar(60) null ,
  mat_spec varchar(60) null ,
  plan_price varchar(60) null ,
  plan_pnum varchar(60) null ,
  plan_pnum_unit varchar(10) null ,
  demand_slnum varchar(30) null ,
  demand_slnum_unit varchar(30) null ,
  demand_stnum varchar(30) null ,
  demand_stnum_unit varchar(30) null ,
  sl_st_scale varchar(20) null ,
  plan_arrival_time date  null ,
  uses varchar(100) null ,
  if_urg varchar(20) null ,
  item_price varchar(30) null ,
  demand_detail_remarks varchar(200) null ,
  demand_detail_userid int  null ,
  perform_info varchar(40) null ,
  state char(1) null ,
  create_time datetime  null ,
  update_time datetime  null ,
  TaskID int  null ,
  IsGroup int  null ,
  TaskUser varchar(50) null ,
  TaskUserName varchar(50) null ,
  CONSTRAINT PK_pro_demand_detail PRIMARY KEY  CLUSTERED
  (
    demand_detail_id
  )
)
END

GO

/*==================proc_demand_detail foreignkey ====================*/
PRINT 'proc_demand_detail:FK_proc_demand_detail_proc_demand'
if exists (select * from sysobjects where id = object_id('dbo.FK_proc_demand_detail_proc_demand') and sysstat & 0xff = 11)
  ALTER table proc_demand_detail DROP CONSTRAINT FK_proc_demand_detail_proc_demand
GO
  ALTER table proc_demand_detail ADD CONSTRAINT FK_proc_demand_detail_proc_demand FOREIGN KEY ( demand_id ) REFERENCES dbo.proc_demand ( demand_id )
GO

