Ext.define('Develop.SysForm.Preview.PreviewDlg', {
    extend: 'Ext.window.Window',
    requires: [
        'Develop.SysForm.Preview.PreviewPanel',
        'Develop.SysForm.Preview.CodePanel'
    ],
    constructor: function (config) {
        var me = this;
        me.pnl = Ext.create('Develop.SysForm.Preview.PreviewPanel', {
            title:'预览',
            region: 'center',
            url: YZSoft.$url(me,'Preview.aspx'),
            params: {
                FormName:config.FormName
            }
        });
        me.codePanel = Ext.create('Develop.SysForm.Preview.CodePanel', {
            title: '代码',
            region: 'center',
            FormName: config.FormName
        });
        me.tab = Ext.create('Ext.tab.Panel', {
            region:'center',
            items:[me.pnl,me.codePanel]
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