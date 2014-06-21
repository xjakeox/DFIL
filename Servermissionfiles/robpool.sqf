robpoolsafe1 		 = 0; 
robpoolsafe2 		 = 0;
robpoolsafe3 		 = 0;
robpoolsafe4 		 = 0;
robpoolsafe5 		 = 0;

if(debug)then

{

robpoolsafe1 		 = 5000; 
robpoolsafe2 		 = 5000;
robpoolsafe3 		 = 5000;
robpoolsafe4 		 = 5000;
robpoolsafe5 		 = 5000;
robpoolsafe6 		 = 5000;
robpoolsafe7 		 = 5000;

};

while{true} do

{

if(robpoolsafe1 < maxinsafe)then{robpoolsafe1 = robpoolsafe1 + round random 2000; publicvariable "robpoolsafe1"};
sleep 5;
if(robpoolsafe2 < maxinsafe)then{robpoolsafe2 = robpoolsafe2 + round random 200; publicvariable "robpoolsafe2"};
sleep 5;
if(robpoolsafe3 < maxinsafe)then{robpoolsafe3 = robpoolsafe3 + round random 200; publicvariable "robpoolsafe3"};
sleep 5;
if(robpoolsafe4 < maxinsafe)then{robpoolsafe4 = robpoolsafe4 + round random 200; publicvariable "robpoolsafe4"};
sleep 5;
if(robpoolsafe5 < maxinsafe)then{robpoolsafe5 = robpoolsafe5 + round random 200; publicvariable "robpoolsafe5"};
sleep 5;
if(robpoolsafe6 < maxinsafe)then{robpoolsafe6 = robpoolsafe6 + round random 200; publicvariable "robpoolsafe6"};
sleep 5;
if(robpoolsafe7 < maxinsafe)then{robpoolsafe5 = robpoolsafe7 + round random 200; publicvariable "robpoolsafe5"};
sleep 10;

};
