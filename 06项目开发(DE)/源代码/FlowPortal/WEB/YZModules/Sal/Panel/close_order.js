Ext.define('YZModules.Sal.Panel.close_order', {
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
                property: 'order_master_id',
                direction: 'DESC'
            },
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/close_order.ashx'),
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
                        header: '订单号', dataIndex: 'sale_order', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '产品名称', dataIndex: 'mat_name', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '经销商名称', dataIndex: 'dealer_name', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '收货人姓名', dataIndex: 'consignee_name', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '收货地址', dataIndex: 'consignee_addr', width: 100, align: 'left', sortable: true
                    },
                                        
                    {
                        header: '收货人电话', dataIndex: 'consignee_tel', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '总金额', dataIndex: 'total_price', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '已付款金额', dataIndex: 'pay_price', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '销售姓名', dataIndex: 'salesman_name', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '销售电话', dataIndex: 'salesman_tel', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '备注', dataIndex: 'sales_remarks', width: 100, align: 'left', sortable: true
                    },
                                       
                    {
                        header: '订单确认情况', dataIndex: 'close_order', width: 100, align: 'left', sortable: true, renderer: me.renderStatus
                    },

                    { header: '操作', dataIndex: 'close_order', width: 100, align: 'center', sortable: true, renderer: me.renderRead, listeners: { scope: me, click: me.onClickNo } }
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

        me.btnNew = Ext.create('Ext.button.Button', {
            text: '新增',
            glyph: 0xe61d,
            handler: function () {
                me.addNew();
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
                                xclass: 'YZModules.Sal.Panel.close_order_SearchPanel',
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

    renderNo: function (value, metaData, record) {
        return Ext.String.format("<a href='#'>{0}</a>", Ext.util.Format.text(value));
    },
    renderStatus: function (value) {
        debugger
        var color = "red", str = "";
        switch (value) {
            case '0':
                color = "gray";
                str = "未完成";
                break;
            case "1":
                color = "blue";
                str = "已完成";
                break;
            case "2":
                color = "green";
                str = "完成发货";
                break;
            
        }
        return Ext.String.format("<font color='{0}'>{1}</font>", color, Ext.util.Format.text(str));
    },

    onClickNo: function (view, cell, recordIndex, cellIndex, e) {
        if (e.getTarget().tagName == 'A') {
            var me = this,
               recs = me.grid.getSelectionModel().getSelection(),
               ids = [];

            if (recs.length == 0)
                return;

            Ext.each(recs, function (rec) {
                ids.push(rec.data.order_master_id);
            });

            Ext.Msg.show({
                title: '确认订单',
                msg: '请确认此订单',
                buttons: Ext.Msg.OKCANCEL,
                defaultButton: 'cancel',
                icon: Ext.MessageBox.INFO,

                fn: function (btn, text) {
                    if (btn != 'ok')
                        return;

                    YZSoft.Ajax.request({
                        url: YZSoft.$url(me, '../Service/close_order.ashx'),
                        method: 'POST',
                        params: {
                            method: 'UPStatus'
                        },
                        jsonData: ids,
                        waitMsg: {
                            msg: '请等候...',
                            target: me.grid
                        },
                        success: function (action) {
                            me.store.reload({
                                loadMask: {
                                    msg: Ext.String.format('{0}个对象已完成！', recs.length),
                                    start: 0,
                                    stay: 300
                                }
                            });
                        },
                        failure: function (action) {
                            var mbox = Ext.Msg.show({
                                title: '错误提示',
                                msg: Ext.util.Format.text(action.result.errorMessage),
                                buttons: Ext.Msg.OK,
                                icon: Ext.MessageBox.WARNING
                            });

                            me.store.reload({ mbox: mbox });
                        }
                    });
                }
            });
        }
    },
    renderRead: function (value, metaData, record) {
        if (value == '0') {
            return "<a href='#'>确认订单</a>";
        }
        else {
            return "<font color='gray'>确认订单</font>";
        }
    },
    read: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sal/sal_order_master', rec.data.order_master_id, 'Read', Ext.apply({
            sender: me,
            title: '销售订单'
        }, me.dlgCfg));
    },

});