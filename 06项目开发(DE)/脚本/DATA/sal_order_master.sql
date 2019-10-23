truncate table sal_order_master
set IDENTITY_INSERT sal_order_master  ON
go
insert INTO sal_order_master ([order_master_id]
      ,[piid]
      ,[sale_order]
      ,[dealer_id]
      ,[dealer_name]
      ,[consignee_name]
      ,[consignee_tel]
      ,[consignee_addr]
      ,[total_price]
      ,[pay_price]
      ,[salesman_id]
      ,[salesman_name]
      ,[salesman_tel]
      ,[sales_remarks]
      ,[sales_state]
      ,[close_order]
      ,[state]
      ,[pay_state]
      ,[create_time]
      ,[update_time]) select *
FROM openquery(MYSQL, 'SELECT order_master_id
      ,piid
      ,sale_order
      ,dealer_id
      ,dealer_name
      ,consignee_name
      ,consignee_tel
      ,consignee_addr
      ,total_price
      ,pay_price
      ,salesman_id
      ,salesman_name
      ,salesman_tel
      ,sales_remarks
      ,sales_state
      ,close_order
      ,state
      ,cast(pay_state as char(2)) as pay_state
      ,create_time
      ,update_time FROM info_sys.sal_order_master') 
set IDENTITY_INSERT sal_order_master  OFF
go