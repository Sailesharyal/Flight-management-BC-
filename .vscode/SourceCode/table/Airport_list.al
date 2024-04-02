table 50301 "Airport List"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Airport Code"; code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(5; "Airport Name"; text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(10; Address; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(15; City; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(20; State; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(25; "Country"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(30; "Start time"; Time)
        {
            DataClassification = ToBeClassified;
        }

        field(35; "Close time"; Time)
        {
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                Rec."Number of hours" := "Close time" - "Start time"
            end;


        }

        field(40; "Number of hours"; Duration)
        {
            DataClassification = ToBeClassified;
        }




    }

    keys
    {
        key(Key1; "Airport Code")
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