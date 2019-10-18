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

