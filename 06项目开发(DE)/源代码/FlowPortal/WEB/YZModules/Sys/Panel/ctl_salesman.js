Ext.define('YZModules.Sys.Panel.ctl_salesman', {
    extend: 'Ext.panel.Panel',
    requires: [
        'YZSoft.bpm.src.ux.FormManager'
    ],
    title: '销售员信息',
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
                property: 'salesman_id',
                direction: 'DESC'
            },
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/ctl_salesman.ashx'),
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
                                            header: '省', dataIndex: 'province_id', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '市', dataIndex: 'city_id', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '姓名', dataIndex: 'salesman_name', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '电话', dataIndex: 'salesman_tel', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '邮箱', dataIndex: 'salesman_email', width: 120, align: 'left', sortable: true
                                        },
                                        {
                                            header: '地址', dataIndex: 'salesman_addr', width: 100,flex:1, align: 'left', sortable: true
                                        },
                                        {
                                            header: '备注', dataIndex: 'salesman_remarks', width: 100, align: 'left', sortable: true
                                        },
                                        { header: '详情', width: 100, align: 'center', sortable: true, renderer: me.renderRead, listeners: { scope: me, click: me.onClickNo } },
                                        { header: '对应经销商维护', width: 120, align: 'center', sortable: true, renderer: me.renderDealer, listeners: { scope: me, click: me.onClickDealer } }
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

        me.btnEdit = Ext.create('YZSoft.src.button.Button', {
            text: '修改',
            glyph: 0xe61c,
            sm: me.grid.getSelectionModel(),
            updateStatus: function () {
                this.setDisabled(!YZSoft.UIHelper.IsOptEnable(null, me.grid, '', 1, 1));
            },
            handler: function () {
                var sm = me.grid.getSelectionModel(),
                    recs = sm.getSelection() || [];

                if (recs.length != 1)
                    return;

                me.edit(recs[0]);
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
            //params: {},
            fileName: '销售员信息',
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
                    me.btnNew,
                    me.btnEdit,
                    me.btnDelete,
                    '|',
                    me.btnExcelExport,
                    '->',
                    '搜索条件', {
                        xclass: 'YZSoft.src.form.field.Search',
                        store: me.store,
                        width: 220,
                        createSearchPanel: function () {
                            var pnl = Ext.create({
                                xclass: 'YZModules.Sys.Panel.ctl_salesman_SearchPanel',
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

    onClickNo: function (view, cell, recordIndex, cellIndex, e) {
        if (e.getTarget().tagName == 'A')
            this.read(this.store.getAt(recordIndex));
    },
    onClickDealer: function (view, cell, recordIndex, cellIndex, e) {
        if (e.getTarget().tagName == 'A')
            this.editDealer(this.store.getAt(recordIndex));
    },
    renderRead: function (value, metaData, record) {
        return "<a href='#'>查看</a>";
    },
    renderDealer: function (value, metaData, record) {
        return "<a href='#'>对应经销商维护</a>";
    },

    addNew: function () {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sys/ctl_salesman', '', 'New', Ext.apply({
            sender: me,
            title: '新增-销售员信息',
            dlgModel: 'Tab', //Tab,Window,Dialog
            width: 600,
            height: 430,
            listeners: {
                submit: function (name, result) {
                    me.store.reload({ loadMask: false });
                }
            }
        }));
    },

    edit: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sys/ctl_salesman', rec.data.salesman_id, 'Edit', Ext.apply({
            sender: me,
            title: '销售员信息',
            listeners: {
                submit: function (action, data) {
                    me.store.reload({
                        loadMask: {
                            msg: '保存已成功',
                            start: 0,
                            stay: 300
                        }
                    });
                }
            }
        }, me.dlgCfg));
    },
    editDealer: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sys/ctl_dealer_salesman', rec.data.salesman_id, 'Edit', Ext.apply({
            sender: me,
            title: '销售员信息',
            listeners: {
                submit: function (action, data) {
                    me.store.reload({
                        loadMask: {
                            msg: '保存已成功',
                            start: 0,
                            stay: 300
                        }
                    });
                }
            }
        }, me.dlgCfg));
    },
    read: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sys/ctl_dealer_salesman', rec.data.salesman_id, 'Read', Ext.apply({
            sender: me,
            title: '销售员信息'
        }, me.dlgCfg));
    },

    deleteSelection: function () {
        var me = this,
            recs = me.grid.getSelectionModel().getSelection(),
            ids = [];

        if (recs.length == 0)
            return;

        Ext.each(recs, function (rec) {
            ids.push(rec.data.salesman_id);
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
                    url: YZSoft.$url(me, '../Service/ctl_salesman.ashx'),
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
});