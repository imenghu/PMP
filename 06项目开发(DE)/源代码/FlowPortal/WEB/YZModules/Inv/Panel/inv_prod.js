Ext.define('YZModules.Inv.Panel.inv_prod', {
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
                property: 'mat_code',
                direction: 'DESC'
            },
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/inv_prod.ashx'),
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
                                            header: '仓库名称', dataIndex: 'depot_name', width: 120, align: 'left', sortable: true
                                        },
                                        { header: '物料编码', dataIndex: 'mat_code', width: 120, align: 'left', sortable: true
                                        },
                                        {
                                            header: '物料名称', dataIndex: 'mat_name', width: 100, flex: 1, align: 'left', sortable: true
                                        },
                                        { header: '规格', dataIndex: 'mat_spec', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '库存数量', dataIndex: 'invnum', width: 100, align: 'left', sortable: true
                                        },
                                        { header: '基准单位', dataIndex: 'in_stnum_unit', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '库存体积', dataIndex: 'inv_num', width: 100, align: 'left', sortable: true
                                        },
                                        {
                                            header: '单位', dataIndex: 'mat_unit_name', width: 100, align: 'left', sortable: true
                                        }]
            },
            bbar: Ext.create('Ext.toolbar.Paging', {
                store: me.store,
                displayInfo: true
            })
        });


        me.btnExcelExport = Ext.create('YZSoft.src.button.ExcelExportButton', {
            grid: me.grid,
            //templateExcel: YZSoft.$url(me, '设备清单模板.xls'), //导出模板，不设置则按缺省方式导出
            //params: {},
            fileName: '产成品库存',
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
                                xclass: 'YZModules.Inv.Panel.inv_prod_SearchPanel',
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
    read: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Inv/inv_prod', rec.data.prod_in_id, 'Read', Ext.apply({
            sender: me,
            title: '产成品入库'
        }, me.dlgCfg));
    }
});