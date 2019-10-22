delete from sal_order_detail where not exists(select 1 from sal_order_master where order_master_id=sal_order_detail.order_master_id)
/*==================sal_order_detail foreignkey ====================*/
PRINT 'sal_order_detail:FK_sal_order_detail_sal_order_master'
if exists (select * from sysobjects where id = object_id('dbo.FK_sal_order_detail_sal_order_master') and sysstat & 0xff = 11)
  ALTER table sal_order_detail DROP CONSTRAINT FK_sal_order_detail_sal_order_master
GO
  ALTER table sal_order_detail ADD CONSTRAINT FK_sal_order_detail_sal_order_master FOREIGN KEY ( order_master_id ) REFERENCES dbo.sal_order_master ( order_master_id )
GO
