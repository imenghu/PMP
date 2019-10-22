/*==============================aux_approval structure =============================*/
print 'dbo.aux_approval...'
if not exists (select * from sysobjects where id = object_id('dbo.aux_approval') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.aux_approval
(
  approval_id int  null ,
  fore_key_id int  null ,
  piid nvarchar(100) not null ,
  approval_class nvarchar(60) not null ,
  flow_id int  not null ,
  if_begin_person nchar(1) null ,
  approval_result_id nvarchar(1) null ,
  audit_opinion nvarchar(200) null ,
  audit_userid int  not null ,
  cancel int  null ,
  create_time datetime2  null 
)
END

GO

