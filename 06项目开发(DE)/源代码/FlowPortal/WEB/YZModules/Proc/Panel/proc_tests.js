Ext.define('YZModules.Proc.Panel.proc_tests', {
    extend: 'Ext.panel.Panel',
    requires: [
        'YZSoft.bpm.src.ux.FormManager',
        'YZSoft.bpm.taskoperation.Manager'
    ],
    title: '采购需求',
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
                property: 'tests_id',
                direction: 'DESC'
            },
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/proc_tests.ashx'),
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
                    { header: 'tests_id', dataIndex: 'tests_id', width: 30, hidden: true },
                    { header: '化验类型', dataIndex: 'tests_class', width: 100, align: 'left', sortable: true },
                    { header: '供应商名称', dataIndex: 'vendor_name', width: 100, align: 'left', sortable: true },
                    { header: "物料编码", dataIndex: 'mat_code', width: 100, align: 'left', sortable: true },
                    { header: '物料名称', dataIndex: 'mat_name', width: 100, align: 'left', sortable: true },
                    { header: '规格', dataIndex: 'mat_spesc', minwidth: 100, align: 'left', sortable: true },
                    { header: '化验情况', dataIndex: 'test_happen', width: 100, align: 'center', sortable: true },
                    { header: '化验结果', dataIndex: 'tests_result', width: 100, align: 'left', sortable: true, renderer: me.Status },
                    { header: '备注', dataIndex: 'tests_remarks', width: 100, align: 'center', sortable: true },
                    { header: '操作', dataIndex: 'test_happen', flex: 1, align: 'center', sortable: true, renderer: me.Notice, listeners: { scope: me, click: me.NoticeClick } },
                ]
            },
            bbar: Ext.create('Ext.toolbar.Paging', {
                store: me.store,
                displayInfo: true
            }),
            listeners: {
                rowdblclick: function (grid, record, tr, rowIndex, e, eOpts) {
                    //me.read(record);
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
            text: '编辑',
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
      
        me.toolBar = Ext.create('Ext.toolbar.Toolbar', {
            cls: 'yz-tbar-module',
            items: [
                me.btnNew,
                me.btnEdit,
                
                '->',
                '搜索条件', {
                    xclass: 'YZSoft.src.form.field.Search',
                    store: me.store,
                    width: 220,
                    createSearchPanel: function () {
                        var pnl = Ext.create({
                            xclass: 'YZModules.Proc.Panel.proc_tests_SearchPanel',
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

    NoticeClick: function (view, cell, recordIndex, cellIndex, e,rec) {
        var me = this;
        YZSoft.bpm.src.ux.FormManager.openFormApplication('Proc/proc_tests_edit', rec.data.tests_id, 'Edit', Ext.apply({
            sender: me,
            title: '化验单',
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
    Status: function (value) {

        var color = "red", str = "";
        switch (value) {
            case '0':
                color = "gray";
                str = "合格";
                break;
            case "1":
                color = "gray";
                str = "合格";
                break;
            case "2":
                color = "gray";
                str = "不合格（让步接收）";
                break;
            case "3":
                color = "red";
                str = "不合格（不接收）";
                break;


        }
        return Ext.String.format("<font color='{0}'>{1}</font>",color, Ext.util.Format.text(str));
    },
    Notice: function (value, metaData, record) {
        return value=='未化验'?"<a href='#'>录入化验单</a>":"";
    },

    addNew: function () {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Proc/proc_tests_add', '', 'New', Ext.apply({
            sender: me,
            title: '添加化验单',
            listeners: {
                submit: function (action, data) {
                    me.store.reload({
                        loadMask: {
                            msg: '保存已成功',
                            start:0,
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
    edit: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Proc/proc_tests_edit', rec.data.tests_id, 'Edit', Ext.apply({
            sender: me,
            title: Ext.String.format('化验单 - {0}', rec.data.CustomerName),
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

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Proc/proc_tests_edit', rec.data.tests_id, 'Read', Ext.apply({
            sender: me,
            title: Ext.String.format('化验单'),
        }, me.dlgCfg));
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