/*==============================proc_demand structure =============================*/
print 'dbo.proc_demand...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_demand') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_demand
(
  demand_id int IDENTITY(1,1) not null ,
  org_id int  null ,
  piid varchar(100) null ,
  total_price varchar(30) null ,
  if_urg char(1) null ,
  demand_remarks varchar(200) null ,
  demand_userid int  null ,
  demand_state varchar(10) null ,
  perform_info varchar(40) null ,
  state char(1) null DEFAULT((1)),
  create_time datetime  null DEFAULT(getdate()),
  update_time datetime  null ,
  TaskID int  null ,
  SN varchar(50) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  GroupCount int  null DEFAULT((0)),
  ItemsCount int  null DEFAULT((0)),
  CONSTRAINT PK_proc_demand PRIMARY KEY  CLUSTERED
  (
    demand_id
  )
)
END

GO

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