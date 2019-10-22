/*==============================annual_pur_plan structure =============================*/
print 'dbo.annual_pur_plan...'
if not exists (select * from sysobjects where id = object_id('dbo.annual_pur_plan') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.annual_pur_plan
(
  plan_pur_id int IDENTITY(1,1) not null ,
  plan_org_id int  null ,
  plan_userid int  null ,
  mat_id int  null ,
  mat_code char(12) null ,
  mat_name varchar(60) null ,
  mat_spec varchar(60) null ,
  plan_slnum_unit varchar(30) null ,
  plan_stnum_unit varchar(30) null ,
  sl_st_scale varchar(20) null ,
  plan_pur_year char(4) null ,
  plan_month_jan varchar(30) null ,
  plan_month_feb varchar(30) null ,
  plan_month_mar varchar(30) null ,
  plan_month_apr varchar(30) null ,
  plan_month_may varchar(30) null ,
  plan_month_june varchar(30) null ,
  plan_month_july varchar(30) null ,
  plan_month_aug varchar(30) null ,
  plan_month_sept varchar(30) null ,
  plan_month_oct varchar(30) null ,
  plan_month_nov varchar(30) null ,
  plan_month_dec varchar(30) null ,
  plan_price varchar(30) null ,
  plan_total_num varchar(30) null ,
  total_price varchar(30) null ,
  planpur_remarks varchar(200) null ,
  state char(1) null DEFAULT((1)),
  create_time datetime  null ,
  update_time datetime  null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  UpdateUser varchar(50) null ,
  UpdateUserName varchar(50) null ,
  CONSTRAINT PK_annual_pur_plan PRIMARY KEY  CLUSTERED
  (
    plan_pur_id
  )
)
END

GO

