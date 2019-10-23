/*==============================opposite_company structure =============================*/
print 'dbo.opposite_company...'
if not exists (select * from sysobjects where id = object_id('dbo.opposite_company') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.opposite_company
(
  id int IDENTITY(1,1) not null ,
  code nvarchar(500) null ,
  area nvarchar(500) null ,
  provincial_area nvarchar(500) null ,
  city nvarchar(500) null ,
  payment_account nvarchar(500) null ,
  customer_name nvarchar(500) null ,
  organizational_code nvarchar(500) null ,
  registration_address nvarchar(500) null ,
  legal_person nvarchar(500) null ,
  phone_number nvarchar(500) null ,
  receiving_address nvarchar(500) null ,
  receiver nvarchar(500) null ,
  receiving_mobile_phone nvarchar(500) null ,
  responsible nvarchar(500) null ,
  distributiona_area nvarchar(500) null ,
  responsible_managers nvarchar(500) null ,
  date datetime2  null ,
  CONSTRAINT PK_opposite_company PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

