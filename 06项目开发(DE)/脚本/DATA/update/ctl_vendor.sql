update ctl_vendor set CreateUser=b.login_uid,CreateUserName=b.display_name from openquery(MYSQL, 'SELECT 
userid,
cast(display_name as char(20)) as display_name,
cast(login_uid as char(20)) as login_uid
FROM mxwi.users') as b where create_userid=b.userid

update ctl_vendor set UpdateUser=b.login_uid,UpdateUserName=b.display_name from openquery(MYSQL, 'SELECT 
userid,
cast(display_name as char(20)) as display_name,
cast(login_uid as char(20)) as login_uid
FROM mxwi.users') as b where lastupdate_userid=b.userid

update ctl_vendor set Company='14',CompanyName='劳特巴赫（菏泽）啤酒股份有限公司'