Ext.define('Develop.SysGrid.Panel.FormPanel', {
    extend: 'Ext.panel.Panel',
    requires: [
        'YZSoft.bpm.src.ux.FormManager',
        'Develop.SysGrid.Grid.FormGrid'
    ],
    constructor: function (config) {
        var me = this;

        me.grid = Ext.create('Develop.SysGrid.Grid.FormGrid', {
            region: 'center',
            listeners: {
                rowclick: function (grid, record, tr, rowIndex, e, eOpts) {
                    me.fireEvent('onrowclick', record);
                },
                afterload: function () {
                    me.fireEvent('afterload');
                }
            }
        });

        me.btnAdd = Ext.create('Ext.button.Button', {
            iconCls: 'yz-glyph yz-glyph-new',
            text: '新增',
            handler: function () {
                me.addNew();
            }
        });
        me.btnEdit = Ext.create('YZSoft.src.button.Button', {
            iconCls: 'yz-glyph yz-glyph-edit',
            text: '修改',
            sm: me.grid.getSelectionModel(),
            updateStatus: function () {
                this.setDisabled(!YZSoft.UIHelper.IsOptEnable(null, me.grid, '', 1, 1));
            },
            handler: function () {
                var sm = me.grid.getSelectionModel(),
                    recs = sm.getSelection() || [];

                if (recs.length != 1)
                    return;

                me.editSelection(recs[0]);
            }
        });

        me.btnDelete = Ext.create('YZSoft.src.button.Button', {
            iconCls: 'yz-glyph yz-glyph-delete',
            text: '删除',
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
            params: {},
            allowExportAll: true, //可选项，缺省使用YZSoft.EnvSetting.Excel.AllowExportAll中的设置，默认值false
            listeners: {
                beforeload: function (params) {
                    params.ReportDate = new Date()
                }
            }
        });
        me.btnPreview = Ext.create('YZSoft.src.button.Button', {
            text: '预览',
            sm: me.grid.getSelectionModel(),
            updateStatus: function () {
                this.setDisabled(!YZSoft.UIHelper.IsOptEnable(null, me.grid, '', 1, 1));
            },
            handler: function () {
                me.onPreview();
            }
        });


        me.btnRefresh = Ext.create('Ext.button.Button', {
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
        var cfg = {
            layout: 'border',
            referenceHolder: true,
            border: false,
            items: [me.grid],
            tbar: {
                xtype: 'toolbar',
                cls: 'yz-toolbar-flat',
                items: [me.btnAdd, me.btnEdit, me.btnRefresh, me.btnExcelExportSet, '|', me.btnPreview, '->', {
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
            url: YZSoft.$url('Develop/SysGrid/Service/SysGrid.ashx'),
            params: {
                method: 'MoveObjects',
                targetIndex: record.data.OrderIndex,
                position: dropPosition
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
    onPreview: function () {
        var me = this;
        var recs = me.grid.getSelectionModel().getSelection();
        if (recs.length != 1) return;
        Ext.create('Develop.SysGrid.Preview.PreviewDlg', {
            autoShow: true,
            title: '预览',
            GridId: recs[0].data.GridId
        });
    },

    addNew: function () {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Dev/SysGrid', '', 'New', Ext.apply({
            sender: me,
            title: '新增表单',
            dlgModel: 'Tab', //Tab,Window,Dialog
            listeners: {
                submit: function (name, result) {
                    me.grid.getStore().reload({ loadMask: false });
                }
            }
        }));
    },

    editSelection: function (rec) {
        var me = this;

        YZSoft.bpm.src.ux.FormManager.openFormApplication('Dev/SysGrid', rec.data.GridId, 'Edit', Ext.apply({
            sender: me,
            title: '修改表单',
            dlgModel: 'Tab', //Tab,Window,Dialog
            listeners: {
                submit: function (name, result) {
                    me.grid.getStore().reload({ loadMask: false });
                }
            }
        }));
    },

    deleteSelection: function () {
        var me = this,
            recs = me.grid.getSelectionModel().getSelection(),
            ids = [];

        if (recs.length == 0)
            return;

        Ext.each(recs, function (rec) {
            ids.push(rec.data.GridId);
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
                    url: YZSoft.$url(me, '../Service/SysGrid.ashx'),
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