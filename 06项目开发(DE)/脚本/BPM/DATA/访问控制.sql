truncate table BPMSecurityUserResource
/*===================== table data: BPMSecurityUserResource =====================*/
print 'dbo.BPMSecurityUserResource data...' 
if not exists(select * from BPMSecurityUserResource where RSID= '04327dd5-58b7-47ad-ab34-608511b2d190')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (1,  'fa6a2858-74d5-4d20-9e43-104578d8538c',  '生产日报',  '04327dd5-58b7-47ad-ab34-608511b2d190')
if not exists(select * from BPMSecurityUserResource where RSID= '08c9ac55-db78-498c-b34e-53c1a033bbcd')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (0,  '37d87f06-ffa3-4724-90fa-a5007db9e2b2',  '流程管理',  '08c9ac55-db78-498c-b34e-53c1a033bbcd')
if not exists(select * from BPMSecurityUserResource where RSID= '08e56d79-57d9-4a26-a48c-47a3d91a9e44')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (0,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  '啤酒后发酵质检',  '08e56d79-57d9-4a26-a48c-47a3d91a9e44')
if not exists(select * from BPMSecurityUserResource where RSID= '0dfe13ee-66ae-4af1-aa7e-b919ceb79135')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (3,  '5c5b95ae-a510-4a70-b2bf-8b2c407c4316',  '我的任务',  '0dfe13ee-66ae-4af1-aa7e-b919ceb79135')
if not exists(select * from BPMSecurityUserResource where RSID= '0e32f172-b084-40c3-8153-5ecb5436b4e8')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (40,  'bd4a0c6f-f717-4879-bddb-c52b5cd051bc',  '应用管理',  '0e32f172-b084-40c3-8153-5ecb5436b4e8')
if not exists(select * from BPMSecurityUserResource where RSID= '1439c8f5-e410-4262-b69b-6402bf86a79b')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (30,  '71e3df38-475f-40fc-b0a1-9ad23494a7f5',  '权限',  '1439c8f5-e410-4262-b69b-6402bf86a79b')
if not exists(select * from BPMSecurityUserResource where RSID= '194399e5-ac94-424b-9923-47ee406febe8')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (7,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  '麦芽质检',  '194399e5-ac94-424b-9923-47ee406febe8')
if not exists(select * from BPMSecurityUserResource where RSID= '1df9d8a7-6c33-416e-aa53-0dcee003b414')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (2,  '5c5b95ae-a510-4a70-b2bf-8b2c407c4316',  '采购合同',  '1df9d8a7-6c33-416e-aa53-0dcee003b414')
if not exists(select * from BPMSecurityUserResource where RSID= '1f537a3f-564f-4b94-a39e-592f6d601577')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (1,  '5c5b95ae-a510-4a70-b2bf-8b2c407c4316',  '采购需求',  '1f537a3f-564f-4b94-a39e-592f6d601577')
if not exists(select * from BPMSecurityUserResource where RSID= '24299805-6e7a-4ca7-9191-0fe2569652d8')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (0,  '04327dd5-58b7-47ad-ab34-608511b2d190',  '发酵酒损',  '24299805-6e7a-4ca7-9191-0fe2569652d8')
if not exists(select * from BPMSecurityUserResource where RSID= '25a9de61-fc9f-45df-8d99-2f8279b5a1e6')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (50,  'bd4a0c6f-f717-4879-bddb-c52b5cd051bc',  '报表定制',  '25a9de61-fc9f-45df-8d99-2f8279b5a1e6')
if not exists(select * from BPMSecurityUserResource where RSID= '2694420f-a074-446c-bdf3-72dae1920298')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10,  'd783ae40-f57c-4209-bbc5-bf01ae913854',  '公司组织',  '2694420f-a074-446c-bdf3-72dae1920298')
if not exists(select * from BPMSecurityUserResource where RSID= '2c2b5525-62ed-47b2-85a0-583d56876c36')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10,  '0e32f172-b084-40c3-8153-5ecb5436b4e8',  '表单服务',  '2c2b5525-62ed-47b2-85a0-583d56876c36')
if not exists(select * from BPMSecurityUserResource where RSID= '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (0,  'fa6a2858-74d5-4d20-9e43-104578d8538c',  '质量监控',  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8')
if not exists(select * from BPMSecurityUserResource where RSID= '2e8a4c68-17ed-420a-aa47-7f2118b0771e')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (6,  '57a3b1f2-f574-4ecf-848a-efa6b0ba3324',  '押金明细',  '2e8a4c68-17ed-420a-aa47-7f2118b0771e')
if not exists(select * from BPMSecurityUserResource where RSID= '326022d4-d616-4d5a-b02b-296406fe0c04')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (9,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  '糖浆质检',  '326022d4-d616-4d5a-b02b-296406fe0c04')
if not exists(select * from BPMSecurityUserResource where RSID= '348e2030-4f4b-46ce-81d3-261dcf89dbc8')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (3,  '04327dd5-58b7-47ad-ab34-608511b2d190',  '糖化日报',  '348e2030-4f4b-46ce-81d3-261dcf89dbc8')
if not exists(select * from BPMSecurityUserResource where RSID= '37d87f06-ffa3-4724-90fa-a5007db9e2b2')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (61, null,  '水发门户',  '37d87f06-ffa3-4724-90fa-a5007db9e2b2')
if not exists(select * from BPMSecurityUserResource where RSID= '3959779d-c619-45c9-b0cf-1d8270163fc5')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (3,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  '成品酒质检',  '3959779d-c619-45c9-b0cf-1d8270163fc5')
if not exists(select * from BPMSecurityUserResource where RSID= '3a0c58ec-f240-4584-9024-1470156a9a7c')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10,  'd2871cb2-415b-40cb-9ed8-7dcb8d8c9283',  '安全组',  '3a0c58ec-f240-4584-9024-1470156a9a7c')
if not exists(select * from BPMSecurityUserResource where RSID= '3a42d239-6a59-4ff7-9ad9-d7d77859528b')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (4,  '04327dd5-58b7-47ad-ab34-608511b2d190',  '产成品库存查询',  '3a42d239-6a59-4ff7-9ad9-d7d77859528b')
if not exists(select * from BPMSecurityUserResource where RSID= '3c06362f-8667-4ddb-a739-203612e854e2')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (2,  'cb055424-0535-4af4-abaa-e4f55d7ef5fd',  '供应商信息',  '3c06362f-8667-4ddb-a739-203612e854e2')
if not exists(select * from BPMSecurityUserResource where RSID= '4284d710-9839-425f-ba8f-6762da0f0c4c')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (1,  'f91f17a2-aa6f-4def-8699-bbac9214e00d',  '物料出库',  '4284d710-9839-425f-ba8f-6762da0f0c4c')
if not exists(select * from BPMSecurityUserResource where RSID= '49f6f78b-8706-4ac3-a8de-b3ce0188f08b')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (30, null,  '业务门户',  '49f6f78b-8706-4ac3-a8de-b3ce0188f08b')
if not exists(select * from BPMSecurityUserResource where RSID= '4d29323a-a1b2-4454-a3f5-7098689cbebd')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (1,  'cb055424-0535-4af4-abaa-e4f55d7ef5fd',  '仓库管理',  '4d29323a-a1b2-4454-a3f5-7098689cbebd')
if not exists(select * from BPMSecurityUserResource where RSID= '4d7c6cff-838b-4729-b04f-19e346c8e986')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (4,  'f91f17a2-aa6f-4def-8699-bbac9214e00d',  '产成品入库',  '4d7c6cff-838b-4729-b04f-19e346c8e986')
if not exists(select * from BPMSecurityUserResource where RSID= '5199d7f8-6a19-49da-ad7c-784b7d4a8788')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (20,  '997d1aef-d5c1-4645-a7ef-b39f1b06e1a4',  '报表',  '5199d7f8-6a19-49da-ad7c-784b7d4a8788')
if not exists(select * from BPMSecurityUserResource where RSID= '52081dfe-db6c-4de8-8023-3030d82dca85')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (6,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  'PU质检',  '52081dfe-db6c-4de8-8023-3030d82dca85')
if not exists(select * from BPMSecurityUserResource where RSID= '52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (0,  'cb055424-0535-4af4-abaa-e4f55d7ef5fd',  '物料信息',  '52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6')
if not exists(select * from BPMSecurityUserResource where RSID= '56f24c1b-dea4-45a8-ab6b-c04eca9e56a4')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (5,  'f91f17a2-aa6f-4def-8699-bbac9214e00d',  '产成品出库',  '56f24c1b-dea4-45a8-ab6b-c04eca9e56a4')
if not exists(select * from BPMSecurityUserResource where RSID= '57a3b1f2-f574-4ecf-848a-efa6b0ba3324')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (2,  '37d87f06-ffa3-4724-90fa-a5007db9e2b2',  '销售管理',  '57a3b1f2-f574-4ecf-848a-efa6b0ba3324')
if not exists(select * from BPMSecurityUserResource where RSID= '5b01216f-ab01-43a9-a4c5-a97f29802c5d')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (4,  'cb055424-0535-4af4-abaa-e4f55d7ef5fd',  '销售员信息',  '5b01216f-ab01-43a9-a4c5-a97f29802c5d')
if not exists(select * from BPMSecurityUserResource where RSID= '5c5b95ae-a510-4a70-b2bf-8b2c407c4316')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (1,  '37d87f06-ffa3-4724-90fa-a5007db9e2b2',  '采购管理',  '5c5b95ae-a510-4a70-b2bf-8b2c407c4316')
if not exists(select * from BPMSecurityUserResource where RSID= '5fa20260-5340-4398-bee0-5415c98a3155')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (30,  '997d1aef-d5c1-4645-a7ef-b39f1b06e1a4',  'BPA',  '5fa20260-5340-4398-bee0-5415c98a3155')
if not exists(select * from BPMSecurityUserResource where RSID= '608201db-99f2-4b37-8f58-5e9523375688')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (20,  'bd4a0c6f-f717-4879-bddb-c52b5cd051bc',  '集成管理',  '608201db-99f2-4b37-8f58-5e9523375688')
if not exists(select * from BPMSecurityUserResource where RSID= '60ebc75b-3f26-45c6-b8b9-42c00b81cf5e')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (7,  '57a3b1f2-f574-4ecf-848a-efa6b0ba3324',  '发票登记',  '60ebc75b-3f26-45c6-b8b9-42c00b81cf5e')
if not exists(select * from BPMSecurityUserResource where RSID= '61a87ecb-7a91-4d5e-93ae-af494a183fb7')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (2,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  '糖化分析质检',  '61a87ecb-7a91-4d5e-93ae-af494a183fb7')
if not exists(select * from BPMSecurityUserResource where RSID= '65b6de93-a553-44d6-a26d-0434ae7ca129')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (0,  '57a3b1f2-f574-4ecf-848a-efa6b0ba3324',  '销售订单',  '65b6de93-a553-44d6-a26d-0434ae7ca129')
if not exists(select * from BPMSecurityUserResource where RSID= '719fdbe8-3172-4078-a33e-199db75b9b40')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (60,  'bd4a0c6f-f717-4879-bddb-c52b5cd051bc',  '访问控制',  '719fdbe8-3172-4078-a33e-199db75b9b40')
if not exists(select * from BPMSecurityUserResource where RSID= '71e3df38-475f-40fc-b0a1-9ad23494a7f5')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (40, null,  '运维门户',  '71e3df38-475f-40fc-b0a1-9ad23494a7f5')
if not exists(select * from BPMSecurityUserResource where RSID= '725cdb22-1f96-4535-99ff-6e627cd2bf88')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (50,  'd783ae40-f57c-4209-bbc5-bf01ae913854',  '流程测试',  '725cdb22-1f96-4535-99ff-6e627cd2bf88')
if not exists(select * from BPMSecurityUserResource where RSID= '738e63d0-3f13-4fb5-a5ee-0785f0a48487')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (1,  '04327dd5-58b7-47ad-ab34-608511b2d190',  '过滤酒损',  '738e63d0-3f13-4fb5-a5ee-0785f0a48487')
if not exists(select * from BPMSecurityUserResource where RSID= '7631a828-55f0-439b-8acf-551d0ce3dfce')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (20,  'd783ae40-f57c-4209-bbc5-bf01ae913854',  '流程库',  '7631a828-55f0-439b-8acf-551d0ce3dfce')
if not exists(select * from BPMSecurityUserResource where RSID= '78654e0c-fa23-406d-a872-4eb18c59e718')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (20,  '71e3df38-475f-40fc-b0a1-9ad23494a7f5',  '组织',  '78654e0c-fa23-406d-a872-4eb18c59e718')
if not exists(select * from BPMSecurityUserResource where RSID= '79d908fa-22c5-4e3f-ade2-657daa736fa8')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (6,  'f91f17a2-aa6f-4def-8699-bbac9214e00d',  '产成品库存查询',  '79d908fa-22c5-4e3f-ade2-657daa736fa8')
if not exists(select * from BPMSecurityUserResource where RSID= '7e369e7c-6cbc-4ae8-acb4-7ee0fe343fa2')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (4,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  '溶解氧质检',  '7e369e7c-6cbc-4ae8-acb4-7ee0fe343fa2')
if not exists(select * from BPMSecurityUserResource where RSID= '8401ac95-ffd4-4121-acf7-08e967acc922')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (5,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  '双乙酰数据',  '8401ac95-ffd4-4121-acf7-08e967acc922')
if not exists(select * from BPMSecurityUserResource where RSID= '865a3261-dcd6-4f99-8739-f591eed7837d')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  '二氧化碳检验',  '865a3261-dcd6-4f99-8739-f591eed7837d')
if not exists(select * from BPMSecurityUserResource where RSID= '87465539-60a2-4ac8-89c5-43529a525c9f')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (5,  '5c5b95ae-a510-4a70-b2bf-8b2c407c4316',  '到货入库',  '87465539-60a2-4ac8-89c5-43529a525c9f')
if not exists(select * from BPMSecurityUserResource where RSID= '8dddb435-f7db-43dd-a42d-dd29b8f4601c')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (2,  '04327dd5-58b7-47ad-ab34-608511b2d190',  '包装车间',  '8dddb435-f7db-43dd-a42d-dd29b8f4601c')
if not exists(select * from BPMSecurityUserResource where RSID= '8f519421-6ea1-4087-bfbb-8d243786b085')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (6,  '5c5b95ae-a510-4a70-b2bf-8b2c407c4316',  '检测化验',  '8f519421-6ea1-4087-bfbb-8d243786b085')
if not exists(select * from BPMSecurityUserResource where RSID= '92332b40-bc8c-46f5-b427-d2fc6a12804f')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10,  'cf261f02-3bbe-4ea1-b01b-95c19f850794',  '移动设备',  '92332b40-bc8c-46f5-b427-d2fc6a12804f')
if not exists(select * from BPMSecurityUserResource where RSID= '997d1aef-d5c1-4645-a7ef-b39f1b06e1a4')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10, null,  '流程门户',  '997d1aef-d5c1-4645-a7ef-b39f1b06e1a4')
if not exists(select * from BPMSecurityUserResource where RSID= 'a0b8cb11-8736-4d17-8840-91fdc2b6230a')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (8,  '57a3b1f2-f574-4ecf-848a-efa6b0ba3324',  '发货明细',  'a0b8cb11-8736-4d17-8840-91fdc2b6230a')
if not exists(select * from BPMSecurityUserResource where RSID= 'aa016f07-c991-4803-ad17-e8c8f44dbcbd')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (2,  'f91f17a2-aa6f-4def-8699-bbac9214e00d',  '物料盘存',  'aa016f07-c991-4803-ad17-e8c8f44dbcbd')
if not exists(select * from BPMSecurityUserResource where RSID= 'ac73842c-163f-4a9a-b862-2ee2eb7dc0e2')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (40,  'd783ae40-f57c-4209-bbc5-bf01ae913854',  '工作日历',  'ac73842c-163f-4a9a-b862-2ee2eb7dc0e2')
if not exists(select * from BPMSecurityUserResource where RSID= 'ad88c9a5-58a9-4718-af38-0ad23a28d0af')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (3,  'f91f17a2-aa6f-4def-8699-bbac9214e00d',  '库存明细',  'ad88c9a5-58a9-4718-af38-0ad23a28d0af')
if not exists(select * from BPMSecurityUserResource where RSID= 'afb5a2b3-85f2-4105-8df7-21b4586f4f29')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (40,  '71e3df38-475f-40fc-b0a1-9ad23494a7f5',  '监控',  'afb5a2b3-85f2-4105-8df7-21b4586f4f29')
if not exists(select * from BPMSecurityUserResource where RSID= 'afea2fa9-de8e-438c-b784-839bdcd32139')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (30,  'd783ae40-f57c-4209-bbc5-bf01ae913854',  '表单库',  'afea2fa9-de8e-438c-b784-839bdcd32139')
if not exists(select * from BPMSecurityUserResource where RSID= 'b013a43e-7bf9-49de-a916-05827f0c83ac')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (9,  '57a3b1f2-f574-4ecf-848a-efa6b0ba3324',  '汇款明细',  'b013a43e-7bf9-49de-a916-05827f0c83ac')
if not exists(select * from BPMSecurityUserResource where RSID= 'b3facb0b-67be-4373-b187-17066caf95d2')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (0,  'f91f17a2-aa6f-4def-8699-bbac9214e00d',  '物料退库',  'b3facb0b-67be-4373-b187-17066caf95d2')
if not exists(select * from BPMSecurityUserResource where RSID= 'bcf56c0a-54ae-489f-8883-4a2f64604e6d')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (20,  '608201db-99f2-4b37-8f58-5e9523375688',  'ESB',  'bcf56c0a-54ae-489f-8883-4a2f64604e6d')
if not exists(select * from BPMSecurityUserResource where RSID= 'bd4a0c6f-f717-4879-bddb-c52b5cd051bc')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (50, null,  '后台管理',  'bd4a0c6f-f717-4879-bddb-c52b5cd051bc')
if not exists(select * from BPMSecurityUserResource where RSID= 'c0ab08aa-f20b-4333-9288-948b2266ee8c')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (0,  '5c5b95ae-a510-4a70-b2bf-8b2c407c4316',  '采购计划',  'c0ab08aa-f20b-4333-9288-948b2266ee8c')
if not exists(select * from BPMSecurityUserResource where RSID= 'c1bc6e2a-87ee-4836-b2dc-b7d17352e7f1')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (3,  'cb055424-0535-4af4-abaa-e4f55d7ef5fd',  '经销商信息',  'c1bc6e2a-87ee-4836-b2dc-b7d17352e7f1')
if not exists(select * from BPMSecurityUserResource where RSID= 'c6fe7eb1-971b-4463-bfaf-995bd10c8244')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (60, null,  '流程梳理',  'c6fe7eb1-971b-4463-bfaf-995bd10c8244')
if not exists(select * from BPMSecurityUserResource where RSID= 'c973ecb4-e90f-477e-bcf3-13dbf59ca5e1')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10,  '608201db-99f2-4b37-8f58-5e9523375688',  '通用数据源',  'c973ecb4-e90f-477e-bcf3-13dbf59ca5e1')
if not exists(select * from BPMSecurityUserResource where RSID= 'cb055424-0535-4af4-abaa-e4f55d7ef5fd')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (5,  '37d87f06-ffa3-4724-90fa-a5007db9e2b2',  '基础数据',  'cb055424-0535-4af4-abaa-e4f55d7ef5fd')
if not exists(select * from BPMSecurityUserResource where RSID= 'cc0d778c-23be-4dfd-b1cb-d88433e0116a')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (60, null,  '开发学习',  'cc0d778c-23be-4dfd-b1cb-d88433e0116a')
if not exists(select * from BPMSecurityUserResource where RSID= 'cf261f02-3bbe-4ea1-b01b-95c19f850794')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (30,  'bd4a0c6f-f717-4879-bddb-c52b5cd051bc',  '移动管理',  'cf261f02-3bbe-4ea1-b01b-95c19f850794')
if not exists(select * from BPMSecurityUserResource where RSID= 'd0ebfcf9-0007-44b3-b218-ef94628de67e')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10,  'ae77e96c-7d5f-4332-b9ad-1b90ada27118',  '设备管理',  'd0ebfcf9-0007-44b3-b218-ef94628de67e')
if not exists(select * from BPMSecurityUserResource where RSID= 'd2871cb2-415b-40cb-9ed8-7dcb8d8c9283')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (70,  'bd4a0c6f-f717-4879-bddb-c52b5cd051bc',  '系统管理',  'd2871cb2-415b-40cb-9ed8-7dcb8d8c9283')
if not exists(select * from BPMSecurityUserResource where RSID= 'd2c8e9fc-0697-4345-86a4-160007fd7ec3')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10,  '71e3df38-475f-40fc-b0a1-9ad23494a7f5',  '运维',  'd2c8e9fc-0697-4345-86a4-160007fd7ec3')
if not exists(select * from BPMSecurityUserResource where RSID= 'd783ae40-f57c-4209-bbc5-bf01ae913854')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10,  'bd4a0c6f-f717-4879-bddb-c52b5cd051bc',  '流程建模',  'd783ae40-f57c-4209-bbc5-bf01ae913854')
if not exists(select * from BPMSecurityUserResource where RSID= 'd7c0a77c-72c0-4b6f-9869-a4ac29a86b69')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (4,  '57a3b1f2-f574-4ecf-848a-efa6b0ba3324',  '订单发货',  'd7c0a77c-72c0-4b6f-9869-a4ac29a86b69')
if not exists(select * from BPMSecurityUserResource where RSID= 'dd82286f-627e-4312-89f1-c396e5489b01')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (8,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  '啤酒花检验',  'dd82286f-627e-4312-89f1-c396e5489b01')
if not exists(select * from BPMSecurityUserResource where RSID= 'e026627d-3e64-4bc4-8a63-df188aa10515')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (4,  '5c5b95ae-a510-4a70-b2bf-8b2c407c4316',  '我的任务（集团）',  'e026627d-3e64-4bc4-8a63-df188aa10515')
if not exists(select * from BPMSecurityUserResource where RSID= 'e52e8214-6e6e-4132-9873-d33a54eb977d')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (10,  '997d1aef-d5c1-4645-a7ef-b39f1b06e1a4',  '流程',  'e52e8214-6e6e-4132-9873-d33a54eb977d')
if not exists(select * from BPMSecurityUserResource where RSID= 'e98e2489-6cf5-4d13-a309-596ee252d013')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (40,  '997d1aef-d5c1-4645-a7ef-b39f1b06e1a4',  '个人',  'e98e2489-6cf5-4d13-a309-596ee252d013')
if not exists(select * from BPMSecurityUserResource where RSID= 'ef2acf37-e479-4936-a7af-1e87a7d999ed')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (1,  '2d1d2410-31da-4a8e-aafe-71cb4f35b5c8',  '清酒质检',  'ef2acf37-e479-4936-a7af-1e87a7d999ed')
if not exists(select * from BPMSecurityUserResource where RSID= 'f91f17a2-aa6f-4def-8699-bbac9214e00d')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (4,  '37d87f06-ffa3-4724-90fa-a5007db9e2b2',  '库存管理',  'f91f17a2-aa6f-4def-8699-bbac9214e00d')
if not exists(select * from BPMSecurityUserResource where RSID= 'fa6a2858-74d5-4d20-9e43-104578d8538c')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (3,  '37d87f06-ffa3-4724-90fa-a5007db9e2b2',  '生产管理',  'fa6a2858-74d5-4d20-9e43-104578d8538c')
if not exists(select * from BPMSecurityUserResource where RSID= 'fe0f4277-6d34-4df2-aa21-7b913aed208d')
  insert into BPMSecurityUserResource ( OrderIndex,ParentRSID,ResourceName,RSID ) values 
  (20, null,  '协同门户',  'fe0f4277-6d34-4df2-aa21-7b913aed208d')

GO

truncate table BPMSecurityUserResourcePerm
/*======================= table data: BPMSecurityUserResourcePerm ========================*/
print 'dbo.BPMSecurityUserResourcePerm data...' 
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','04327dd5-58b7-47ad-ab34-608511b2d190')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','04327dd5-58b7-47ad-ab34-608511b2d190')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','04327dd5-58b7-47ad-ab34-608511b2d190')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','04327dd5-58b7-47ad-ab34-608511b2d190')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','04327dd5-58b7-47ad-ab34-608511b2d190')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','04327dd5-58b7-47ad-ab34-608511b2d190')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','08c9ac55-db78-498c-b34e-53c1a033bbcd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','08c9ac55-db78-498c-b34e-53c1a033bbcd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','08c9ac55-db78-498c-b34e-53c1a033bbcd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','08e56d79-57d9-4a26-a48c-47a3d91a9e44')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','08e56d79-57d9-4a26-a48c-47a3d91a9e44')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','08e56d79-57d9-4a26-a48c-47a3d91a9e44')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','08e56d79-57d9-4a26-a48c-47a3d91a9e44')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','08e56d79-57d9-4a26-a48c-47a3d91a9e44')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','08e56d79-57d9-4a26-a48c-47a3d91a9e44')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','0dfe13ee-66ae-4af1-aa7e-b919ceb79135')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','0dfe13ee-66ae-4af1-aa7e-b919ceb79135')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','0dfe13ee-66ae-4af1-aa7e-b919ceb79135')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','0e32f172-b084-40c3-8153-5ecb5436b4e8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','1439c8f5-e410-4262-b69b-6402bf86a79b')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','194399e5-ac94-424b-9923-47ee406febe8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','194399e5-ac94-424b-9923-47ee406febe8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','194399e5-ac94-424b-9923-47ee406febe8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','194399e5-ac94-424b-9923-47ee406febe8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','194399e5-ac94-424b-9923-47ee406febe8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','194399e5-ac94-424b-9923-47ee406febe8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','1df9d8a7-6c33-416e-aa53-0dcee003b414')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','1df9d8a7-6c33-416e-aa53-0dcee003b414')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','1df9d8a7-6c33-416e-aa53-0dcee003b414')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','1df9d8a7-6c33-416e-aa53-0dcee003b414')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','1f537a3f-564f-4b94-a39e-592f6d601577')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','1f537a3f-564f-4b94-a39e-592f6d601577')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','1f537a3f-564f-4b94-a39e-592f6d601577')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','1f537a3f-564f-4b94-a39e-592f6d601577')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','24299805-6e7a-4ca7-9191-0fe2569652d8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','24299805-6e7a-4ca7-9191-0fe2569652d8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','24299805-6e7a-4ca7-9191-0fe2569652d8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','24299805-6e7a-4ca7-9191-0fe2569652d8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','24299805-6e7a-4ca7-9191-0fe2569652d8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','24299805-6e7a-4ca7-9191-0fe2569652d8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','25a9de61-fc9f-45df-8d99-2f8279b5a1e6')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','2694420f-a074-446c-bdf3-72dae1920298')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','2c2b5525-62ed-47b2-85a0-583d56876c36')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','2d1d2410-31da-4a8e-aafe-71cb4f35b5c8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','2d1d2410-31da-4a8e-aafe-71cb4f35b5c8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','2d1d2410-31da-4a8e-aafe-71cb4f35b5c8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','2d1d2410-31da-4a8e-aafe-71cb4f35b5c8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','2d1d2410-31da-4a8e-aafe-71cb4f35b5c8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','2d1d2410-31da-4a8e-aafe-71cb4f35b5c8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','2e8a4c68-17ed-420a-aa47-7f2118b0771e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','2e8a4c68-17ed-420a-aa47-7f2118b0771e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','2e8a4c68-17ed-420a-aa47-7f2118b0771e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','2e8a4c68-17ed-420a-aa47-7f2118b0771e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','2e8a4c68-17ed-420a-aa47-7f2118b0771e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','2e8a4c68-17ed-420a-aa47-7f2118b0771e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','326022d4-d616-4d5a-b02b-296406fe0c04')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','326022d4-d616-4d5a-b02b-296406fe0c04')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','326022d4-d616-4d5a-b02b-296406fe0c04')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','326022d4-d616-4d5a-b02b-296406fe0c04')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','326022d4-d616-4d5a-b02b-296406fe0c04')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','326022d4-d616-4d5a-b02b-296406fe0c04')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','348e2030-4f4b-46ce-81d3-261dcf89dbc8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','348e2030-4f4b-46ce-81d3-261dcf89dbc8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','348e2030-4f4b-46ce-81d3-261dcf89dbc8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','37d87f06-ffa3-4724-90fa-a5007db9e2b2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','3959779d-c619-45c9-b0cf-1d8270163fc5')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','3959779d-c619-45c9-b0cf-1d8270163fc5')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','3959779d-c619-45c9-b0cf-1d8270163fc5')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','3959779d-c619-45c9-b0cf-1d8270163fc5')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','3959779d-c619-45c9-b0cf-1d8270163fc5')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','3959779d-c619-45c9-b0cf-1d8270163fc5')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','3a0c58ec-f240-4584-9024-1470156a9a7c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','3a42d239-6a59-4ff7-9ad9-d7d77859528b')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','3a42d239-6a59-4ff7-9ad9-d7d77859528b')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','3a42d239-6a59-4ff7-9ad9-d7d77859528b')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','3c06362f-8667-4ddb-a739-203612e854e2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','3c06362f-8667-4ddb-a739-203612e854e2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','3c06362f-8667-4ddb-a739-203612e854e2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','3c06362f-8667-4ddb-a739-203612e854e2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','3c06362f-8667-4ddb-a739-203612e854e2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','3c06362f-8667-4ddb-a739-203612e854e2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','4284d710-9839-425f-ba8f-6762da0f0c4c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','4284d710-9839-425f-ba8f-6762da0f0c4c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','4284d710-9839-425f-ba8f-6762da0f0c4c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','4284d710-9839-425f-ba8f-6762da0f0c4c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','49f6f78b-8706-4ac3-a8de-b3ce0188f08b')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','4d29323a-a1b2-4454-a3f5-7098689cbebd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','4d29323a-a1b2-4454-a3f5-7098689cbebd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','4d29323a-a1b2-4454-a3f5-7098689cbebd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','4d29323a-a1b2-4454-a3f5-7098689cbebd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','4d29323a-a1b2-4454-a3f5-7098689cbebd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','4d29323a-a1b2-4454-a3f5-7098689cbebd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','4d7c6cff-838b-4729-b04f-19e346c8e986')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','4d7c6cff-838b-4729-b04f-19e346c8e986')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','4d7c6cff-838b-4729-b04f-19e346c8e986')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','4d7c6cff-838b-4729-b04f-19e346c8e986')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','4d7c6cff-838b-4729-b04f-19e346c8e986')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','4d7c6cff-838b-4729-b04f-19e346c8e986')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','5199d7f8-6a19-49da-ad7c-784b7d4a8788')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','52081dfe-db6c-4de8-8023-3030d82dca85')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','52081dfe-db6c-4de8-8023-3030d82dca85')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','52081dfe-db6c-4de8-8023-3030d82dca85')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','52081dfe-db6c-4de8-8023-3030d82dca85')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','52081dfe-db6c-4de8-8023-3030d82dca85')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','52081dfe-db6c-4de8-8023-3030d82dca85')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','56f24c1b-dea4-45a8-ab6b-c04eca9e56a4')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','56f24c1b-dea4-45a8-ab6b-c04eca9e56a4')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','56f24c1b-dea4-45a8-ab6b-c04eca9e56a4')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','56f24c1b-dea4-45a8-ab6b-c04eca9e56a4')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','56f24c1b-dea4-45a8-ab6b-c04eca9e56a4')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','56f24c1b-dea4-45a8-ab6b-c04eca9e56a4')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','57a3b1f2-f574-4ecf-848a-efa6b0ba3324')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','57a3b1f2-f574-4ecf-848a-efa6b0ba3324')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','57a3b1f2-f574-4ecf-848a-efa6b0ba3324')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','5b01216f-ab01-43a9-a4c5-a97f29802c5d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','5b01216f-ab01-43a9-a4c5-a97f29802c5d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','5b01216f-ab01-43a9-a4c5-a97f29802c5d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','5b01216f-ab01-43a9-a4c5-a97f29802c5d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','5b01216f-ab01-43a9-a4c5-a97f29802c5d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','5b01216f-ab01-43a9-a4c5-a97f29802c5d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','5c5b95ae-a510-4a70-b2bf-8b2c407c4316')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','5c5b95ae-a510-4a70-b2bf-8b2c407c4316')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','5c5b95ae-a510-4a70-b2bf-8b2c407c4316')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','5fa20260-5340-4398-bee0-5415c98a3155')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','5fae8abe-272e-4afc-8cad-8b2ab6455ca7')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','608201db-99f2-4b37-8f58-5e9523375688')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','60ebc75b-3f26-45c6-b8b9-42c00b81cf5e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','60ebc75b-3f26-45c6-b8b9-42c00b81cf5e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','60ebc75b-3f26-45c6-b8b9-42c00b81cf5e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','60ebc75b-3f26-45c6-b8b9-42c00b81cf5e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','60ebc75b-3f26-45c6-b8b9-42c00b81cf5e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','60ebc75b-3f26-45c6-b8b9-42c00b81cf5e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','61a87ecb-7a91-4d5e-93ae-af494a183fb7')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','61a87ecb-7a91-4d5e-93ae-af494a183fb7')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','61a87ecb-7a91-4d5e-93ae-af494a183fb7')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','61a87ecb-7a91-4d5e-93ae-af494a183fb7')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','61a87ecb-7a91-4d5e-93ae-af494a183fb7')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','61a87ecb-7a91-4d5e-93ae-af494a183fb7')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','65b6de93-a553-44d6-a26d-0434ae7ca129')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','65b6de93-a553-44d6-a26d-0434ae7ca129')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','65b6de93-a553-44d6-a26d-0434ae7ca129')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','65b6de93-a553-44d6-a26d-0434ae7ca129')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','719fdbe8-3172-4078-a33e-199db75b9b40')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','71e3df38-475f-40fc-b0a1-9ad23494a7f5')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','725cdb22-1f96-4535-99ff-6e627cd2bf88')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','738e63d0-3f13-4fb5-a5ee-0785f0a48487')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','738e63d0-3f13-4fb5-a5ee-0785f0a48487')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','738e63d0-3f13-4fb5-a5ee-0785f0a48487')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','738e63d0-3f13-4fb5-a5ee-0785f0a48487')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','738e63d0-3f13-4fb5-a5ee-0785f0a48487')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','738e63d0-3f13-4fb5-a5ee-0785f0a48487')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','7631a828-55f0-439b-8acf-551d0ce3dfce')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','78654e0c-fa23-406d-a872-4eb18c59e718')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','79d908fa-22c5-4e3f-ade2-657daa736fa8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','79d908fa-22c5-4e3f-ade2-657daa736fa8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','79d908fa-22c5-4e3f-ade2-657daa736fa8')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','7e369e7c-6cbc-4ae8-acb4-7ee0fe343fa2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','7e369e7c-6cbc-4ae8-acb4-7ee0fe343fa2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','7e369e7c-6cbc-4ae8-acb4-7ee0fe343fa2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','7e369e7c-6cbc-4ae8-acb4-7ee0fe343fa2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','7e369e7c-6cbc-4ae8-acb4-7ee0fe343fa2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','7e369e7c-6cbc-4ae8-acb4-7ee0fe343fa2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','8401ac95-ffd4-4121-acf7-08e967acc922')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','8401ac95-ffd4-4121-acf7-08e967acc922')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','8401ac95-ffd4-4121-acf7-08e967acc922')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','8401ac95-ffd4-4121-acf7-08e967acc922')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','8401ac95-ffd4-4121-acf7-08e967acc922')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','8401ac95-ffd4-4121-acf7-08e967acc922')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','865a3261-dcd6-4f99-8739-f591eed7837d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','865a3261-dcd6-4f99-8739-f591eed7837d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','865a3261-dcd6-4f99-8739-f591eed7837d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','865a3261-dcd6-4f99-8739-f591eed7837d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','865a3261-dcd6-4f99-8739-f591eed7837d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','865a3261-dcd6-4f99-8739-f591eed7837d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','87465539-60a2-4ac8-89c5-43529a525c9f')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','87465539-60a2-4ac8-89c5-43529a525c9f')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','87465539-60a2-4ac8-89c5-43529a525c9f')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','8dddb435-f7db-43dd-a42d-dd29b8f4601c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','8dddb435-f7db-43dd-a42d-dd29b8f4601c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','8dddb435-f7db-43dd-a42d-dd29b8f4601c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','8f519421-6ea1-4087-bfbb-8d243786b085')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','8f519421-6ea1-4087-bfbb-8d243786b085')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','8f519421-6ea1-4087-bfbb-8d243786b085')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','8f519421-6ea1-4087-bfbb-8d243786b085')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','8f519421-6ea1-4087-bfbb-8d243786b085')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','8f519421-6ea1-4087-bfbb-8d243786b085')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','92332b40-bc8c-46f5-b427-d2fc6a12804f')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','997d1aef-d5c1-4645-a7ef-b39f1b06e1a4')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','a0b8cb11-8736-4d17-8840-91fdc2b6230a')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','a0b8cb11-8736-4d17-8840-91fdc2b6230a')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','a0b8cb11-8736-4d17-8840-91fdc2b6230a')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','a0b8cb11-8736-4d17-8840-91fdc2b6230a')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','a0b8cb11-8736-4d17-8840-91fdc2b6230a')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','a0b8cb11-8736-4d17-8840-91fdc2b6230a')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','aa016f07-c991-4803-ad17-e8c8f44dbcbd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','aa016f07-c991-4803-ad17-e8c8f44dbcbd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','aa016f07-c991-4803-ad17-e8c8f44dbcbd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','aa016f07-c991-4803-ad17-e8c8f44dbcbd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','ac73842c-163f-4a9a-b862-2ee2eb7dc0e2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','ad88c9a5-58a9-4718-af38-0ad23a28d0af')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','ad88c9a5-58a9-4718-af38-0ad23a28d0af')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','ad88c9a5-58a9-4718-af38-0ad23a28d0af')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','ae77e96c-7d5f-4332-b9ad-1b90ada27118')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','afb5a2b3-85f2-4105-8df7-21b4586f4f29')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','afea2fa9-de8e-438c-b784-839bdcd32139')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','b013a43e-7bf9-49de-a916-05827f0c83ac')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','b013a43e-7bf9-49de-a916-05827f0c83ac')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','b013a43e-7bf9-49de-a916-05827f0c83ac')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','b013a43e-7bf9-49de-a916-05827f0c83ac')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','b013a43e-7bf9-49de-a916-05827f0c83ac')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','b013a43e-7bf9-49de-a916-05827f0c83ac')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','b3facb0b-67be-4373-b187-17066caf95d2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','b3facb0b-67be-4373-b187-17066caf95d2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','b3facb0b-67be-4373-b187-17066caf95d2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','b3facb0b-67be-4373-b187-17066caf95d2')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','bcf56c0a-54ae-489f-8883-4a2f64604e6d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','bd4a0c6f-f717-4879-bddb-c52b5cd051bc')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','c0ab08aa-f20b-4333-9288-948b2266ee8c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','c0ab08aa-f20b-4333-9288-948b2266ee8c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','c0ab08aa-f20b-4333-9288-948b2266ee8c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','c0ab08aa-f20b-4333-9288-948b2266ee8c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','c0ab08aa-f20b-4333-9288-948b2266ee8c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','c0ab08aa-f20b-4333-9288-948b2266ee8c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','c1bc6e2a-87ee-4836-b2dc-b7d17352e7f1')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','c1bc6e2a-87ee-4836-b2dc-b7d17352e7f1')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','c1bc6e2a-87ee-4836-b2dc-b7d17352e7f1')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','c1bc6e2a-87ee-4836-b2dc-b7d17352e7f1')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','c1bc6e2a-87ee-4836-b2dc-b7d17352e7f1')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','c1bc6e2a-87ee-4836-b2dc-b7d17352e7f1')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','c6fe7eb1-971b-4463-bfaf-995bd10c8244')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','c973ecb4-e90f-477e-bcf3-13dbf59ca5e1')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','cb055424-0535-4af4-abaa-e4f55d7ef5fd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','cb055424-0535-4af4-abaa-e4f55d7ef5fd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','cb055424-0535-4af4-abaa-e4f55d7ef5fd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','cb055424-0535-4af4-abaa-e4f55d7ef5fd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','cb055424-0535-4af4-abaa-e4f55d7ef5fd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','cb055424-0535-4af4-abaa-e4f55d7ef5fd')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','cc0d778c-23be-4dfd-b1cb-d88433e0116a')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','cf261f02-3bbe-4ea1-b01b-95c19f850794')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','d0ebfcf9-0007-44b3-b218-ef94628de67e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'记录查看','RecordRead','Record','d0ebfcf9-0007-44b3-b218-ef94628de67e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'新增','New','Module','d0ebfcf9-0007-44b3-b218-ef94628de67e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'编辑','Edit','Record','d0ebfcf9-0007-44b3-b218-ef94628de67e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'删除','Delete','Record','d0ebfcf9-0007-44b3-b218-ef94628de67e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'公开','Public','Record','d0ebfcf9-0007-44b3-b218-ef94628de67e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',6,'授权','AssignPerm','Record','d0ebfcf9-0007-44b3-b218-ef94628de67e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','d127e087-f1f8-4650-80a6-b8468821330e')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','d2871cb2-415b-40cb-9ed8-7dcb8d8c9283')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','d2c8e9fc-0697-4345-86a4-160007fd7ec3')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','d783ae40-f57c-4209-bbc5-bf01ae913854')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','d7c0a77c-72c0-4b6f-9869-a4ac29a86b69')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','d7c0a77c-72c0-4b6f-9869-a4ac29a86b69')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','d7c0a77c-72c0-4b6f-9869-a4ac29a86b69')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','dd82286f-627e-4312-89f1-c396e5489b01')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','dd82286f-627e-4312-89f1-c396e5489b01')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','dd82286f-627e-4312-89f1-c396e5489b01')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','dd82286f-627e-4312-89f1-c396e5489b01')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','dd82286f-627e-4312-89f1-c396e5489b01')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','dd82286f-627e-4312-89f1-c396e5489b01')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','e026627d-3e64-4bc4-8a63-df188aa10515')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','e026627d-3e64-4bc4-8a63-df188aa10515')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','e026627d-3e64-4bc4-8a63-df188aa10515')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','e52e8214-6e6e-4132-9873-d33a54eb977d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','e9570a9d-5362-4d58-99d8-2bd7c5685c5c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','e98e2489-6cf5-4d13-a309-596ee252d013')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','ef2acf37-e479-4936-a7af-1e87a7d999ed')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','ef2acf37-e479-4936-a7af-1e87a7d999ed')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','ef2acf37-e479-4936-a7af-1e87a7d999ed')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',3,'新增','New','Module','ef2acf37-e479-4936-a7af-1e87a7d999ed')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',4,'修改','Edit','Module','ef2acf37-e479-4936-a7af-1e87a7d999ed')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',5,'删除','Delete','Module','ef2acf37-e479-4936-a7af-1e87a7d999ed')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','f91f17a2-aa6f-4def-8699-bbac9214e00d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','f91f17a2-aa6f-4def-8699-bbac9214e00d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','f91f17a2-aa6f-4def-8699-bbac9214e00d')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'访问','Execute','Module','fa6a2858-74d5-4d20-9e43-104578d8538c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',1,'公司数据','Company','Module','fa6a2858-74d5-4d20-9e43-104578d8538c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',2,'全部数据','Admin','Module','fa6a2858-74d5-4d20-9e43-104578d8538c')
insert into BPMSecurityUserResourcePerm ( LeadershipTokenEnabled,OrderIndex,PermDisplayName,PermName,PermType,RSID ) values 
  ('0',0,'模块访问','Execute','Module','fe0f4277-6d34-4df2-aa21-7b913aed208d')

GO
