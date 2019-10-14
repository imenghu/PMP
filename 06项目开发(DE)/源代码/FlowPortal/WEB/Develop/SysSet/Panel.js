Ext.define('Develop.SysSet.Panel', {
    extend: 'Ext.panel.Panel',
    title: '指标集',
    constructor: function (config) {
        var me = this,
            cfg;
        me.setPanel = Ext.create('Develop.SysSet.Panel.SetPanel', {
            region: 'west',
            minWidth: 520,
            width: 520,
            border: false,
            referenceHolder: true,
            split: {
                cls: 'yz-spliter',
                size: 5,
                collapseOnDblClick: false,
                collapsible: true
            },
            listeners: {
                onrowclick: function (record) {
                    var store = me.itemPanel.grid.getStore();
                    var extparams = store.getProxy().getExtraParams();
                    Ext.apply(extparams, {
                        SetId: record.data.SetId
                    });
                    store.load({
                        loadMask: {
                            msg: RS.$('All_Loading'),
                            delay: true
                        }
                    });
                }
            }
        });
        me.itemPanel = Ext.create('Develop.SysSet.Panel.ItemPanel', {
            region: 'center'
        });
        cfg = {
            layout: 'border',
            items: [me.setPanel,me.itemPanel]
        };

        Ext.apply(cfg, config);
        me.callParent([cfg]);
    },

    onActivate: function (times) {
        if (times == 0)
            this.setPanel.grid.store.load($S.loadMask.first);
        else
            this.setPanel.grid.store.reload($S.loadMask.activate);
    }
});