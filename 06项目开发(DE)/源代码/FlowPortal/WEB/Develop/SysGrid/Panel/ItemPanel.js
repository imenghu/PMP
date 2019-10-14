Ext.define('Develop.SysGrid.Panel.ItemPanel', {
    extend: 'Ext.panel.Panel',
    requires: [
        'Develop.SysGrid.Grid.ItemGrid'
    ],
    constructor: function (config) {
        var me = this;

        me.dd = Ext.create('Ext.grid.plugin.DragDrop', {
            dragZone: {
                getDragText: function () {
                    var dragZone = this,
                        data = dragZone.dragData,
                        record = data.records[0];

                    return record.data.ItemName;
                }
            }
        });
        me.grid = Ext.create('Develop.SysGrid.Grid.ItemGrid', {
            region: 'center',
            cls: 'yz-grid-no-focus',
            viewConfig: {
                markDirty: false,
                plugins: [me.dd]
            },
            sortable: false,
            listeners: {
                rowclick: function (grid, record, tr, rowIndex, e, eOpts) {
                    me.fireEvent('onrowclick', record);
                }
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
        me.btnExcelExport = Ext.create('YZSoft.src.button.ExcelExportButton', {
            grid: me.grid,
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
                items: [ me.btnRefresh, me.btnExcelExport, '->', {
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
            url: YZSoft.$url('Develop/SysGrid/Service/SysGridItem.ashx'),
            params: {
                method: 'MoveObjects',
                targetIndex: record.data.OrderIndex,
                position: dropPosition,
                GridSetId: me.grid.getStore().getProxy().getExtraParams().GridSetId
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
    }
});