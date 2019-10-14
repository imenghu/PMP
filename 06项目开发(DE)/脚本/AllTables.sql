--SELECT * INTO annual_pur_plan  
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.annual_pur_plan')

SELECT * INTO aux_annex  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.aux_annex')

SELECT * INTO aux_annex_back  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.aux_annex_back')


--SELECT * INTO aux_approval  
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.aux_approval')

SELECT * INTO aux_message  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.aux_message')

SELECT * INTO ctl_area  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_area')

SELECT * INTO ctl_click  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_click')

SELECT * INTO ctl_dealer  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_dealer')

SELECT * INTO ctl_dealer_salesman  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_dealer_salesman')

SELECT * INTO ctl_depot  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_depot')

SELECT * INTO ctl_mat_planprice  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_mat_planprice')

SELECT * INTO ctl_mat_unit  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_mat_unit')

--SELECT * INTO ctl_material  
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_material')

SELECT * INTO ctl_material_class  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_material_class')

SELECT * INTO ctl_material_class123  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_material_class123')

SELECT * INTO ctl_salesman  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_salesman')

SELECT * INTO ctl_vendor  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_vendor')

SELECT * INTO ctl_vendor_mat  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_vendor_mat')

SELECT * INTO inv_depot_detail  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_depot_detail')

--SELECT * INTO inv_in_detail  
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_in_detail')

SELECT * INTO inv_inventory_detail  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_inventory_detail')

--SELECT * INTO inv_inventory_master  
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_inventory_master')

SELECT * INTO inv_matrefund  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_matrefund')

SELECT * INTO inv_matrefund_detail  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_matrefund_detail')

SELECT * INTO inv_out_detail  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_out_detail')

SELECT * INTO inv_out_master  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_out_master')

SELECT * INTO inv_prod_in  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_prod_in')

SELECT * INTO inv_prod_out  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_prod_out')

SELECT * INTO invoice_type  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.invoice_type')

SELECT * INTO mapdata  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.mapdata')

SELECT * INTO opposite_company  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.opposite_company')

SELECT * INTO proc_arrival_notice  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_arrival_notice')

SELECT * INTO proc_contract  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_contract')

SELECT * INTO proc_contract_task  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_contract_task')

--SELECT * INTO proc_demand  
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_demand')

SELECT * INTO proc_demand_detail  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_demand_detail')

SELECT * INTO proc_plan_pur  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_plan_pur')

SELECT * INTO proc_plan_pur_detail  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_plan_pur_detail')

SELECT * INTO proc_pur_enquiry  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_pur_enquiry')

SELECT * INTO proc_pur_task  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_pur_task')

SELECT * INTO proc_tests  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_tests')

--SELECT * INTO proc_tests_index  
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_tests_index')

--SELECT * INTO proc_tests_value  
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_tests_value')

SELECT * INTO prod_report1  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_report1')

SELECT * INTO prod_report2  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_report2')

SELECT * INTO prod_report3  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_report3')

SELECT * INTO prod_report4  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_report4')

SELECT * INTO prod_report5  
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_report5')

SELECT * INTO prod_report6 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_report6')

SELECT * INTO prod_test1 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test1')

SELECT * INTO prod_test2 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test2')

SELECT * INTO prod_test3 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test3')

SELECT * INTO prod_test4 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test4')

SELECT * INTO prod_test5 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test5')

SELECT * INTO prod_test6 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test6')

SELECT * INTO prod_test7 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test7')

SELECT * INTO prod_test8 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test8')

SELECT * INTO prod_test9 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test9')

SELECT * INTO prod_test10 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test10')

SELECT * INTO prod_test11 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test11')

SELECT * INTO sal_account_detail 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_account_detail')

SELECT * INTO sal_confirmation_info 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_confirmation_info')

SELECT * INTO sal_customer 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_customer')

--SELECT * INTO sal_deliver_details 
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_deliver_details')

SELECT * INTO sal_deposit 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_deposit')

SELECT * INTO sal_deposit_record 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_deposit_record')

--SELECT * INTO sal_finance 
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_finance')

SELECT * INTO sal_invoice 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_invoice')

SELECT * INTO sal_order_detail 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_order_detail')

--SELECT * INTO sal_order_master 
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_order_master')

SELECT * INTO sal_prod_deliver 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_prod_deliver')

SELECT * INTO sal_record 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_record')

--SELECT * INTO sal_remittance 
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_remittance')

SELECT * INTO sys_menu 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sys_menu')

SELECT * INTO sys_menu_oauth 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sys_menu_oauth')

SELECT * INTO sys_mess_menu 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sys_mess_menu')

SELECT * INTO sys_mess_menu_oauth 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sys_mess_menu_oauth')

SELECT * INTO test123 
FROM openquery(MYSQL, 'SELECT * FROM info_sys.test123')

--SELECT * INTO test333 
--FROM openquery(MYSQL, 'SELECT * FROM info_sys.test333')