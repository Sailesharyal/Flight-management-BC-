table 50304 "Flight Master"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Flight Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Airline Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Flight Code")
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