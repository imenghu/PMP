truncate table proc_pur_enquiry
set IDENTITY_INSERT proc_pur_enquiry  ON
go
insert INTO proc_pur_enquiry ([pur_enquiry_id]
      ,[pur_task_id]
      ,[demand_detail_id]
      ,[org_id]
      ,[vendor_id]
      ,[vendor_code]
      ,[vendor_name]
      ,[mat_id]
      ,[mat_code]
      ,[mat_name]
      ,[mat_spesc]
      ,[pur_slnum]
      ,[pur_slnum_unit]
      ,[pur_stnum]
      ,[pur_stnum_unit]
      ,[sl_st_scale]
      ,[plan_pur_time]
      ,[plan_arrival_time]
      ,[quotation]
      ,[if_tax]
      ,[tax_rate]
      ,[if_freight]
      ,[total_price]
      ,[if_vat_ticket]
      ,[pur_enquiry_remarks]
      ,[pur_enquiry_userid]
      ,[if_tests]
      ,[state]
      ,[create_time]
      ,[update_time]) select [pur_enquiry_id]
      ,[pur_task_id]
      ,[demand_detail_id]
      ,[org_id]
      ,[vendor_id]
      ,[vendor_code]
      ,[vendor_name]
      ,[mat_id]
      ,[mat_code]
      ,[mat_name]
      ,[mat_spesc]
      ,[pur_slnum]
      ,[pur_slnum_unit]
      ,[pur_stnum]
      ,[pur_stnum_unit]
      ,[sl_st_scale]
      ,[plan_pur_time]
      ,[plan_arrival_time]
      ,[quotation]
      ,[if_tax]
      ,[tax_rate]
      ,[if_freight]
      ,[total_price]
      ,[if_vat_ticket]
      ,[pur_enquiry_remarks]
      ,[pur_enquiry_userid]
      ,[if_tests]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_pur_enquiry') 
set IDENTITY_INSERT proc_pur_enquiry  OFF
go