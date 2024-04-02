page 50306 "Flight Master List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Flight Master";
    CardPageId = "Flight Master Card";


    layout
    {
        area(Content)
        {
            repeater(Detail)
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