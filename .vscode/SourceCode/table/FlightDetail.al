table 50310 "Flight Detail"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Flight code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Flight Master";

        }

        field(5; "Airline Name"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Flight Master"."Airline Name" where("Flight code" = field("Flight code")));
        }

        field(10; "Direction"; Option)
        {
            OptionMembers = "","Arrival",Departure;
        }

        field(15; "Arrival Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(16; "Arrival Time"; Time)
        {
            DataClassification = ToBeClassified;
        }

        field(20; "Source Airport"; Text[50])
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            Var
                AirportRec: Record "Airport List";
            begin
                AirportRec.Reset();
                if page.RunModal(Page::"Airport List ", AirportRec) = Action::LookupOK then
                    "Source Airport" := AirportRec."Airport Name";

            end;

        }

        field(25; "Destination Airport"; Text[50])
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            Var
                AirportRec: Record "Airport List";
            begin
                if page.RunModal(Page::"Airport List ", AirportRec) = Action::LookupOK then
                    "Source Airport" := AirportRec."Airport Name";
            end;







        }

        field(30; "Departure Date"; Date)
        {
            DataClassification = ToBeClassified;


        }

        field(35; "Departure Time"; Time)
        {
            DataClassification = ToBeClassified;
        }





    }

    keys
    {
        key(Key1; "Flight code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}