Ext.define('YZModules.Prod.Panel.prod_test4', {
    extend: 'Ext.panel.Panel',
    requires: [
        'YZSoft.bpm.src.ux.FormManager'
    ],
    title: '成品酒质检',
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
                property: 'test_id',
                direction: 'DESC'
            },
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/prod_test4.ashx'),
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
                                            header: '品  名', dataIndex: 'mat_name', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '罐号', dataIndex: 'tank_id', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '泡持 s', dataIndex: 'buble_sus', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '泡高 mm', dataIndex: 'buble_h', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '真正发酵度%', dataIndex: 'real_ferment', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '原麦汁浓度°p', dataIndex: 'wort_concent', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '真正浓度%m/m）', dataIndex: 'true_concent', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '酒精%（w/w）', dataIndex: 'alcohol', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '总酸ml/100ml', dataIndex: 'total_acid', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '净含量 ml', dataIndex: 'net', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '色度EBC', dataIndex: 'chroma_ebc', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '浊度 EBC', dataIndex: 'turbidity_ebc', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: 'PH值', dataIndex: 'ph', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '炭酸气%m/m', dataIndex: 'carbon_acid', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '双乙酰mg/L', dataIndex: 'diacetyl', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '苦味质BU', dataIndex: 'bitter_bu', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '瓶颈空气 ml', dataIndex: 'bottleneck', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '出酒日期', dataIndex: 'prod_date', width: 100, align: 'left', sortable: true
                                        },
                                        { header: '操作', width: 100, align: 'center', sortable: true, renderer: me.renderRead, listeners: { scope: me, click: me.onClickNo } },
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
            fileName: '成品酒质检',
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
                                xclass: 'YZModules.Prod.Panel.prod_test4_SearchPanel',
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

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Prod/prod_test4', '', 'New', Ext.apply({
            sender: me,
            title: '新增-成品酒质检',
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

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Prod/prod_test4', rec.data.test_id, 'Edit', Ext.apply({
            sender: me,
            title: '成品酒质检',
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

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Prod/prod_test4', rec.data.test_id, 'Read', Ext.apply({
            sender: me,
            title: '成品酒质检'
        }, me.dlgCfg));
    },

    deleteSelection: function () {
        var me = this,
            recs = me.grid.getSelectionModel().getSelection(),
            ids = [];

        if (recs.length == 0)
            return;

        Ext.each(recs, function (rec) {
            ids.push(rec.data.test_id);
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
                    url: YZSoft.$url(me, '../Service/prod_test4.ashx'),
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