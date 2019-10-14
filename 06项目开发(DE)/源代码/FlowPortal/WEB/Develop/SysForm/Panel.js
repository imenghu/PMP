﻿Ext.define('Develop.SysForm.Panel', {
    extend: 'Ext.panel.Panel',
    title: '表单',
    constructor: function (config) {
        var me = this,
            cfg;
        me.formPanel = Ext.create('Develop.SysForm.Panel.FormPanel', {
            region: 'west',
            width: '40%',
            split: {
                cls: 'yz-spliter',
                size: 5,
                collapseOnDblClick: false,
                collapsible: true
            },
            listeners: {
                onrowclick: function (record) {
                    var store = me.setPanel.grid.getStore();
                    var extparams = store.getProxy().getExtraParams();
                    Ext.apply(extparams, {
                        FormName: record.data.FormName
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
        me.setPanel = Ext.create('Develop.SysForm.Panel.SetPanel', {
            region: 'north',
            height:'50%',
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
                        FormSetId: record.data.FormSetId
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
        me.itemPanel = Ext.create('Develop.SysForm.Panel.ItemPanel', {
            region: 'center'
        });

        me.rightPanel = Ext.create('Ext.panel.Panel', {
            region: 'center',
            layout: 'border',
            items: [me.setPanel, me.itemPanel]
        });
        cfg = {
            layout: 'border',
            items: [me.formPanel, me.rightPanel]
        };

        Ext.apply(cfg, config);
        me.callParent([cfg]);
    },

    onActivate: function (times) {
        if (times == 0)
            this.formPanel.grid.store.load($S.loadMask.first);
        else
            this.formPanel.grid.store.reload($S.loadMask.activate);
    }
});