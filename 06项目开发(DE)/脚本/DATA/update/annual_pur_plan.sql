update annual_pur_plan set CreateUser=b.login_uid,CreateUserName=b.display_name,UpdateUser=b.login_uid,UpdateUserName=b.display_name from openquery(MYSQL, 'SELECT 
userid,
cast(display_name as char(20)) as display_name,
cast(login_uid as char(20)) as login_uid
FROM mxwi.users') as b where plan_userid=b.userid

update annual_pur_plan set Dept=annual_pur_plan.plan_org_id,DeptName=b.name from openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as b where annual_pur_plan.plan_org_id=b.org_id

update annual_pur_plan set Company=c.org_id,CompanyName=c.name from openquery(MYSQL, 'SELECT 
org_id as b_org_id,
p_id
FROM mxwi.org') as b join openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as c on b.p_id=c.org_id where annual_pur_plan.plan_org_id=b.b_org_id

update annual_pur_plan set Company='2',CompanyName='水发天源水务集团',Dept='2',DeptName='水发天源水务集团' where CompanyName='root' or DeptName='root'