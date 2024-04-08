table 50315 "BlacklistedPP"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Blacklisted Passport"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(key1; "Blacklisted Passport")
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