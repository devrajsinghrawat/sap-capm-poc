namespace mercury;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity FLoc : cuid, managed
{
    key FunctionalLocation : String(100);
    FunctionalLocationName : String(100);
    FuncLocationStructure : String(100);
    FunctionalLocationCategory : String(100);
    SuperiorFunctionalLocation : String(100);
    SuperiorFuncnlLocLabelName : String(100);
    TechnicalObjectType : String(100);
}

entity Equipment
{
    key ID : UUID;
}
