
Ext.define('YZModules.Proc.Panel.proc_arrival_notice', {
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
                property: 'TaskID',
                direction: 'DESC'
            },
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/proc_arrival_notice.ashx'),
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
                    { header: 'TaskID', dataIndex: 'TaskID', width: 20, hidden: true },
                { header: 'arrival_notice_id', dataIndex: 'arrival_notice_id', width: 20, hidden: true },
                    //{ header: '公司', dataIndex: 'companyname', width: 100, align: 'left', sortable: true },
                    //{ header: '部门', dataIndex: 'dept', width: 100, align: 'left', sortable: true },
                    { header: "供应商名称", dataIndex: 'vendor_name', width: 80, align: 'left', sortable: true },
                    { header: '物料名称', dataIndex: 'mat_name', width: 80, align: 'left', sortable: true },
                    { header: '物料规格', dataIndex: 'mat_spesc', minwidth: 80, align: 'left', sortable: true },
                    { header: '采购物料数量', dataIndex: 'arrival_slnum', width: 80, align: 'left', sortable: true },
                    { header: '单位', dataIndex: 'arrival_slnum_unit', width: 80, align: 'left', sortable: true },
                    { header: '运货人', dataIndex: 'arrival_username', width: 80, align: 'left', sortable: true },
                    { header: '联系电话', dataIndex: 'arrival_usertel', width: 80, align: 'left', sortable: true },
                    { header: '预估运费', dataIndex: 'plan_arrival_price', width: 100, align: 'left', sortable: true },
                    { header: '接货人', dataIndex: 'storename', width: 80, align: 'left', sortable: true },
                    { header: '需求提报时间', dataIndex: 'create_time', width: 80, align: 'left', sortable: true },
                    { header: '预计到货时间', dataIndex: 'plan_arrival_time', width: 80, align: 'left', sortable: true },
                    { header: '完成情况', dataIndex: 'notice_state', width: 80, align: 'center', sortable: true, renderer: me.Status },
                    { header: '操作', dataIndex: 'notice_state', width: 80, align: 'center', sortable: true, renderer: me.Notice, listeners: { scope: me, click: me.NoticeClick } },
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

        me.toolBar = Ext.create('Ext.toolbar.Toolbar', {
            cls: 'yz-tbar-module',
            items: [

                '->',
                '搜索条件', {
                    xclass: 'YZSoft.src.form.field.Search',
                    store: me.store,
                    width: 220,
                    createSearchPanel: function () {
                        var pnl = Ext.create({
                            xclass: 'YZModules.Proc.Panel.proc_arrival_notice_SearchPanel',
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


    finishClick: function (view, cell, recordIndex, cellIndex, e) {
        var me = this,
            recs = me.grid.getSelectionModel().getSelection(),
            ids = [];

        if (recs.length == 0)
            return;

        Ext.each(recs, function (rec) {
            ids.push(rec.data.TaskID);
        });

        Ext.Msg.show({
            title: '任务完成确认',
            msg: '您确定该任务已完成吗？',
            buttons: Ext.Msg.OKCANCEL,
            defaultButton: 'cancel',
            icon: Ext.MessageBox.INFO,

            fn: function (btn, text) {
                if (btn != 'ok')
                    return;

                YZSoft.Ajax.request({
                    url: YZSoft.$url(me, '../Service/proc_arrival_notice.ashx'),
                    method: 'POST',
                    params: {
                        method: 'UpStatus'
                    },
                    jsonData: ids,
                    waitMsg: {
                        msg: '正在操作...',
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
    },
    NoticeClick: function (view, cell, recordIndex, cellIndex, e,rec) {
        
        var me = this;
        var purtaskid = me.store.getAt(recordIndex).data.arrival_notice_id;
        if (cell.innerText == "入库") {
            YZSoft.bpm.src.ux.FormManager.openFormApplication('Proc/inv_in_detail', '', 'New', Ext.apply({
                sender: me,
                title: '采购入库',
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
            var me = this;
            YZSoft.bpm.src.ux.FormManager.openFormApplication('Proc/inv_in_detail_t', rec.data.in_detail_id, 'Read', Ext.apply({
                sender: me,
                title: Ext.String.format('入库单')
            }, me.dlgCfg));
        }

    },
    Status: function (value) {
 
        var color = "red", str = "";
        switch (value) {
            case '0':
                color = "red";
                str = "未入库";
                break;
            case "1":
                color = "gray";
                str = "已入库";
                break;
           
        }
        return Ext.String.format("<font color='{0}'>{1}</font>",color, Ext.util.Format.text(str));
    },

    finish: function (value, metaData, record) {
        return "<a href='#'>任务完成</a>";
    },
    Notice: function (value, metaData, record) {
        return (value == "0" ? "<a href='#'>入库</a>" : "<a href='#'>查看</a>");
    },


    //read: function (rec) {
    //    var me = this;

    //    YZSoft.bpm.src.ux.FormManager.openTaskForRead(rec.data.TaskID, Ext.apply({
    //        sender: me,
    //        title: Ext.String.format('采购合同审批')
    //    }));
    //},

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