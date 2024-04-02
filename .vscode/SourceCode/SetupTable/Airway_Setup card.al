page 50300 "Airway Setup"
{

    PageType = Card;
    SourceTable = "Airway Setup";
    Caption = 'Airway Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;


    layout
    {
        area(content)
        {
            group(General)
            {
                field(Enable; Rec.Enable)
                {
                    ApplicationArea = All;
                }

                field("Notification Email"; Rec."Notification Email")
                {
                    ToolTip = 'Write down your email';
                    ApplicationArea = All;
                }

            }
        }

    }


    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

}
