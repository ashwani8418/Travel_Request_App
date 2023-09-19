using travelService as service from '../../srv/service';

annotate service.Travel with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'origin',
            Value : origin,
        },
        {
            $Type : 'UI.DataField',
            Label : 'destination',
            Value : destination,
        },
        {
            $Type : 'UI.DataField',
            Label : 'price',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status_code',
            Value : Status_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'TType',
            Value : TType,
        },
        {
            $Type : 'UI.DataField',
            Value : Mode,
        },
        {
            $Type : 'UI.DataField',
            Value : RoundTrip,
            Label : 'RoundTrip',
        },
        {
            $Type : 'UI.DataField',
            Value : Status,
        },
    ]
);
annotate service.Travel with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'origin',
                Value : origin,
            },
            {
                $Type : 'UI.DataField',
                Label : 'destination',
                Value : destination,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status_code',
                Value : Status_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TType',
                Value : TType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Mode_code',
                Value : Mode_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RoundTrip_code',
                Value : RoundTrip_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Travel with @(
    UI.SelectionFields : [
        Mode,
        Status,
        TType,
    ]
);
annotate service.Travel with {
    Mode @Common.Label : 'Mode'
};
annotate service.Travel with {
    Status @Common.Label : 'Status'
};
annotate service.Travel with {
    TType @Common.Label : 'TType'
};
