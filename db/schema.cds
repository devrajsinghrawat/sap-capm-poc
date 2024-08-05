namespace mercury;

using {API_EQUIPMENT as equi} from '../srv/external/API_EQUIPMENT.csn';
using {API_FUNCTIONALLOCATION as floc} from '../srv/external/API_FUNCTIONALLOCATION.csn';
using { cuid, managed } from '@sap/cds/common';

entity FunctionalLocation : cuid, managed {
    key FunclocID           : String(50);
        FunclocDesc         : String(100);
        FunclocStructureInd : String(5);
        FunclocCategory     : String(1);
        SupFunclocID        : String(50);
        SupFunclocLabel     : String(50);
        TechobjectType      : String(10);
        equi                : Association to many Equipment
                                  on equi.FunclocID = $self.FunclocID;
}

entity Equipment : cuid, managed {
    EquipmentID       : String(50);
    EquipmentDesc     : String(100);
    EquipmentCategoty : String(1);
    TechobjectType    : String(10);
    FunclocID : String(50);
    floc              : Association to one FunctionalLocation on floc.FunclocID = FunclocID;
}

entity remoteEquip   as
    projection on equi.Equipment {
        key Equipment           as EquipmentID,
            EquipmentName       as EquipmentDesc,
            EquipmentCategory as EquipmentCategoty,
            TechnicalObjectType as TechobjectType,
            FunctionalLocation  as FunclocID
    }

entity remoteFuncloc as
    projection on floc.FunctionalLocation {
        key FunctionalLocation         as FunclocID,
            FunctionalLocationName     as FunclocDesc,
            FunctionalLocationCategory as FunclocCategory,
            TechnicalObjectType        as TechobjectType,
            SuperiorFunctionalLocation as SupFunclocID,
            SuperiorFuncnlLocLabelName as SupFunclocLabel
    }
