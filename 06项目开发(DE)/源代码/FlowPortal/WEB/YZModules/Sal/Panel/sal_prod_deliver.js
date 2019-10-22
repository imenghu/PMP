Ext.define('YZModules.Sal.Panel.sal_prod_deliver', {
    extend: 'Ext.panel.Panel',
    requires: [
        'YZSoft.bpm.src.ux.FormManager'
    ],
    title: '销售订单',
    layout: 'fit',
    dlgCfg: {
        dlgModel: 'Tab', //Tab,Window,Dialog
        width: 800,
        height: 500
    },

    constructor: function (config) {
        var me = this,
            cfg;

        //调试时显示模块的权限
        //alert(Ext.encode(config.perm));
        me.store = Ext.create('Ext.data.JsonStore', {
            remoteSort: true,
            pageSize: YZSoft.EnvSetting.PageSize.defaultSize,
            model: 'Ext.data.Model',
            sorters: {
                property: 'order_detail_id',
                direction: 'DESC'
            },
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/sal_prod_deliver.ashx'),
                extraParams: {
                    method: 'GetData'
                },
                reader: {
                    rootProperty: 'children'
                }
            }
        });

        me.grid = Ext.create('Ext.grid.Panel', {
            cls: 'yz-border-t',
            store: me.store,
            region: 'center',
            selModel: {
                selType: 'checkboxmodel',
                mode: 'MULTI'
            },
            columns: {
                defaults: {
                },
                items: [
                    { xtype: 'rownumberer' },
                    {
                        header: '公司', dataIndex: 'CompanyName', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '订单号', dataIndex: 'sale_order', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '经销商名称', dataIndex: 'dealer_name', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '收货地址', dataIndex: 'consignee_addr', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '收货人姓名', dataIndex: 'consignee_name', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '收货人电话', dataIndex: 'consignee_tel', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '物料编码', dataIndex: 'mat_code', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '产品名称', dataIndex: 'mat_name', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '规格', dataIndex: 'mat_spesc', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '订单数量', dataIndex: 'order_stnum', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '发货数量', dataIndex: 'deliver_stnum', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '单位', dataIndex: 'order_stnum_unit', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '备注', dataIndex: 'sales_remarks', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '创建时间', dataIndex: 'create_time', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '发货状态', dataIndex: 'deliver_stnum', width: 100, align: 'left', sortable: true, renderer: me.renderStatus
                    },

                    {
                        header: '查看', dataIndex: 'deliver_stnum', width: 80, align: 'left', sortable: true, renderer: me.renderRead, listeners: { scope: me, click: me.onClickRead }
                    },
                                        
                    { header: '操作', dataIndex: 'order_detail_id', width: 80, align: 'center', sortable: true, renderer: me.renderDeliver, listeners: { scope: me, click: me.onClickDeliver } }
                ]
            },
            bbar: Ext.create('Ext.toolbar.Paging', {
                store: me.store,
                displayInfo: true
            }),
            listeners: {
                rowdblclick: function (grid, record, tr, rowIndex, e, eOpts) {
                    me.read(record);
                }
            }
        });

        me.btnExcelExport = Ext.create('YZSoft.src.button.ExcelExportButton', {
            grid: me.grid,
            //templateExcel: YZSoft.$url(me, '设备清单模板.xls'), //导出模板，不设置则按缺省方式导出
            params: {},
            //fileName: '供应商信息',
            allowExportAll: true, //可选项，缺省使用YZSoft.EnvSetting.Excel.AllowExportAll中的设置，默认值false
            //maxExportPages: 10, //可选项，缺省使用YZSoft.EnvSetting.Excel.MaxExportPages中的设置，默认值100
            listeners: {
                beforeload: function (params) {
                    params.ReportDate = new Date()
                }
            }
        });

        cfg = {
            layout: 'border',
            tbar: {
                cls: 'yz-tbar-module',
                items: [
                    me.btnExcelExport,
                    '->',
                    '搜索条件', {
                        xclass: 'YZSoft.src.form.field.Search',
                        store: me.store,
                        width: 220,
                        createSearchPanel: function () {
                            var pnl = Ext.create({
                                xclass: 'YZModules.Sal.Panel.sal_prod_deliver_SearchPanel',
                                region: 'north',
                                store: me.store
                            });

                            me.insert(0, pnl);
                            return pnl;
                        }
                    }]
            },
            items: [me.grid]
        };

        Ext.apply(cfg, config);
        me.callParent([cfg]);
    },

    onActivate: function (times) {
        if (times == 0)
            this.store.load($S.loadMask.first);
        else
            this.store.reload($S.loadMask.activate);
    },
    renderStatus: function (value, metaData, record) {
        debugger;
        var color = "red",
            str = "";
        if (value == 0) {
            color = "gray";
            str = "未发货";
        }
        else {
            color = "green";
            str = "已发货";
        }
        return Ext.String.format("<font color='{0}'>{1}</font>", color, Ext.util.Format.text(str));
    },
    renderNo: function (value, metaData, record) {
        return Ext.String.format("<a href='#'>{0}</a>", Ext.util.Format.text(value));
    },
    onClickRead: function (view, cell, recordIndex, cellIndex, e, rec) {
        var me = this;
        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sal/sal_prod_deliver_read', rec.data.order_detail_id, 'Read', Ext.apply({
            sender: me,
            title: Ext.String.format('发货明细')
        }, me.dlgCfg));
    },
    onClickDeliver: function (view, cell, recordIndex, cellIndex, e, rec) {
        var me = this;
        var prod_deliver_id = me.store.getAt(recordIndex).data.order_detail_id;
        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sal/sal_prod_deliver', '', 'New', Ext.apply({
            sender: me,
            title: '订单发货',
            params: {
                proctaskid: prod_deliver_id
            },
            listeners: {
                submit: function (action, data) {
                    me.store.reload({
                        loadMask: {
                            msg: '保存已成功',
                            start: 0,
                            stay: 300
                        },
                        callback: function () {

                            var rec = me.store.getById(data.Key);
                            if (rec)
                                me.grid.getSelectionModel().select(rec);
                        }
                    });
                }
            }
        }, me.dlgCfg));
    },
    renderRead: function (value, metaData, record) {
        return value!='0'?"<a href='#'>查看</a>":"";
    },

    renderDeliver: function (value, metaData, record) {
        return "<a href='#'>发货</a>";
    },
    read: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sal/sal_order_master', rec.data.order_master_id, 'Read', Ext.apply({
            sender: me,
            title: '销售订单'
        }, me.dlgCfg));
    }

});