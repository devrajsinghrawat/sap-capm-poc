sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mercury/mercuryconnectorui/test/integration/FirstJourney',
		'mercury/mercuryconnectorui/test/integration/pages/FunctionalLocationList',
		'mercury/mercuryconnectorui/test/integration/pages/FunctionalLocationObjectPage',
		'mercury/mercuryconnectorui/test/integration/pages/EquipmentObjectPage'
    ],
    function(JourneyRunner, opaJourney, FunctionalLocationList, FunctionalLocationObjectPage, EquipmentObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mercury/mercuryconnectorui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFunctionalLocationList: FunctionalLocationList,
					onTheFunctionalLocationObjectPage: FunctionalLocationObjectPage,
					onTheEquipmentObjectPage: EquipmentObjectPage
                }
            },
            opaJourney.run
        );
    }
);