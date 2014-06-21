class TLUPhone
{
	name=TLUPhone;
	idd = -1;
	movingEnable = true;
	controlsBackground[] = {  TLUPhone_BackgroundPhoneText };
	objects[] = { };
	controls[] = { TLUPhone_SMSPress, TLUPhone_SMSApp};

class TLUPhone_BackgroundPhoneText: RscPicture
{
	moving = 1;
	type = CT_STATIC;
	style = ST_PICTURE;

	idc = 1200;
	text = "tluphone\tluphone.paa";
	x = 0.41392 * safezoneW + safezoneX;
	y = 0.296388 * safezoneH + safezoneY;
	w = 0.152237 * safezoneW;
	h = 0.533038 * safezoneH;
};
class TLUPhone_SMSPress : TLUPhoneApp_RscButton
{
	action = "call TLU_MobilePhone_GOSMS;";

	idc = 1602;
	x = 0.437553 * safezoneW + safezoneX;
	y = 0.449761 * safezoneH + safezoneY;
	w = 0.0322234 * safezoneW;
	h = 0.0549937 * safezoneH;
	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
};
class TLUPhone_SMSApp: RscPicture
{
	idc = 1202;
	text = "tluphone\SMSApp.paa";
	x = 0.437553 * safezoneW + safezoneX;
	y = 0.449761 * safezoneH + safezoneY;
	w = 0.0322234 * safezoneW;
	h = 0.0549937 * safezoneH;
};



};



