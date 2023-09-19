using {
    managed,
    cuid,
    sap.common.CodeList
} from '@sap/cds/common';
namespace travel;
type Status
: String enum {
    Approved   = 'APD';
    Inprogress = 'INP';
    Reject     = 'RJT'
}
type TDate {
    departure : Date;
    return    : Date;
}
type TType         : String enum {
    National;
    International
}
type Mode          :
String enum {
    Flight     = 'Flight';
    Train      = 'Train';
    Car        = 'Car';
    Other      = 'Other'
}
type RoundTrip     : String enum {
    OneWay     = 'OneWay';
    TwoWay     = 'TwoWay';
}
type Billable      : String enum {
    Yes        = 'Yes';
    No         = 'No'
}
type Accomandation : String enum {
    Yes        = 'Yes';
    No         = 'No'
}

entity Passenger {
    id               : Integer;
    name             : String;
    no_of_passengers : Integer;
    billable         : Billable;
}
entity Travel {
    origin        : String;
    destination   : String;
    price         : Integer;
    Status        : Status;
    TDate         : TDate;
    TType         : TType;
    Mode          : Mode;
    RoundTrip     : RoundTrip;
    Accomandation : Accomandation;
}
