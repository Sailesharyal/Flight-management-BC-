page 50315 "Blacklisted list"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = BlacklistedPP;

    layout
    {
        area(Content)
        {
            repeater(Blocked)
            {
                field("Blacklisted Passport"; Rec."Blacklisted Passport")
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