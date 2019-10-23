/*==============================aux_annex_back structure =============================*/
print 'dbo.aux_annex_back...'
if not exists (select * from sysobjects where id = object_id('dbo.aux_annex_back') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.aux_annex_back
(
  annex_id int IDENTITY(1,1) not null ,
  fore_key_id int  null ,
  annex_class nvarchar(30) null ,
  annex_orgid int  null ,
  annex_userid int  null ,
  node_id nvarchar(60) null ,
  annex_name nvarchar(60) null ,
  annex_path nvarchar(500) null ,
  annex_suffix_name nvarchar(10) null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CONSTRAINT PK_aux_annex_back PRIMARY KEY  CLUSTERED
  (
    annex_id
  )
)
END

GO

