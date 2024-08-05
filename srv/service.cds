using { mercury as my } from '../db/schema';

// @path : '/service/AssetConnectorSvcs'
service mercuryconnectorService
{
    @odata.draft.enabled
    entity FunctionalLocation as
        projection on my.FunctionalLocation;

    @odata.draft.enabled
    entity Equipment as
        projection on my.Equipment;

    entity remoteEquip as 
        projection on my.remoteEquip;    

    entity remoteFuncloc as 
        projection on my.remoteFuncloc;    
}

annotate mercuryconnectorService with @requires :
[
    'authenticated-user'
];
