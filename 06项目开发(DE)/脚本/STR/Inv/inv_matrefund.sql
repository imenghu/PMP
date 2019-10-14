/*==============================inv_matrefund structure =============================*/
print 'dbo.inv_matrefund...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_matrefund') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_matrefund
(
  mat_refund_id int IDENTITY(1,1) not null ,
  org_id int  not null ,
  out_userid int  not null ,
  ref_org_id int  not null ,
  ref_userid int  not null ,
  piid nvarchar(100) null ,
  refund_state nchar(1) null ,
  state nchar(1) not null ,
  refund_remarks nvarchar(200) null ,
  create_time nvarchar(100) null ,
  update_time nvarchar(100) null ,
  CompanyName nvarchar(100) null ,
  DeptName nvarchar(100) null ,
  CONSTRAINT PK_inv_matrefund PRIMARY KEY  CLUSTERED
  (
    mat_refund_id
  )
)
END

GO

