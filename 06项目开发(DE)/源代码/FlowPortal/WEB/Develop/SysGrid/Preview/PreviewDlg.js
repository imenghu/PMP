Ext.define('Develop.SysGrid.Preview.PreviewDlg', {
    extend: 'Ext.window.Window',
    requires: [
        'Develop.SysGrid.Preview.CodePanel'
    ],
    constructor: function (config) {
        var me = this;
        me.codePanel = Ext.create('Develop.SysGrid.Preview.CodePanel', {
            title: 'js代码',
            region: 'center',
            GridId: config.GridId
        });
        me.codePanel2 = Ext.create('Develop.SysGrid.Preview.CodePanel2', {
            title: '后台代码',
            region: 'center',
            GridId: config.GridId
        });
        me.tab = Ext.create('Ext.tab.Panel', {
            region:'center',
            items:[me.codePanel,me.codePanel2]
        });
        var cfg = {
            width: 900,
            height: 600,
            referenceHolder: true,
            plain: false,
            maximizable: true,
            resizable: true,
            layout: 'border',
            items: [me.tab]
        };

        Ext.apply(cfg, config);
        me.callParent([cfg]);
    }
});