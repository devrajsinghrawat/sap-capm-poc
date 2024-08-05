sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'assetconnector/assetconnector/test/integration/FirstJourney',
		'assetconnector/assetconnector/test/integration/pages/FunctionalLocationList',
		'assetconnector/assetconnector/test/integration/pages/FunctionalLocationObjectPage'
    ],
    function(JourneyRunner, opaJourney, FunctionalLocationList, FunctionalLocationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('assetconnector/assetconnector') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFunctionalLocationList: FunctionalLocationList,
					onTheFunctionalLocationObjectPage: FunctionalLocationObjectPage
                }
            },
            opaJourney.run
        );
    }
);