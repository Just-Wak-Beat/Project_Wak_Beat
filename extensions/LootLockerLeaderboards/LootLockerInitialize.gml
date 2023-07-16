#define LootLockerInitialize
global.LootLockerInitialized = false;
// Initialization

// If we are NOT running in the browser, delete the config-file
// This is to make sure that a new config file is used when playing desktop version
// otherwise an empty config file will be used for HTML5
//show_debug_message()
if(os_browser == browser_not_a_browser)
{
    ini_open(program_directory+"\LootLockerConfiguration.ini");
    exists = ini_read_string("exists", "value", "false");
    ini_close();

    if(exists == "false")
    {
        // Create a new one in standard folder instead
        ini_open("LootLockerConfiguration.ini");
        ini_write_string("exists", "value", "true")
        ini_close();
    }
}

// Store information
ini_open("LootLockerConfiguration.ini");
playerIdentifier = ini_read_string("playerIdentifier","id","");
sessionToken = ini_read_string("sessionToken","token","");
loginMapID = ini_read_string("loginMapID","id","-1");
resetMapID = ini_read_string("resetMapID","id","-1");
ini_write_string("playerNameMapID","id","-1");
ini_write_string("submitScoreMapID","id","-1");
ini_write_string("getHighscoresTopMapID","id","-1");
ini_write_string("getHighscoresCenteredMapID1","id","-1");
ini_write_string("getHighscoresCenteredMapID2","id","-1");
ini_write_string("autoRefreshLeaderboardAmount","count","10");
ini_write_string("leaderboardID","id",string(argument3));
// Save arguments in memory, needed for reset
global.gameAPIkey = string(argument0);
global.gameVersion = string(argument1);

// Convert argument to "bool-string"
var devModeBoolString = "false";
if(argument2 == false)
{
    devModeBoolString = "false"
}
else if(argument2 == true)
{
    devModeBoolString = "true";
}
global.LLdevelopmentMode = string(devModeBoolString);

// Cached player info
global.LootLockerPlayerID = ini_read_string("playerID","id","");
global.LootLockerPlayerName = ini_read_string("playerName","name","");
global.LootLockerPlayerRank = ini_read_string("LootLockerPlayerRank","rank","");
global.LootLockerPlayerScore = ini_read_string("LootLockerPlayerScore","score","");
global.LootLockerPlayerMetadata = ini_read_string("LootLockerPlayerMetadata","metadata","");
ini_close();

// Top highscores lists
global.LootLockerHighscoresTopRankList = array_create(100, " ");
global.LootLockerHighscoresTopNamesList = array_create(100, " ");
global.LootLockerHighscoresTopMetadataList = array_create(100, " ");
global.LootLockerHighscoresTopScoreList = array_create(100, " ");
global.LootLockerHighscoresTopIDList = array_create(100, " ");

//Formatted top
global.LootLockerHighscoresTopFormatted = "";

// Centered highscores lists
global.LootLockerHighscoresCenteredRankList = array_create(100, " ");
global.LootLockerHighscoresCenteredNamesList = array_create(100, " ");
global.LootLockerHighscoresCenteredMetadataList = array_create(100, " ");
global.LootLockerHighscoresCenteredScoreList = array_create(100, " ");
global.LootLockerHighscoresCenteredIDList = array_create(100, " ");

//Formatted center
global.LootLockerHighscoresCenteredFormatted = "";

// Send Start Guest session request
var url = "https://api.lootlocker.io/game/v2/session/guest";
var map = ds_map_create();
ds_map_add(map, "Content-Type","application/json");

var data = "{\"game_key\": \""+argument0+"\",\"player_identifier\":\""+playerIdentifier+"\", \"game_version\": \""+argument1+"\",\"development_mode\": \""+devModeBoolString+"\"}";
if(global.LLdevelopmentMode == true)
{
    show_debug_message("Sending LootLocker request: "+data);
}
loginMapID = http_request(url, "POST", map, data);

// Write loginmapID
ini_open("LootLockerConfiguration.ini");
loginMapID = ini_write_string("loginMapID","id",string(loginMapID));
ini_close();