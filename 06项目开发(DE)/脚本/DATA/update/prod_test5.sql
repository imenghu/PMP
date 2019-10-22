update prod_test5 set CreateUser=b.login_uid,CreateUserName=b.display_name from openquery(MYSQL, 'SELECT 
userid,
cast(display_name as char(20)) as display_name,
cast(login_uid as char(20)) as login_uid
FROM mxwi.users') as b where user_id=b.userid

update prod_test5 set Dept=prod_test5.org_id,DeptName=b.name from openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as b where prod_test5.org_id=b.org_id

update prod_test5 set Company=c.org_id,CompanyName=c.name from openquery(MYSQL, 'SELECT 
org_id as b_org_id,
p_id
FROM mxwi.org') as b join openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as c on b.p_id=c.org_id where prod_test5.org_id=b.b_org_id


update prod_test5 set Company='2',CompanyName='水发天源水务集团',Dept='2',DeptName='水发天源水务集团' where CompanyName='root' or DeptName='root'
