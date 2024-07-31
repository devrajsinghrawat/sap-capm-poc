using mercuryconnectorService as service from '../../srv/service';
annotate service.FunctionalLocation with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'FunclocID',
                Value : FunclocID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FunclocDesc',
                Value : FunclocDesc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FunclocStructureInd',
                Value : FunclocStructureInd,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FunclocCategory',
                Value : FunclocCategory,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SupFunclocID',
                Value : SupFunclocID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SupFunclocLabel',
                Value : SupFunclocLabel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TechobjectType',
                Value : TechobjectType,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'FunclocID',
            Value : FunclocID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FunclocDesc',
            Value : FunclocDesc,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FunclocStructureInd',
            Value : FunclocStructureInd,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FunclocCategory',
            Value : FunclocCategory,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SupFunclocID',
            Value : SupFunclocID,
        },
    ],
);

