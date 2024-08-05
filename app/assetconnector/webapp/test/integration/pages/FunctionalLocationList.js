sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'assetconnector.assetconnector',
            componentId: 'FunctionalLocationList',
            contextPath: '/FunctionalLocation'
        },
        CustomPageDefinitions
    );
});