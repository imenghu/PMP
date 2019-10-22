delete from inv_inventory_detail where not exists(select 1 from inv_inventory_master where inv_mast_id=inv_inventory_detail.inv_mast_id)
/*==================inv_inventory_detail foreignkey ====================*/
PRINT 'inv_inventory_detail:FK_inv_inventory_detail_inv_inventory_master'
if exists (select * from sysobjects where id = object_id('dbo.FK_inv_inventory_detail_inv_inventory_master') and sysstat & 0xff = 11)
  ALTER table inv_inventory_detail DROP CONSTRAINT FK_inv_inventory_detail_inv_inventory_master
GO
  ALTER table inv_inventory_detail ADD CONSTRAINT FK_inv_inventory_detail_inv_inventory_master FOREIGN KEY ( inv_mast_id ) REFERENCES dbo.inv_inventory_master ( inv_mast_id )
GO
