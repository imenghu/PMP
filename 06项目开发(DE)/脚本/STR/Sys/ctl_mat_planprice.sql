/*==============================ctl_mat_planprice structure =============================*/
print 'dbo.ctl_mat_planprice...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_mat_planprice') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_mat_planprice
(
  plan_price_id int IDENTITY(1,1) not null ,
  org_id int  null ,
  mat_id int  not null ,
  mat_code nvarchar(60) not null ,
  mat_name nvarchar(60) not null ,
  mat_spec nvarchar(60) null ,
  plan_price nvarchar(30) null ,
  base_unit nvarchar(30) not null ,
  plan_price_remarks nvarchar(200) null ,
  planprice_userid nvarchar(11) null ,
  approval_state nvarchar(30) null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CONSTRAINT PK_ctl_mat_planprice PRIMARY KEY  CLUSTERED
  (
    plan_price_id
  )
)
END

GO

