
Ext.define('YZModules.Proc.Panel.proc_pur_task_enquiry', {
    extend: 'Ext.panel.Panel',
    requires: [
        'YZSoft.bpm.src.ux.FormManager',
        'YZSoft.bpm.taskoperation.Manager'
    ],
    title: '采购询价',
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
                property: 'pur_task_id',
                direction: 'DESC'
            },
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/proc_pur_task_enquiry.ashx'),
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
            region: 'center',
            store: me.store,
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
                    { header: '部门', dataIndex: 'DeptName', width: 100, align: 'left', sortable: true },
                    { header: "物料编码", dataIndex: 'mat_code', width: 100, align: 'left', sortable: true },
                    { header: '物料名称', dataIndex: 'mat_name', width: 100, align: 'left', sortable: true },
                    { header: '物料规格', dataIndex: 'mat_spec', minwidth: 100, align: 'left', sortable: true },
                    { header: '申购数量', dataIndex: 'pur_slnum', width: 80, align: 'left', sortable: true },
                    { header: '申购单位', dataIndex: 'pur_slnum_unit', width: 80, align: 'left', sortable: true },
                    { header: '计划单价', dataIndex: 'plan_price', width: 100, align: 'left', sortable: true },
                    { header: '总金额', dataIndex: 'item_price', width: 100, align: 'left', sortable: true },
                    { header: '计划到货日期', dataIndex: 'plan_arrival_time', width: 100, align: 'left', sortable: true },
                    { header: '是否紧急', dataIndex: 'if_urg', width: 80, align: 'left', sortable: true, renderer: XYSoft.Render.renderYesOrNo },
                    { header: '任务执行人', dataIndex: 'TaskUserName', width: 100, align: 'left', sortable: true },
                    { header: '任务情况', dataIndex: 'task_state', width: 100, align: 'left', sortable: true, renderer: me.renderStatus },
                    { header: '操作', dataIndex: 'task_state', width: 120, align: 'center', sortable: true, renderer: me.renderEnquiry, listeners: { scope: me, click: me.renderCheckVendor } }
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
            //params: {},
            fileName: '我的任务',
            allowExportAll: true, //可选项，缺省使用YZSoft.EnvSetting.Excel.AllowExportAll中的设置，默认值false
            //maxExportPages: 10, //可选项，缺省使用YZSoft.EnvSetting.Excel.MaxExportPages中的设置，默认值100
            listeners: {
                beforeload: function (params) {
                    params.ReportDate = new Date()
                }
            }
        });
        me.toolBar = Ext.create('Ext.toolbar.Toolbar', {
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
                            xclass: 'YZModules.Proc.Panel.proc_pur_task_SearchPanel',
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
    renderCheckVendor: function (view, cell, recordIndex, cellIndex, e) {
        var me = this;
        var purtaskid = me.store.getAt(recordIndex).data.pur_task_id;
        if (cell.innerText == "确认供应商") {
            YZSoft.bpm.src.ux.FormManager.openFormApplication('Proc/proc_pur_enquiry_check', purtaskid, 'Check', Ext.apply({
                sender: me,
                title: '确认供应商',
                params: {
                    proctaskid: purtaskid
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
        }
        else {
            YZSoft.bpm.src.ux.FormManager.openFormApplication('Proc/proc_pur_enquiry_read', purtaskid, 'Read', Ext.apply({
                sender: me,
                title: '查看询价单'
            }, me.dlgCfg));
        }
    },
   renderStatus: function (value) {
        var color = "red", str = "";
        switch (value) {
            case '0':
                str = "未分派任务";
                break;
            case "1":

                str = "任务执行中";
                break;
            case "2":

                str = "等待确认供应商";
                break;
            case "3":

                str = "任务已完成";
                break;
        }
        return Ext.String.format("<font>{0}</font>", Ext.util.Format.text(str));
    },
   renderEnquiry: function (value, metaData, record) {
       if (value == '2') {
           return "<a href='#'>确认供应商</a>";
       }
       else {
           return "<a href='#'>查看</a>";
       }
    }
});