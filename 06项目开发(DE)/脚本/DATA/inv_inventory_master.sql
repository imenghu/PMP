truncate table inv_inventory_master
set IDENTITY_INSERT inv_inventory_master  ON
go
insert INTO inv_inventory_master (inv_mast_id,
org_id,
depot_id,
depot_name,
inv_master_userid,
inv_master_year,
inv_master_month,
inv_master_time,
inv_remarks,
piid,
inv_remarks_state,
state,
create_time,
update_time) select *
FROM openquery(MYSQL, 'SELECT 
inv_mast_id,
org_id,
depot_id,
depot_name,
inv_master_userid,
inv_master_year,
cast(inv_master_month as char(10)) as inv_master_month,
inv_master_time,
inv_remarks,
piid,
inv_remarks_state,
state,
create_time,
update_time FROM info_sys.inv_inventory_master') 
set IDENTITY_INSERT inv_inventory_master  OFF
go