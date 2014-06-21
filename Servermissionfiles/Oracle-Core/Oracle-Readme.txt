

---- ORACLE SAVING 1.0 ----
-- BASIC VERSION

FEATURES:

Save and load any variable/array, Very easy to use.
It will save and load until the server crashes or restarted... or the mission changes.

This is just a basic version i put together, in the future i will be making this alot more advanced, just wanted to 
see if it was of any use to anyone.


FUNCTIONS:

Oracle_Load -
Example: ["Bank_Money"] Call Oracle_Load; 
Note: You must have already saved the variable first under the name you enter, It should then load the correct variable/array for you

Oracle_Save -
Example: ["Bank_Money", 250] Call Oracle_Save;      
Example 2:  Bank_Money = 250;           ["Bank_Money", Bank_Money] Call Oracle_Save;
Note: This will save the variable/array under the selected name

Oracle_DeleteEntirePlayerSaved -
Example: Call Oracle_DeleteEntirePlayerSaved;
Note: This will delete the entire saved array for all players. EVERY THING SAVED WILL BE LOST

Oracle_DeletePlayerSaved -
Example ["Oracle"] Call Oracle_DeletePlayerSaved;
Note: This will reset every saved value of the player's name to 0


