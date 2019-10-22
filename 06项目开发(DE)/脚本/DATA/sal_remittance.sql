truncate table sal_remittance
set IDENTITY_INSERT sal_remittance  ON
go
insert into sal_remittance(remittance_id,
remittance_date,
remittance_name,
remittance_money,
remittance_man,
customer_code,
customer_name,
name,
remittance_recer,
remittance_no,
remittance_type,
remittance_effect,
createdate,
updatedate,
state) select *
FROM openquery(MYSQL, 'SELECT remittance_id,
remittance_date,
remittance_name,
remittance_money,
remittance_man,
customer_code,
customer_name,
name,
remittance_recer,
remittance_no,
remittance_type,
remittance_effect,
createdate,
updatedate,
cast(state as char(2)) as state FROM info_sys.sal_remittance') 
set IDENTITY_INSERT sal_remittance  OFF
go