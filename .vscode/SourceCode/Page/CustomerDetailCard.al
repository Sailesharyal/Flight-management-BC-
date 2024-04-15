page 50313 "DetailCustomersCard"
{
    PageType = Card;
    SourceTable = "Detail Customers";

    layout
    {
        area(Content)
        {
            Group("Customer Detail")
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
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if Rec."Passport Expiry Date" < 0D then
                            Error('Your passport is Expired');
                    end;

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