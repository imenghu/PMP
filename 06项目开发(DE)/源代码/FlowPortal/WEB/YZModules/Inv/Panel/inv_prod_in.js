﻿Ext.define('YZModules.Inv.Panel.inv_prod_in', {
    extend: 'Ext.panel.Panel',
    requires: [
        'YZSoft.bpm.src.ux.FormManager'
    ],
    title: '产成品入库',
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
                property: 'prod_in_id',
                direction: 'DESC'
            },
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/inv_prod_in.ashx'),
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
                    { header: '公司', dataIndex: 'CompanyName', width: 100, align: 'left', sortable: true },
                    {
                        header: '产成品编码', dataIndex: 'mat_code', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '产成品名称', dataIndex: 'mat_name', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '规格', dataIndex: 'mat_spec', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '入库数量', dataIndex: 'in_stnum', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '基准单位', dataIndex: 'in_stnum_unit', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '入库体积', dataIndex: 'innum', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '单位', dataIndex: 'mat_unit_name', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '生产部门', dataIndex: 'ProdDeptName', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '仓库名称', dataIndex: 'depot_name', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '入库人', dataIndex: 'ProdUserName', width: 100, align: 'left', sortable: true
                    },
                    {
                        header: '入库时间', dataIndex: 'in_time', width: 100, align: 'left', sortable: true
                        , renderer: XYSoft.Render.renderDateYMD
                    },
                    {
                        header: '备注', dataIndex: 'prod_in_remarks', width: 100, align: 'left', sortable: true
                    },
                    { header: '操作', dataIndex: 'prod_in_id', width: 100, align: 'center', sortable: true, renderer: me.renderRead, listeners: { scope: me, click: me.onClickNo } }
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
            fileName: '产成品入库',
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
                                xclass: 'YZModules.Inv.Panel.inv_prod_in_SearchPanel',
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
    renderRead: function (value, metaData, record) {
        return "<a href='#'>查看</a>";
    },

    addNew: function () {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Inv/inv_prod_in', '', 'New', Ext.apply({
            sender: me,
            title: '新增-产成品入库',
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

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Inv/inv_prod_in', rec.data.prod_in_id, 'Edit', Ext.apply({
            sender: me,
            title: '产成品入库',
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

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Inv/inv_prod_in', rec.data.prod_in_id, 'Read', Ext.apply({
            sender: me,
            title: '产成品入库'
        }, me.dlgCfg));
    },

    deleteSelection: function () {
        var me = this,
            recs = me.grid.getSelectionModel().getSelection(),
            ids = [];

        if (recs.length == 0)
            return;

        Ext.each(recs, function (rec) {
            ids.push(rec.data.prod_in_id);
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
                    url: YZSoft.$url(me, '../Service/inv_prod_in.ashx'),
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