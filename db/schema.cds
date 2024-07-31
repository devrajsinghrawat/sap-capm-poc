namespace mercury;
 
using
{
    cuid,
    managed
}
from '@sap/cds/common';
 
entity FunctionalLocation : cuid, managed
{
    key FunclocID : String(50);
    FunclocDesc : String(100);
    FunclocStructureInd : String(5);
    FunclocCategory : String(1);
    SupFunclocID : String(50);
    SupFunclocLabel : String(50);
    TechobjectType : String(10);
    equi : Association to many Equipment on equi.floc = $self;
}
 
entity Equipment : cuid, managed
{
    EquipmentID : String(50);
    EquipmentDesc : String(100);
    EquipmentCategoty : String(1);
    TechobjectType : String(10);
    floc : Association to one FunctionalLocation;
}