class Siren_Short 

{

name     = "";	
sound[]  = {"\Siren_Short.ogg", 1, 1};
titles[] = {};

};

class Siren_Long 

{

name     = "";
sound[]  = {"\Siren_Long.ogg", 1, 1};
titles[] = {};

};

class Bank_alarm 

{

name     = "";
sound[]  = {"\bankalarm.ogg", 1, 1};
titles[] = {};

};

class alarm4

{

name     = "";
sound[]  = {"\alarm4.ogg", 1, 1};
titles[] = {};

};

class Forest_fire 

{

name     = "";
sound[]  = {"\snd\ForestFire1.ogg", 4, 2};
titles[] = {};

};

class Flash_Bang 

{

name     = "";
sound[]  = {"\snd\Flashbang.ogg", 4, 1};
titles[] = {};

};

class netcops 

{

name     = "";
sound[]  = {"\snd\netcops.ogg", 1, 1};
titles[] = {};

};

class iramusic
{
name = "IRAsong"; // Name for mission editor
sound[] = {"\snd\IRAsong.ogg", 1, 1};
titles[] = {};
};

class redarmymusic
{
name = "redarmy"; // Name for mission editor
sound[] = {"\snd\redarmy.ogg", 1, 1};
titles[] = {};
};
 
   class DuctTapeStrap
  {
   name = "";
   sound[] = {"\snd\DuctTapeStrap.ogg", 1, 1};
   titles[] = {};
  };

   class Unlock : DuctTapeStrap {sound[] = {"\snd\Unlock.ogg", db+11, 1};}; 
   class Scroll : DuctTapeStrap {sound[] = {"\snd\Scroll.ogg", db-10, 1};}; 
   class Thingie : DuctTapeStrap {sound[] = {"\snd\Thingie.ogg", 1, 1};}; 

class carallarm
	{
		name = "carallarm"; // Name for mission editor
		sound[] = {\snd\carallarm.ogg, 4, 1};
		titles[] = {0, ""};
	};