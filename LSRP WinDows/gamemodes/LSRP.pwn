/*
	South Central Roleplay by Emmet

	Description:

	  This script started development in February 2014 and finished exactly
	  3 months later. The script was released last year and it was full of bugs
	  that were left unfixed. Instead of abandoning the script I decided to update
	  it to the latest MySQL version and fixed a handful of bugs.

 	  SC:RP managed to get 70+ players with this script. It was a good run
 	  while it lasted. I've had many good memories coding and playing around
	  with this script. I've moved on from SA-MP now so hopefully this script
	  is stable enough for use.

	Things to consider:

    * "pHouse", "pBusiness" and "pEntrance" represent the SQL ID. Use
	  "GetHouseByID", "GetBusinessByID" and "GetEntranceByID" to get the enum ID
	  that can be used with "HouseData", "BusinessData" and "EntranceData".

	* "Inventory_Add" adds an item, "Inventory_Count" returns the quantity of the item
	  and "Inventory_Remove" removes an item. Use "Inventory_HasItem" to check if a player
	  has an item.

	Credits:

	* Emmet (original script)
 	* Apple (scripter)
 	* Risky (ran the server)
 	* Tyler (scripter - Working on the script since the released version on samp forums.)

	Copyright(c) 2012-2015 Emmet Jones (All rights reserved).
*/
#pragma disablerecursion
#pragma dynamic 500000

#include <a_samp>

#undef MAX_PLAYERS
#define MAX_PLAYERS (100)

#include <a_actor>
#include <a_mysql> // R39 - download it here: http://forum.sa-mp.com/showthread.php?t=56564
#include <foreach>
#include <easyDialog>
#include <eSelection>
#include <progress2>
#include <sscanf2>
#include <streamer>
#include <zcmd>
#include <strtok>
#include <fader>
#include <callback>
#include <YSI\y_areas>

//=========================== Base =================================|
#include "./Base/Gamemode.pwn" //									|
#include "./Base/Map.pwn" // 										|
//=========================== Map ==================================|
