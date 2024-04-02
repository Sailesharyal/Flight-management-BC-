page 50304 "Flight Master Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Flight Master";


    layout
    {
        area(Content)
        {
            group(Flight)
            {
                field("Flight Code"; Rec."Flight Code")
                {
                    ApplicationArea = All;

                }

                field("Airline Name"; Rec."Airline Name")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}