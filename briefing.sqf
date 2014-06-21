////////////////////////////////////
////			         //
//      Copyright © DF        //

//www.darkfraction.net     //
////////////////////////////////
///-SCRIPT INFORMATION-//
//Initializing Profile Default
//
//-SCRIPT CONDITONS-//
//Script Begins: On Server Initialization
//Script Ends  : On EOF

if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Mission Changelog"];
player createDiarySubject ["controls","Address Book & Controls"];
Player CreateDiarySubject ["Jail","Jail Times"];
player createDiarySubject ["rules","Commonly Broken Rules"];
player createDiarySubject ["bugs","TCG Website/TS3 Info"];
player createDiarySubject ["credits","Island Life Credits"];

player createDiaryRecord ["credits", 
[
"Island Life Mission Credits", 
"
<br/>
HAVE A GREAT GAME!<br/>
br/>
<br/>
<br/>
<br/>
"
]
];




player createDiaryRecord ["bugs", 
[
"Dark Fraction Island life", 
"
<br/>
Dark Fraction's website may be found at<br/>

www.darkfraction.net<br/>
<br/>
<br/>
Registering gives you access to our discussion forums<br/>

www.darkfraction.net
<br/>
<br/>
Please report any bugs with the mission at<br/>

Our Team Speak
<br/>
<br/>
Join your fellow players on Team Speak 3 at<br/>
5.39.93.223<br/>
"
]
];




player createDiaryRecord ["rules", 
[
"Commonly Broken Server Rules", 
"
Dark Fraction Island Life<br/>
<br/>
<br/>
A complete list of enforced server rules can be found online at<br/>

www.darkfraction.net/Rules<br/>
<br/>
There are no excuses for not reading these rules, and all rule-breakers will be dealt with accordingly--Administrators/Moderators will always have final say<br/>
<br/>
All COPs and ESU are REQUIRED to be on Our Team Speak 5.39.93.223<br/>
<br/>
Don't be a stupid troll, don't drive like shit for no reason, don't evade unless you really think its worth it... because you may find the jail times and tickets just got RIL. To balance it out, cops are really going to have to start driving carefully unless on a call or they are going to find themselves getting fired immediately by IA or any admin that sees them dicking around.<br/>
<br/>
-Admins have final say.<br/>
<br/>
-Hacking, exploiting or glitching will result in a ban.<br/>
<br/>
-Death matching is killing without reason. For example, looking for cops to kill just to kill them, or if a civ kills another civ for no legitimate reason. Civs and cops should only get into firefights for reasons relating to crimes.<br/>
<br/>
-Intentionally running over any other player, cop or civ, is not allowed. Ramming other players' vehicles is not vehicle DM, but you must have a reason to do so.<br/>
<br/>
-Intentionally crashing an aircraft is not allowed at any time or for any reason.<br/>
<br/>
-You may not report any crime when you are dead or any crime that you saw in a previous life. Once you are dead, you cannot give out any information over game chat or TS. This is called Ghosting<br/>
<br/>
-If you are zip tied you must roleplay as though you are restrained, the same rules and practices that apply to being restrained by the police also apply if zip tied by civs.<br/>
<br/>
-Civs may never rob each other or take each other hostage inside the green zone at civ spawn. However, civs may rob or attempt to capture police anywhere including the green zone.<br/>
<br/>
-REMOVING GUNS FROM ANY CAR OR HIDEOUT THAT YOU DONT OWN OR LOCKPICK is against the rules. -If a police officer has the right to search a hideout or vehicle, they do not need to use lockpicks to search it or remove any weapons/items from it as long as it's within the rules-<br/>
<br/>
-Re-spawning while restrained or being stunned, or to avoid capture in any way is cheating and will be punished accordingly.<br/>
<br/>
-If anyone is in a gang area that you own or a gang area that you are trying to capture, you may kill them (except firefighters)<br/>
<br/>
-If you're killed by a civ in a rival gang or a police officer, you get a new life. If you die by any other means you are still wanted after your death and do not get a new life.<br/>
<br/>
-Civilians with an unholstered weapon on gas station/bar/pharmacy property or in the immediate vicinity of the bank can be killed or arrested without warning.<br/>
<br/>
-The governor may carry a HOLSTER-ABLE weapon no matter how many guards he has.  The gov may not carry a primary weapon -a weapon that cannot be holstered-.<br/>
<br/>
-Pilots may only lift vehicles that they have keys to or have the owners permission.<br/>
<br/>
-Gangs are at war by default (except for 'roleplay gangs'...see below). There may be a peace treaty or alliance between gangs as long as it is agreed upon by both leaders.<br/>
<br/>
-'Roleplay gangs' are groups such as transportation companies, news organizations, etc. They are exempt from gang wars and may *NOT* capture gang areas. For example, a transport company holding a heroin processing point makes no sense.<br/>
<br/>
-It is a felony to land an air vehicle on any road, inside of town or out.  Obviously permission from the police to land renders such a landing legal.<br/>
<br/> 
-Civilian aircraft are never permitted land inside city limits -except on helipads or runways- unless given permission by the police chief, to land without permission inside city limits is a felony.<br/>  
<br/>
Make sure you read all the rules at darkfraction.net<br/>
"
]
];



player createDiaryRecord ["Jail", 
[
"Jail Times", 
"
<br/>

<br/>
"
]
];


player createDiaryRecord["controls",
[
"Donator House Address Book",
"
Island Life Address Book

"
]
];





player createDiaryRecord ["controls", 
[
"Animations Continued", 
"
urban prone LEFT:<br/>
	- move left: Left<br/>
	- move right: Right<br/>
	- back to prone: Z<br/>
	- move to urban prone RIGHT: MTB + Right<br/>
	- raise weapon: Forward<br/>
	- Blind fire: MTB + Left<br/>
urban prone Right:<br/>
	- back to prone: Z<br/>
	- raise weapon: Forward<br/>
	- raise weapon higher: MTB + Forward<br/>
	- move to urban prone RIGHT: MTB + Left<br/>
	- Blind fire: MTB + Right<br/>
panic move:<br/>
	- urban prone left: X<br/>
	- prone: Z<br/>
launcher standing:<br/>
        - launcher prone: fast + Backwards<br/>
launcher crouching:<br/>
	- launcher prone: fast + Backwards<br/>
pistol quick stand:<br/>
	- Blindfire left: MTB + Left<br/>
	- Blindfire right: MTB + Right<br/>
	- Blindfire overhead: MTB + Back<br/>
pistol normal hold:<br/>
        - when pistol out, toggle: c<br/>
Back to wall:<br/>
	- move left: Left<br/>
	- move right: Right<br/>
	- weapon round the corner: Forward<br/>
	- turn around and aim weapon forward: backwards<br/>
	- blindfire right: MTB + Right<br/>
	- blindfire overhead: MTB + Backwards<br/>
	- peak around the corner: MTB + Forward<br/>
	- go back to crouch: x<br/>
	- Grenade round the corner: choose grenade and throw<br/>
	- Grenade overhead throw: press salute and then do above<br/>
"
]
];





player createDiaryRecord ["controls", 
[
"Animations", 
"
DEFINE Turbo key (suggestion - Mouse thumb button)<br/>
using default key settings, if different, just replace the letter<br/>
Z - prone<br/>
X - crouch<br/>
C - stand<br/>
2xctrl - weapon down/up toggle<br/>
standing: <br/>
	- panic button: sitdown<br/>
	- blind fire left: MTB + Left<br/>
	- blind fire right: MTB + Right<br/>
	- blind fire up: MTB + Back<br/>
	- taunt: MTB + Back + Left (to play it smooth, first use direction keys then turbo)<br/>
	- quick lower your head: MTB + Back + Right<br/>
running forward:<br/>
	- jog pace: 2x ctrl<br/>
	- quick step over: step over<br/>
	- weapon down: C<br/>
sprinting:<br/>
	- slide: X<br/>
	- climb over the wall: C<br/>
crouching:<br/>
	- kneel: X<br/>
	- quick lower your head: MTB + Back + Right<br/>
	- blind fire left: MTB + Left<br/>
	- blind fire right: MTB + Right<br/>
	- blind fire up: MTB + Back<br/>
	- panic move: sitdown<br/>
	- sniper sit: getOver<br/>
	- back to wall: salute<br/>
kneeling: <br/>
	- crouch: X<br/>
other moves apply as in crouching<br/>
proning:<br/>
	- urban prone left: MTB + Left<br/>
	- urban prone right: MTB + Right<br/>
	- launcher proning: Select launcher<br/>

"
]
];




player createDiaryRecord ["controls", 
[
"IL Controls for New Players", 
"
Civilian:<br/>
#1: Stats<br/>
here is where you will find a great deal of useful information.  Anything from how much money you 
are carrying to who has a bounty and how much that bounty may be.<br/>
#2: Inventory:<br/>
-this will tell you what you are carrying and also provides an interface to use some of those 
items in your inventory.  For example, if your getting the measage, ""You Are Starving"" and you 
have 10 fish in your inventory.  Press the #2, highlight ""fish"", change the number in the box 
to ""10"", then click ""use"".  That will make your charactor eat the fish and you will loose 
some hunger (high hunger is a bad thing).  You may also notice ""key chain"" in your inventory.  
This will hold all your keys to the vehicles you own.  You can give these keys to other players 
via this interface but know that they need to be near you for something like 5 seconds to receive 
the item.<br/>
#3: Hands Up<br/>
This button will make your charactor put his hands up.  This is useful for when you want to show 
the coppers that you are not a threat and are cooperating.  They can then restrain you if they 
feel the need.
<br/>
#4: Hands Down<br/>
this button will return you to a normal pos from ""hands up"".
<br/>
E: Action<br/>
this button is your basic ""action button"".  this is how you will interact with the various 
interfaces around Chern such as shops and ATM's.  This will also allow you to attempt to steal 
from other players.  You can only steal money if the other player has been knocked unconscious or 
is restrained.
<br/>
T: Access Inventory<br/>
when you own a car or other vehicle, you can access that car's inventory by sitting in the drivers seat 
 and pressing ""T"".  You will then be shown two box's.  The left box is what is in the car, 
and the right box is what is in your inventory.  Highlight the object you want to transfer, then 
select the amount and press the button on the side that has the item.  Car's hold a certain 
amount of weight just like your charactor so be aware of what you stash in there.  Also, if your 
vehicle is destroyed then you will loose whatever you place in here.  Coppers can search for 
drugs or other ileagal items.  If they find them in your car it will disappear and the coppers 
gain money equal to the value of the drugs.
<br/>
left shift+F: Stun<br/>
If you have a gun in your hands, you can stand next to another player and perform a stun action.  
Be aware that this will knock all of the other players weapons out onto the ground, so if you 
don't want to piss everyone off, only do this to your enemies.
<br/>
0-0-6, 0-0-7, 0-0-8: shout outs<br/>
Press these buttons to shout out measages on the fly.  For civilians the default says ""Don't 
Shoot, I surrender!"".  For cops, it says a variety of things but mainly says, ""Put up your 
hands or your dead"" kinda thing.
<br/>
0-0: options<br/>
this should give you the options for video settings, shout outs, fix head bug, and even a quick-
brief tutorial on CLR.""
<br/>
Cops:<br/>
`(tilde key (to the left of the 1 key): COPMENU. allows you to set their bounties, set them free 
and more. you have more options if you use the copmenu whilst in a vehicle.
<br/>

"
]
];

player createDiaryRecord ["changelog", 
[
"IL Changelog", 
"<br/>





--Dark Fraction Emita<br/>
<br/>

"
]
];

player selectDiarySubject "changelog";