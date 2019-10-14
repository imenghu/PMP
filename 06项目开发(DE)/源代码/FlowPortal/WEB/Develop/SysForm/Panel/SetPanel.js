Ext.define('Develop.SysForm.Panel.SetPanel', {
    extend: 'Ext.panel.Panel',
    requires: [
        'Develop.SysForm.Grid.SetGrid'
    ],
    constructor: function (config) {
        var me = this;

        me.dd = Ext.create('Ext.grid.plugin.DragDrop', {
            dragZone: {
                getDragText: function () {
                    var dragZone = this,
                        data = dragZone.dragData,
                        record = data.records[0];

                    return record.data.SetName;
                }
            }
        });

        me.grid = Ext.create('Develop.SysForm.Grid.SetGrid', {
            region: 'center',
            viewConfig: {
                markDirty: false,
                plugins: [me.dd]
            },
            listeners: {
                rowclick: function (grid, record, tr, rowIndex, e, eOpts) {
                    me.fireEvent('onrowclick', record);
                },
                afterload: function () {
                    me.fireEvent('afterload');
                }
            }
        });

        me.btnRefreshSet = Ext.create('Ext.button.Button', {
            iconCls: 'yz-glyph yz-glyph-refresh',
            text: RS.$('All_Refresh'),
            handler: function () {
                me.grid.getStore().reload({
                    loadMask: {
                        msg: RS.$('All_Loading'),
                        delay: true
                    }
                });
            }
        });
        
        me.btnExcelExportSet = Ext.create('YZSoft.src.button.ExcelExportButton', {
            grid: me.grid,
            params: {},
            allowExportAll: true, //可选项，缺省使用YZSoft.EnvSetting.Excel.AllowExportAll中的设置，默认值false
            listeners: {
                beforeload: function (params) {
                    params.ReportDate = new Date()
                }
            }
        });
        var cfg = {
            layout: 'border',
            referenceHolder: true,
            border: false,
            items: [me.grid],
            tbar: {
                xtype: 'toolbar',
                cls: 'yz-toolbar-flat',
                items: [me.btnRefreshSet, me.btnExcelExportSet, '->', {
                    xclass: 'YZSoft.src.form.field.Search',
                    store: me.grid.getStore(),
                    width: 160
                }]
            }
        };
        Ext.apply(cfg, config);
        me.callParent([cfg]);
        me.grid.getView().on({
            scope: me,
            beforedrop: 'onBeforeItemDrop'
        });
    },

    onBeforeItemDrop: function (node, data, overModel, dropPosition, dropHandlers, eOpts) {
        var me = this,
            record = overModel,
            names = [];

        Ext.Array.each(data.records, function (rec) {
            names.push(rec.data.OrderIndex);
        });

        dropHandlers.wait = true;
        YZSoft.Ajax.request({
            method: 'POST',
            exception: false,
            url: YZSoft.$url('Develop/SysForm/Service/SysFormSet.ashx'),
            params: {
                method: 'MoveObjects',
                targetIndex: record.data.OrderIndex,
                position: dropPosition,
                formName: me.grid.getStore().getProxy().getExtraParams().FormName
            },
            jsonData: names,
            waitMsg: {
                msg: RS.$('All_Moving'),
                target: me
            },
            success: function (action) {
                dropHandlers.processDrop();
                data.view && data.view.refresh();
                me.grid.getStore().reload({ loadMask: false });
            },
            failure: function (action) {
                YZSoft.alert(action.result.errorMessage);
                dropHandlers.cancelDrop();
            }
        });
    },

    addNew: function () {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Dev/SysFormSet', '', 'New', Ext.apply({
            sender: me,
            title: '新增-数据字典',
            dlgModel: 'Tab', //Tab,Window,Dialog
            width: 600,
            height: 430,
            listeners: {
                submit: function (name, result) {
                    me.grid.getStore().reload({ loadMask: false });
                }
            }
        }));
    },

    edit: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Dev/SysFormSet', rec.data.SetId, 'Edit', Ext.apply({
            sender: me,
            title: '修改-数据字典',
            listeners: {
                submit: function (action, data) {
                    me.grid.getStore().reload({
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

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Dev/SysFormSet', rec.data.SetId, 'Read', Ext.apply({
            sender: me,
            title: Ext.String.format('数据字典')
        }, me.dlgCfg));
    },

    deleteSelection: function () {
        var me = this,
            recs = me.grid.getSelectionModel().getSelection(),
            ids = [];

        if (recs.length == 0)
            return;

        Ext.each(recs, function (rec) {
            ids.push(rec.data.SetId);
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
                    url: YZSoft.$url(me, '../Service/SysFormSet.ashx'),
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