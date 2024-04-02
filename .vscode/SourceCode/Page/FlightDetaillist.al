page 50311 "Flight Detail List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Flight Detail";
    CardPageId = "Flight Detail Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("Flight code"; Rec."Flight code")
                {
                    ApplicationArea = All;

                }

                field("Airline Name"; Rec."Airline Name")
                {
                    ApplicationArea = All;

                }
                field("Source Airport"; Rec."Source Airport")
                {
                    ApplicationArea = All;

                }

                field("Destination Airport"; Rec."Destination Airport")
                {
                    ApplicationArea = All;

                }

                field("Arrival Date"; Rec."Arrival Date")
                {
                    ApplicationArea = All;

                }

                field("Arrival Time"; Rec."Arrival Time")
                {
                    ApplicationArea = All;

                }

                field("Departure Date"; Rec."Departure Date")
                {
                    ApplicationArea = All;

                }

                field("Departure Time"; Rec."Departure Time")
                {
                    ApplicationArea = All;

                }


            }
        }
        area(Factboxes)
        {

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
}