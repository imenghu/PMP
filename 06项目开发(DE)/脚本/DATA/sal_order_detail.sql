truncate table sal_order_detail
set IDENTITY_INSERT sal_order_detail  ON
go
insert INTO sal_order_detail ([order_detail_id]
      ,[order_master_id]
      ,[mat_id]
      ,[mat_code]
      ,[mat_name]
      ,[mat_spesc]
      ,[order_stnum]
      ,[order_stnum_unit]
      ,[item_price]
      ,[sales_remarks]
      ,[close_order]
      ,[state]
      ,[create_time]
      ,[update_time]) select [order_detail_id]
      ,[order_master_id]
      ,[mat_id]
      ,[mat_code]
      ,[mat_name]
      ,[mat_spesc]
      ,[order_stnum]
      ,[order_stnum_unit]
      ,[item_price]
      ,[sales_remarks]
      ,[close_order]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_order_detail') 
set IDENTITY_INSERT sal_order_detail  OFF
go