/*==============================ctl_dealer_salesman structure =============================*/
print 'dbo.ctl_dealer_salesman...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_dealer_salesman') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_dealer_salesman
(
  ds_id int IDENTITY(1,1) not null ,
  salesman_id int  null ,
  dealer_id int  null ,
  create_userid int  null ,
  ds_remarks nvarchar(200) null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CONSTRAINT PK_ctl_dealer_salesman PRIMARY KEY  CLUSTERED
  (
    ds_id
  )
)
END

GO

