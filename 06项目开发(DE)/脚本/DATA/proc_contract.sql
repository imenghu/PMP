truncate table proc_contract
set IDENTITY_INSERT proc_contract  ON
go
insert INTO proc_contract ([contract_id]
      ,[org_id]
      ,[contract_code]
      ,[contract_type]
      ,[contract_name]
      ,[piid]
      ,[vendor_id]
      ,[vendor_code]
      ,[vendor_name]
      ,[sign_userid]
      ,[if_outsource]
      ,[total_price]
      ,[submit_userid]
      ,[perform_info]
      ,[approval_state]
      ,[state]
      ,[create_time]
      ,[update_time]) select [contract_id]
      ,[org_id]
      ,[contract_code]
      ,[contract_type]
      ,[contract_name]
      ,[piid]
      ,[vendor_id]
      ,[vendor_code]
      ,[vendor_name]
      ,[sign_userid]
      ,[if_outsource]
      ,[total_price]
      ,[submit_userid]
      ,[perform_info]
      ,[approval_state]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_contract') 
set IDENTITY_INSERT proc_contract  OFF
go