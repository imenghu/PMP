﻿Ext.define('YZModules.Sal.Panel.Sal_deposit_record', {
    extend: 'Ext.panel.Panel',
    requires: [
        'YZSoft.bpm.src.ux.FormManager'
    ],
    title: '押金明细',
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
                property: 'deposit_id',
                direction: 'DESC'
            },
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/Sal_deposit_record.ashx'),
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
                                            header: '客户名称', dataIndex: 'customer_name', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '客户编号', dataIndex: 'customer_code', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '销售大区名称', dataIndex: 'name', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '发货仓库名称', dataIndex: 'depot_name', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '金额', dataIndex: 'deposit_money', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '增减标志', dataIndex: 'deposit_flag', width: 100, align: 'left', sortable: true,renderer:me.renderZJ
                                        },
                                        {
                                            header: '财务名称', dataIndex: 'finance_name', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '押金日期', dataIndex: 'deposit_date', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '录入日期', dataIndex: 'insert_date', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '摘要', dataIndex: 'summary', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '备注', dataIndex: 'remark', width: 100, align: 'left', sortable: true
                                        },
                                        { header: '操作', dataIndex: 'deposit_id', width: 100, align: 'center', sortable: true, renderer: me.renderRead, listeners: { scope: me, click: me.onClickNo } },
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
            disabled: !config.perm['New'],
            handler: function () {
                me.addNew();
            }
        });

        me.btnEdit = Ext.create('YZSoft.src.button.Button', {
            text: '修改',
            glyph: 0xe61c,
            sm: me.grid.getSelectionModel(),
            perm: 'Edit',
            updateStatus: function () {
                this.setDisabled(!YZSoft.UIHelper.IsOptEnable(me, me.grid, this.perm, 1, 1));
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
            perm: 'Delete',
            updateStatus: function () {
                this.setDisabled(!YZSoft.UIHelper.IsOptEnable(me, me.grid, this.perm, 1, -1));
            },
            handler: function () {
                me.deleteSelection();
            }
        });

        me.btnExcelExport = Ext.create('YZSoft.src.button.ExcelExportButton', {
            grid: me.grid,
            //templateExcel: YZSoft.$url(me, '设备清单模板.xls'), //导出模板，不设置则按缺省方式导出
            //params: {},
            fileName: '押金明细',
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
                        width: 220
                        //,
                        //createSearchPanel: function () {
                        //    var pnl = Ext.create({
                        //        xclass: 'YZModules.Sal.Panel.Sal_deposit_record_SearchPanel',
                        //        region: 'north',
                        //        store: me.store
                        //    });

                        //    me.insert(0, pnl);
                        //    return pnl;
                        //}
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

    renderZJ: function (value, metaData, record) {
        if (value == 1) {
            return "增加";
        }
        else {
            return "减少";
        }
    },
    renderNo: function (value, metaData, record) {
        return Ext.String.format("<a href='#'>{0}</a>", Ext.util.Format.text(value));
    },

    onClickNo: function (view, cell, recordIndex, cellIndex, e) {
        if (e.getTarget().tagName == 'A')
            this.read(this.store.getAt(recordIndex));
    },
    renderRead: function (value, metaData, record) {
        return "<a href='#'>查看</a>";
    },

    addNew: function () {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sal/Sal_deposit_record', '', 'New', Ext.apply({
            sender: me,
            title: '新增-押金明细',
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

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sal/Sal_deposit_record', rec.data.deposit_id, 'Edit', Ext.apply({
            sender: me,
            title: '押金明细',
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

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Sal/Sal_deposit_record', rec.data.deposit_id, 'Read', Ext.apply({
            sender: me,
            title: '押金明细'
        }, me.dlgCfg));
    },

    deleteSelection: function () {
        var me = this,
            recs = me.grid.getSelectionModel().getSelection(),
            ids = [];

        if (recs.length == 0)
            return;

        Ext.each(recs, function (rec) {
            ids.push(rec.data.deposit_id);
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
                    url: YZSoft.$url(me, '../Service/Sal_deposit_record.ashx'),
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