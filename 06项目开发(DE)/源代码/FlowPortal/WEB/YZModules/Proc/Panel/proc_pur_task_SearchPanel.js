
Ext.define('YZModules.Proc.Panel.proc_pur_task_SearchPanel', {
    extend: 'Ext.panel.Panel',
    requires: [
        'YZSoft.bpm.src.form.field.ProcessNameComboBox',
        'YZSoft.src.form.field.User',
        'YZSoft.src.form.field.PeriodPicker'
    ],
    height: 'auto',
    border: false,
    cls: 'yz-bg-transparent yz-pnl-search',
    bodyPadding: '6 10 5 12',

    constructor: function (config) {
        var me = this,
            cfg;
        me.type = Ext.create('Ext.data.JsonStore', {
            fields: ['name', 'value'],
            data: [
                { name: RS.$('All_SearchAll'), value: '' },
                { name: "劳特巴赫（菏泽）", value: '劳特巴赫（菏泽）' },
                
            ]
        });

        me.proc_type = Ext.create('Ext.form.field.ComboBox', {
            fieldLabel: "公司",
            queryMode: 'local',
            store: me.type,
            displayField: 'name',
            valueField: 'value',
            value: '',
            editable: false,
            forceSelection: true,
            triggerAction: 'all',
        });
       
        me.edtKeyword = Ext.create('Ext.form.field.Text', {
            fieldLabel: '供应商名称',
            allowBlank: true,
            value: config.store.getProxy().getExtraParams().kwd || ''
        });
        me.status = Ext.create('Ext.data.JsonStore', {
            fields: ['name', 'value'],
            data: [
                { name: RS.$('All_SearchAll'), value: '' },
                { name: "工厂采购部", value: '工厂采购部' },
                { name: "工厂酿造部", value: '工厂酿造部' },
              


            ]
        });


        me.proc_status = Ext.create('Ext.form.field.ComboBox', {
            fieldLabel: "部门",
            queryMode: 'local',
            store: me.status,
            displayField: 'name',
            valueField: 'value',
            value: '',
            editable: false,
            forceSelection: true,
            triggerAction: 'all',
        });

        me.state = Ext.create('Ext.data.JsonStore', {
            fields: ['name', 'value'],
            data: [
                { name: RS.$('All_SearchAll'), value: '' },
                { name: "任务执行中", value: '任务执行中' },
                { name: "任务已完成", value: '任务已完成' },
          


            ]
        });


        me.task_state = Ext.create('Ext.form.field.ComboBox', {
            fieldLabel: "任务完成情况",
            queryMode: 'local',
            store: me.state,
            displayField: 'name',
            valueField: 'value',
            value: '',
            editable: false,
            forceSelection: true,
            triggerAction: 'all',
        });


        me.vendor = Ext.create('Ext.form.field.Text', {
            fieldLabel: '物料名称',
            allowBlank: true,

        });

        me.btnSearch = Ext.create('Ext.button.Button', {
            text: RS.$('All_Search'),
            cls: 'yz-btn-submit yz-btn-round3',
            handler: function () {
                me.onSearchClick();
            }
        });

        me.btnClear = Ext.create('Ext.button.Button', {
            text: RS.$('All_Reset'),
            cls: 'yz-btn-round3',
            handler: function () {
                me.onResetClick();
            }
        });

        cfg = {
            border: false,
            defaults: {
                border: false,
                layout: {
                    type: 'hbox',
                    align: 'middle'
                },
                defaults: {
                    margin: '1 0',
                    border: false,
                    maxWidth: 320,
                    minWidth: 180,
                    layout: {
                        type: 'fit'
                    },
                    defaults: {
                        labelWidth: YZSoft.os.isMobile ? 80 : 100,
                        margin: '3 0 3 10'
                    }
                }
            },
            items: [{
                items: [{
                    flex: 1,
                    items: [me.proc_type]
                }, {
                    flex: 1,
                    items: [me.proc_status]
                },
                {
                    flex: 1,
                    items: [me.task_state]
                },
                {
                    flex: 1,
                    items: [me.vendor]
                },
                {
                    flex: 1,
                    minWidth: 100,
                    layout: {
                        type: 'hbox',
                        align: 'middle'
                    },
                    defaults: {
                        padding: '6 16',
                        margin: '0 0 0 8',
                        ui: 'default-toolbar'
                    },
                    items: [me.btnSearch, me.btnClear]
                }]
            }]
        };

        Ext.apply(cfg, config);
        me.callParent([cfg]);


        me.store.on({
            load: function (store, records, successful, operation, eOpts) {
                if (!successful)
                    return;
                var params = operation.request.getParams();

                if (params.searchType)
                    me.edtKeyword.setValue(params.kwd);
            }
        });
    },

    onTaskStateTypeChanged: function () {
        this.edtRecipient.setDisabled(this.cmbTaskStatus.getValue() != 'Running');
    },

    onSearchClick: function () {
        var me = this,
            store = me.store,
            params = me.store.getProxy().getExtraParams();

        Ext.apply(params, {
            searchType: 'QuickSearch',
            kwd: me.edtKeyword.getValue(),
            proc_type: me.proc_type.getValue(),
            proc_status: me.proc_status.getValue(),
            task_state: me.task_state.getValue(),
            vendor: me.vendor.getValue(),

        });

        me.store.loadPage(1);
    },

    onResetClick: function () {
        var me = this,
            store = me.store,
            params = me.store.getProxy().getExtraParams();
        me.proc_type.setValue('');
        me.proc_status.setValue('');
        me.vendor.setValue('');


        me.edtKeyword.setValue('');
        me.task_state.getValue(''),

        Ext.apply(params, {
            searchType: '',
        });

        me.store.loadPage(1);
    }
});