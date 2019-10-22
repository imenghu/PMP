truncate table sal_deliver_details
set IDENTITY_INSERT sal_deliver_details  ON
go
insert INTO sal_deliver_details([deliver_detail_id]
      ,[deliver_date]
      ,[deliver_name]
      ,[deliver_number]
      ,[depot_id]
      ,[depot_name]
      ,[name]
      ,[customer_code]
      ,[customer_name]
      ,[receiving_address]
      ,[receiver]
      ,[receiving_mobile_phone]
      ,[consignor]
      ,[deliver_no]
      ,[summary]
      ,[createdate]
      ,[updatedate]
      ,[state]) select *
FROM openquery(MYSQL, 'SELECT deliver_detail_id
      ,deliver_date
      ,deliver_name
      ,deliver_money
      ,depot_id
      ,depot_name
      ,name
      ,customer_code
      ,customer_name
      ,receiving_address
      ,receiver
      ,receiving_mobile_phone
      ,consignor
      ,deliver_no
      ,summary
      ,createdate
      ,updatedate
      ,cast(state as char(2)) as state FROM info_sys.sal_deliver_details') 
set IDENTITY_INSERT sal_deliver_details  OFF
go