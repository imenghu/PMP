update inv_prod_out set ProdUser=b.login_uid,ProdUserName=b.display_name from openquery(MYSQL, 'SELECT 
userid,
cast(display_name as char(20)) as display_name,
cast(login_uid as char(20)) as login_uid
FROM mxwi.users') as b where dep_userid=b.userid

update inv_prod_out set CreateUser=b.login_uid,CreateUserName=b.display_name from openquery(MYSQL, 'SELECT 
userid,
cast(display_name as char(20)) as display_name,
cast(login_uid as char(20)) as login_uid
FROM mxwi.users') as b where dep_userid=b.userid

update inv_prod_out set Company=c.org_id,CompanyName=c.name from openquery(MYSQL, 'SELECT 
org_id as b_org_id,
p_id
FROM mxwi.org') as b join openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as c on b.p_id=c.org_id where inv_prod_out.dep_org_id=b.b_org_id