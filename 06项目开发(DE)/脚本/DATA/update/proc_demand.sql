update proc_demand set CreateUser=b.login_uid,CreateUserName=b.display_name from openquery(MYSQL, 'SELECT 
userid,
cast(display_name as char(20)) as display_name,
cast(login_uid as char(20)) as login_uid
FROM mxwi.users') as b where demand_userid=b.userid

update proc_demand set SN=demand_id
update proc_demand set org_id=(select top 1 org_id from proc_demand as b where demand_userid=b.demand_userid and org_id is not null) where org_id is null
update proc_demand set Dept=proc_demand.org_id,DeptName=b.name from openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as b where proc_demand.org_id=b.org_id

update proc_demand set Company=c.org_id,CompanyName=c.name from openquery(MYSQL, 'SELECT 
org_id as b_org_id,
p_id
FROM mxwi.org') as b join openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as c on b.p_id=c.org_id where proc_demand.org_id=b.b_org_id

update proc_demand set Company='2',CompanyName='水发天源水务集团',Dept='2',DeptName='水发天源水务集团' where CompanyName='root' or DeptName='root'