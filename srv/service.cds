using { mercury as my } from '../db/schema';

@path : '/service/AssetConnectorSvcs'
service mercuryconnectorService
{
    @odata.draft.enabled
    entity FunctionalLocation as
        projection on my.FunctionalLocation;

    @odata.draft.enabled
    entity Equipment as
        projection on my.Equipment;
}

annotate mercuryconnectorService with @requires :
[
    'authenticated-user'
];
