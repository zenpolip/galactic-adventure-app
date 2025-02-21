sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'spacefarerlist/fioriapp/test/integration/FirstJourney',
		'spacefarerlist/fioriapp/test/integration/pages/SpacefarersList',
		'spacefarerlist/fioriapp/test/integration/pages/SpacefarersObjectPage'
    ],
    function(JourneyRunner, opaJourney, SpacefarersList, SpacefarersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('spacefarerlist/fioriapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSpacefarersList: SpacefarersList,
					onTheSpacefarersObjectPage: SpacefarersObjectPage
                }
            },
            opaJourney.run
        );
    }
);