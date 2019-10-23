truncate table sal_finance
set IDENTITY_INSERT sal_finance  ON
go
insert INTO sal_finance (finance_id,
finance_name,
finance_company,
finance_position,
finance_tel,
state,
createdate,
updatedate
) select *
FROM openquery(MYSQL, 'SELECT finance_id,
finance_name,
finance_company,
finance_position,
finance_tel,
cast(state as char(2)) as state,
createdate,
updatedate FROM info_sys.sal_finance') 
set IDENTITY_INSERT sal_finance  OFF
go