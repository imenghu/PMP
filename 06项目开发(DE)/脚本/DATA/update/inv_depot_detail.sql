update inv_depot_detail set Dept=inv_depot_detail.org_id,DeptName=b.name from openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as b where inv_depot_detail.org_id=b.org_id

update inv_depot_detail set Company=c.org_id,CompanyName=c.name from openquery(MYSQL, 'SELECT 
org_id as b_org_id,
p_id
FROM mxwi.org') as b join openquery(MYSQL, 'SELECT 
org_id,
cast(name as char(50)) as name
FROM mxwi.org') as c on b.p_id=c.org_id where inv_depot_detail.org_id=b.b_org_id

update inv_depot_detail set Company='2',CompanyName='ˮ����Դˮ����',Dept='2',DeptName='ˮ����Դˮ����' where CompanyName='root' or DeptName='root'