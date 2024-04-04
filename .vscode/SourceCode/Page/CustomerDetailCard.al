page 50313 "DetailCustomersCard"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Detail Customers";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Passanger Name"; Rec."Passanger Name")
                {
                    ApplicationArea = All;

                }


                field("Birthday Day"; Rec."Birthday Day")
                {
                    ApplicationArea = All;

                }

                field(Country; Rec.Country)
                {
                    ApplicationArea = All;

                }


                field("National ID No"; Rec."National ID No")
                {
                    ApplicationArea = All;

                }

                field("Passport Number"; Rec."Passport Number")
                {
                    ApplicationArea = All;

                }


                field("Passport Expiry Date"; Rec."Passport Expiry Date")
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