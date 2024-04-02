table 50300 "Airway Setup"
{
    fields
    {
        field(1; "Enable"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Notification Email"; Text[30])
        {
            DataClassification = ToBeClassified;

        }

        field(3; "Primary key"; code[20])
        {
            DataClassification = ToBeClassified;
        }

        //You might want to add fields here

    }

    keys
    {
        key(Key1; "Primary key")
        {
            Clustered = true;
        }
    }

    var
        RecordHasBeenRead: Boolean;


    procedure GetRecordOnce()
    begin
        if RecordHasBeenRead then
            exit;
        Get();
        RecordHasBeenRead := true;
    end;

    procedure InsertIfNotExists()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;


}