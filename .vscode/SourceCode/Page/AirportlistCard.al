page 50301 "Airport Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Airport List";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Airport Code"; Rec."Airport Code")
                {
                    ApplicationArea = All;

                }
                field("Airport Name"; Rec."Airport Name")
                {
                    ApplicationArea = All;

                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;

                }

                field(Country; Rec.Country)
                {
                    ApplicationArea = All;

                }

                field(State; Rec.State)
                {
                    ApplicationArea = All;

                }

                field(Address; Rec.Address)
                {
                    ApplicationArea = All;

                }

                field("Start time"; Rec."Start time")
                {
                    ApplicationArea = All;
                }

                field("Close Time "; Rec."Close time")
                {
                    ApplicationArea = All;
                }

                field("Opening hours"; Rec."Number of hours")
                {
                    ApplicationArea = all;
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