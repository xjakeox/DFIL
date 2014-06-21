if(debug)then{['Mishy', 999999] call INV_AddInvItem};
StartMishy                = 25000;
maxcopbonus		 = 3000;
maxcivbonus 	 	 = 3000;
robb_timeSperre          = 1200;   
local_useBankPossible    = true;  
maxinsafe                = 150000;
BankRaubKontoverlust     = 4000;  
ShopRaubKontovershop     = 0;
ShopRaubProzentVershop   = 0;
rblock			 = 0;
stolencash		 = 0;
Maxbankrobpercentlost    = 0.1; 
bank_steuer              = 1;     
zinsen_prozent           = 0;     
zinsen_dauer             = 1200;   
robenable              	 = true;     
bnkgeld               = StartMishy; 
shopflagarray            = [shop1,shop2,shop3,shop4];
bankflagarray            = [mainbank,copbank,atm1,atm2,atm3,atm4,atm5,atm6,atm7,atm8,atm9,atm10,airatm,atmpf,vipatm1,vipatm1_1,vipatm1_2,vipatm1_3,gunatm,house1,house2,house3,house4,house5,house6,house7,house8,house9,house10,house11,house13,T1ATM,T2ATM,T3ATM,TXATM,fbiatm,swatatm,topshotzatm,IRAatm];
speedcamarray            = [speed1,speed2,speed3,speed4,speed5,speed6,speed7,speed8,speed9];
drugsellarray		 = [mdrugsell,cdrugsell,ldrugsell,hdrugsell,whalesell,methsell];
TankstellenArray         = 

[
fuelshop1,fuelshop2,fuelshop3,fuelshop4,fuelshop5,fuelshop6,fuelshop7,fuelshop8,fuelshop9
/*
(nearestobject[getpos fuelshop1,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop2,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop3,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop4,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop5,"Land_A_Fuelstation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_benzina_schnell","Land_fuelstation_army"],20])
*/
];

