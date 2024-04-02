page 50307 "Think Airway"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            group("This is a Home screen for the flight. Use action button to go to others pages")
            {

            }
        }
    }

    actions
    {
        area(Navigation)
        {

            action("GO To SeTUP Table")
            {
                ApplicationArea = All;
                RunObject = Page "Airway Setup";
                Promoted = true;
                PromotedIsBig = true;
            }

            action("GO to Flight Master List")
            {
                ApplicationArea = All;
                RunObject = Page "Flight Master List";
                Promoted = true;
                PromotedIsBig = true;
            }

            // action("GO to Flight Master Card")
            // {
            //     ApplicationArea = All;
            //     RunObject = Page "Flight Master Card";
            //     Promoted = true;
            //     PromotedIsBig = true;
            // }

            action("Go to Airport list page")
            {
                ApplicationArea = All;
                RunObject = page "Airport List ";
                Promoted = true;
                PromotedIsBig = true;
            }
            // action("Go to Airport Card page")
            // {
            //     ApplicationArea = All;
            //     RunObject = page "Airport Card Page";
            //     Promoted = true;
            //     PromotedIsBig = true;
            // }

            action("Go to Flight Detail list Page")
            {
                ApplicationArea = All;
                RunObject = page "Flight Detail List";
                Promoted = true;
                PromotedIsBig = true;
            }

            // action("Go to Flight Detail Card Page")
            // {
            //     ApplicationArea = All;
            //     RunObject = page "Flight Detail List";
            //     Promoted = true;
            //     PromotedIsBig = true;
            // }


        }

    }

    var
        myInt: Integer;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Message('Welcome to Think Airway');
    end;
}