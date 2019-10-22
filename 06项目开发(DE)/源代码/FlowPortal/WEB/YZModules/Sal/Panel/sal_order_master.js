Ext.define('YZModules.Sal.Panel.sal_order_master', {
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
                url: YZSoft.$url(me, '../Service/sal_order_master.ashx'),
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
                        header: '审批状态', dataIndex: 'sales_state', width: 100, align: 'left', sortable: true, renderer: me.renderStatus
                    },


                    { header: '操作', width: 100, align: 'center', sortable: true, renderer: me.renderRead, listeners: { scope: me, click: me.onClickNo } }
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



        me.btnDelete = Ext.create('YZSoft.src.button.Button', {
            text: '删除',
            glyph: 0xe64d,
            sm: me.grid.getSelectionModel(),
            updateStatus: function () {
                this.setDisabled(!YZSoft.UIHelper.IsOptEnable(null, me.grid, '', 1, -1));
            },
            handler: function () {
                me.deleteSelection();
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
        me.menuTraceChart = Ext.create('YZSoft.src.menu.Item', {
            text: RS.$('All_ProcessChart'),
            glyph: 0xeae5,
            handler: function (item) {
                sm = me.grid.getSelectionModel();
                recs = sm.getSelection() || [];

                if (recs.length != 1)
                    return;

                me.openTrace(recs[0], 0);
            }
        });

        me.menuTraceList = Ext.create('YZSoft.src.menu.Item', {
            text: RS.$('All_TraceTimeline'),
            glyph: 0xeb1e,
            handler: function (item) {
                var sm = me.grid.getSelectionModel(),
                    recs = sm.getSelection() || [];

                if (recs.length != 1)
                    return;

                me.openTrace(recs[0], 1);
            }
        });

        me.btnTrace = Ext.create('YZSoft.src.button.Button', {
            text: RS.$('All_TaskTrace'),
            glyph: 0xeb10,
            menu: { items: [me.menuTraceChart, me.menuTraceList] },
            updateStatus: function () {
                this.setDisabled(!YZSoft.UIHelper.IsOptEnable(null, me.grid, null, 1, 1));
            }
        });
        me.toolBar = Ext.create('Ext.toolbar.Toolbar', {
            cls: 'yz-tbar-module',
            items: [
                me.btnNew,
                me.btnDelete,
                '|',
                me.btnTrace,
                me.btnExcelExport,
                '->',
                '搜索条件', {
                    xclass: 'YZSoft.src.form.field.Search',
                    store: me.store,
                    width: 220,
                    createSearchPanel: function () {
                        var pnl = Ext.create({
                            xclass: 'YZModules.Sal.Panel.Sal_order_master_SearchPanel',
                            region: 'north',
                            store: me.store
                        });

                        me.insert(0, pnl);
                        return pnl;
                    }
                }
            ]
        });
        cfg = {
            layout: 'border',
            tbar: me.toolBar,
            items: [me.grid]
        };

        me.sts = Ext.create('YZSoft.src.sts', {
            tbar: me.toolBar,
            store: me.store,
            sm: me.grid.getSelectionModel(),
            request: {
                params: {
                    Method: 'GetProcessingPermision'
                }
            }
        });

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

    onClickNo: function (view, cell, recordIndex, cellIndex, e) {
        if (e.getTarget().tagName == 'A')
            this.readTask(this.store.getAt(recordIndex));
    },
    renderRead: function (value, metaData, record) {
        return "<a href='#'>查看</a>";
    },
    renderStatus: function (value) {
        var color = "gray",
            str = "";
        switch (value) {
            case "1":
                color = "blue";
                str = "审批中";
                break;
            case "2":
                color = "green";
                str = "审批完成";
                break;
            case "3":
                color = "red";
                str = "驳回";
                break;
        }
        return Ext.String.format("<font color='{0}'>{1}</font>", color, Ext.util.Format.text(str));
    },

    addNew: function () {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openPostWindow('销售订单审批', {
            sender: me,
            title: '发起 - 销售订单审批',
            dlgModel: 'Tab', //Tab,Window,Dialog
            width: 600,
            height: 430,
            listeners: {
                submit: function (name, result) {
                    me.store.reload({ loadMask: false });
                }
            }
        });
    },

 
    read: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sal/sal_order_master', rec.data.order_master_id, 'Read', Ext.apply({
            sender: me,
            title: '销售订单'
        }, me.dlgCfg));
    },
    readTask: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openTaskForRead(rec.data.TaskID, Ext.apply({
            sender: me,
            title: Ext.String.format('采购需求审批')
        }));
    },

    deleteSelection: function () {
        var me = this,
            recs = me.grid.getSelectionModel().getSelection(),
            ids = [];

        if (recs.length == 0)
            return;

        Ext.each(recs, function (rec) {
            ids.push(rec.data.order_master_id);
        });

        Ext.Msg.show({
            title: '删除确认',
            msg: '您确定要删除选中项吗？',
            buttons: Ext.Msg.OKCANCEL,
            defaultButton: 'cancel',
            icon: Ext.MessageBox.INFO,

            fn: function (btn, text) {
                if (btn != 'ok')
                    return;

                YZSoft.Ajax.request({
                    url: YZSoft.$url(me, '../Service/sal_order_master.ashx'),
                    method: 'POST',
                    params: {
                        method: 'Delete'
                    },
                    jsonData: ids,
                    waitMsg: {
                        msg: '正在删除...',
                        target: me.grid
                    },
                    success: function (action) {
                        me.store.reload({
                            loadMask: {
                                msg: Ext.String.format('{0}个对象已删除！', recs.length),
                                start: 0,
                                stay:300
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
    },

    openTrace: function (rec, activeTabIndex) {
        var me = this,
            taskid = rec.data.TaskID;

        var view = YZSoft.ViewManager.addView(me, 'YZSoft.bpm.tasktrace.Panel', {
            id: 'BPM_TaskTrace_' + taskid,
            title: Ext.String.format('{0} - {1}', RS.$('All_TaskTrace'), rec.data.SerialNum),
            TaskID: taskid,
            activeTabIndex: activeTabIndex,
            closable: true
        });

        view.traceTab.setActiveTab(activeTabIndex);
    }
});