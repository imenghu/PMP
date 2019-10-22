update proc_arrival_notice set StoreUser=b.login_uid,StoreUserName=b.display_name,CreateUser=b.login_uid,CreateUserName=b.display_name from openquery(MYSQL, 'SELECT 
userid,
cast(display_name as char(20)) as display_name,
cast(login_uid as char(20)) as login_uid
FROM mxwi.users') as b where store_userid=b.userid

update proc_arrival_notice set Dept=c.org_id,DeptName=b.name from openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as b join proc_pur_task c on c.org_id=b.org_id where c.pur_task_id=proc_arrival_notice.pur_task_id

update proc_arrival_notice set Company=c.org_id,CompanyName=c.name from openquery(MYSQL, 'SELECT 
org_id as b_org_id,
p_id
FROM mxwi.org') as b join openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as c on b.p_id=c.org_id join proc_pur_task as d on d.org_id=b.b_org_id where d.pur_task_id=proc_arrival_notice.pur_task_id

update proc_arrival_notice set Company='2',CompanyName='水发天源水务集团',Dept='2',DeptName='水发天源水务集团' where CompanyName='root' or DeptName='root'