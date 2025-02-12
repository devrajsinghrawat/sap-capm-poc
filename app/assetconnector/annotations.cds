using mercuryconnectorService as service from '../../srv/service';
annotate service.FunctionalLocation with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Floc ID',
                Value : FunclocID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Floc description',
                Value : FunclocDesc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Floc Structure Indicator',
                Value : FunclocStructureInd,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Floc Category',
                Value : FunclocCategory,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sup Floc ID',
                Value : SupFunclocID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sup Floc Label',
                Value : SupFunclocLabel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Tech object Type',
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
            Label : 'Floc ID',
            Value : FunclocID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Floc Description',
            Value : FunclocDesc,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Floc Structure Indicator',
            Value : FunclocStructureInd,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Floc Category',
            Value : FunclocCategory,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Sup Floc ID',
            Value : SupFunclocID,
        },
    ],
);

