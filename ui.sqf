/*
www.DarkFraction.net
DFIL
 
Edits by Juan (alive timer & hacker alert)
*/
if (isnil "minsalive") then {minsalive = 0;};
if (isnil "hoursalive") then {hoursalive = 0;};
 
[] spawn
{
        while {true} do
        {
                sleep 60;
               
                if ((isdead==1) or (!alive player)) then
                {
                        hoursalive = 0;
                        minsalive = -1; //Fix? Started at 1 when set at 0.
                        waituntil {alive player};
                };
                minsalive = minsalive + 1;
                if(minsalive==60) then
                {
                        hoursalive = hoursalive + 1;
                        minsalive = 0;
                };
        };
};
 
 
 
[] spawn
{
        disableSerialization;
        100 cutRsc ["RPP_Dlg_ui", "PLAIN"];
        while {true} do
        {
                //generic vars
                _money = (('Mishy' call INV_GetItemAmount) call ISSE_str_IntToStr);
                _weight = [] call INV_GetOwnWeight;
                _maxWeight = INV_Tragfaehigkeit;
                _hunger = round(INV_hunger);
                _health = 100-(round((damage player) * 100));
                _id = getPlayerUID player;
                _maxbank = (bnkgeld call ISSE_str_IntToStr);
                _hackeralert = if (hackerjustloggedin) then {"HACKER ALERT CHECK GLOBAL CHAT NOW"};
                [] spawn
                {
	                if (hackerjustloggedin) then {sleep 15; hackerjustloggedin = false; publicVariable "hackerjustloggedin";};
	          };
                
 
 
                ((RPP_display_ui select 0) displayCtrl 1) ctrlSetStructuredText parseText format["<t align='center'><t shadow='1'shadowColor='#000000'><t color='#D62B2B'>Dark Fraction Island Life - </t><t color='#08A300'>Money: <t color='#68C900'>Inventory $%1 -<t color='#68C900'> Account $%6<t color='#D62B2B'> - <t color='#D62B2B'>Weight/Max: %2/%3 <t color='#D62B2B'>-<t color='#D62B2B'> Health: %4 <t color='#D62B2B'>-<t color='#D62B2B'> Time Alive [%8:%7] <t color='#D62B2B'>-<t color='#D62B2B'> ID: %5</t> <t color='#D62B2B'>-</t> <t color='#D62B2B'>TS3 IP: 5.39.93.223</t><br/><t color='#D62B2B'>%9<br/><t color='#D62B2B'>%9<br/><t color='#D62B2B'>%9<br/><t color='#D62B2B'>%9<br/><t color='#D62B2B'>%9<br/><t color='#D62B2B'>%9<br/><t color='#D62B2B'>%9<br/><t color='#D62B2B'>%9", _money, _weight, _maxWeight, _health, _id,  _maxbank, minsalive, hoursalive,_hackeralert];
                sleep 1;
        };
};