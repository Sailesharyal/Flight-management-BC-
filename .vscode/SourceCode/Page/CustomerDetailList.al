page 50312 "DetailCustomerList"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Detail Customers";
    CardPageId = DetailCustomersCard;

    layout
    {
        area(Content)
        {
            repeater("Customer Detail")
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