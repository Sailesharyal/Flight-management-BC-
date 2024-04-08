table 50314 "Detail Customers"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Passanger Name"; Text[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(2; "Passport Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if Rec."Passport Number" = Blacklisted."Blacklisted Passport" then
                    Message('This is blocked passport');
            end;

        }

        field(3; "Birthday Day"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(4; Country; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }

        field(5; "Passport Expiry Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;


            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if Rec."Passport Expiry Date" < 0D then
                    Error('Your passport is Expired');
            end;




        }

        field(6; "National ID No"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; "Passport Number")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        Blacklisted: Record BlacklistedPP;

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

