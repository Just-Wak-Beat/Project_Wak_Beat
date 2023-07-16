#define LootLockerCallback

// Get values
ini_open("LootLockerConfiguration.ini");
playerIdentifier = ini_read_string("playerIdentifier","id"," ");
sessionToken = ini_read_string("sessionToken","token"," ");
loginMapID = ini_read_string("loginMapID","id","0");
getHighscoresTopMapID = ini_read_string("getHighscoresTopMapID","id","0");
getHighscoresCenteredMapID1 = ini_read_string("getHighscoresCenteredMapID1","id","0");
getHighscoresCenteredMapID2 = ini_read_string("getHighscoresCenteredMapID2","id","0");
resetMapID = ini_read_string("resetMapID","id","-1");
leaderboardID = ini_read_string("leaderboardID","id"," ");
autoRefreshLeaderboards = ini_read_string("autoRefreshLeaderboard","bool","true");
autoRefreshLeaderboardsAmount = ini_read_string("autoRefreshLeaderboardAmount","count","10");
global.LootLockerPlayerID = ini_read_string("playerID","id"," ");
global.LootLockerPlayerName = ini_read_string("playerName","name"," ");
global.LootLockerPlayerRank = ini_read_string("LootLockerPlayerRank","rank"," ");
global.LootLockerPlayerScore = ini_read_string("LootLockerPlayerScore","score"," ");
global.LootLockerPlayerMetadata = ini_read_string("LootLockerPlayerMetadata","metadata"," ");
playerNameMapID = ini_read_string("playerNameMapID","id","0");
submitScoreMapID = ini_read_string("submitScoreMapID","id","0");
ini_close();

// 0 == sucess, < 0 == fail, 1 == downloading data
asyncStatus = ds_map_find_value(async_load, "status");

if(asyncStatus == 0)
{
    asyncID = ds_map_find_value(async_load, "id");

    // Result
    var text = ds_map_find_value(async_load, "result");
    var data = json_parse(text);

    if(global.LLdevelopmentMode == true)
    {
        show_debug_message(string(data));
    }

    // Login Session
    if(asyncID == loginMapID)
    {
        global.LootLockerInitialized = true;

        // Store data
		ini_open("LootLockerConfiguration.ini");

		playerIdentifier = data.player_identifier;
        session_token = data.session_token;
		ini_write_string("playerIdentifier","id", playerIdentifier);
        ini_write_string("sessionToken","token", session_token);
        global.LootLockerPlayerID = data.player_id;
        ini_write_string("playerID","id", global.LootLockerPlayerID);
		ini_close();

        if(autoRefreshLeaderboards == "true" && leaderboardID != " ")
        {
            LootLockerGetHighscoresTop(string(leaderboardID), string(autoRefreshLeaderboardsAmount));
            LootLockerGetHighscoresCentered(string(leaderboardID), string(autoRefreshLeaderboardsAmount));
        }
    }
    else if(global.LootLockerInitialized == true)
    {
		if(asyncID == getHighscoresTopMapID)
		{
			global.LootLockerHighscoresTopRankList = array_create(100, " ");
			global.LootLockerHighscoresTopNamesList = array_create(100, " ");
			global.LootLockerHighscoresTopMetadataList = array_create(100, " ");
			global.LootLockerHighscoresTopScoreList = array_create(100, " ");
			global.LootLockerHighscoresTopIDList = array_create(100, " ");

			global.LootLockerHighscoresTopFormatted = "";
			for(var i = 0; i < array_length(data.items); i++)
			{
				// Top highscore lists
				global.LootLockerHighscoresTopRankList[i] = string(data.items[i].rank);
				global.LootLockerHighscoresTopNamesList[i] = string(data.items[i].player.name);
				global.LootLockerHighscoresTopMetadataList[i] = string(data.items[i].metadata);
				global.LootLockerHighscoresTopScoreList[i] = string(data.items[i].score);
				global.LootLockerHighscoresTopIDList[i] = string(data.items[i].player.id);

				// Full formatted string
				fullyFormatted = "";
				fullyFormatted += string(data.items[i].rank)+". ";
				if(string(data.items[i].player.name) == "")
				{
					fullyFormatted += string(data.items[i].player.id);
				}
				else
				{
					fullyFormatted += string(data.items[i].player.name);
				}
				// Trim the string if longer than 16 characters (for formatting)
				while(string_length(fullyFormatted) > 16)
				{
					fullyFormatted = string_delete(fullyFormatted, string_length(fullyFormatted), 1);
				}
				// Add some spaces
				while(string_length(fullyFormatted) < 22)
				{
					fullyFormatted += " ";
				}
				// Get length of score
				scoreLength = string_length(string(data.items[i].score));
				pos = string_length(fullyFormatted)-scoreLength;
				// Add it to the end
				fullyFormattedWithScore = string_insert(string(data.items[i].score), fullyFormatted, pos);
				// Remove characters at end
				while(string_length(fullyFormattedWithScore) > 22)
				{
					fullyFormattedWithScore = string_delete(fullyFormattedWithScore, string_length(fullyFormattedWithScore), 1);
				}
				global.LootLockerHighscoresTopFormatted += fullyFormattedWithScore+"\n";
			}
			ini_open("LootLockerConfiguration.ini");
			ini_write_string("getHighscoresTopMapID","id","0");
			ini_close();
		}
		else if(asyncID == playerNameMapID)
		{
			global.LootLockerPlayerName = data.name;
			ini_open("LootLockerConfiguration.ini");
			ini_write_string("playerName","name", global.LootLockerPlayerName);
			ini_close();
			if(global.LLdevelopmentMode == true)
			{
				show_debug_message("LootLocker changed players name to"+string(global.LootLockerPlayerName));
			}
			if(autoRefreshLeaderboards == "true" && leaderboardID != "")
			{
				LootLockerGetHighscoresTop(string(leaderboardID), string(autoRefreshLeaderboardsAmount));
				LootLockerGetHighscoresCentered(string(leaderboardID), string(autoRefreshLeaderboardsAmount));
			}
		}
		else if(asyncID == submitScoreMapID)
		{
			global.LootLockerPlayerRank = string(data.rank);
			global.LootLockerPlayerScore = string(data.score);
			ini_open("LootLockerConfiguration.ini");
			ini_write_string("submitScoreMapID","id","0");
			ini_write_string("LootLockerPlayerRank","rank", global.LootLockerPlayerRank);
			ini_write_string("LootLockerPlayerScore","score", global.LootLockerPlayerScore);
			ini_write_string("LootLockerPlayerMetadata","metadata", global.LootLockerPlayerMetadata);
			ini_close();

			if(global.LLdevelopmentMode == true)
			{
				show_debug_message("LootLocker submitted score to leaderboard");
			}
			if(autoRefreshLeaderboards == "true" && leaderboardID != "")
			{
				LootLockerGetHighscoresTop(string(leaderboardID), "10");
				LootLockerGetHighscoresCentered(string(leaderboardID), "10");
			}
		}
		else if(asyncID == getHighscoresCenteredMapID1)
		{
			
			if(data.member_id == "")
			{
				return;
			}
			// First step
			// Save player rank and values
			global.LootLockerPlayerRank = string(data.rank);
			if(global.LLdevelopmentMode == true)
			{
				show_debug_message("Player rank:"+global.LootLockerPlayerRank);
			}
			global.LootLockerPlayerName = string(data.player.name);
			global.LootLockerPlayerMetadata = string(data.metadata);
			global.LootLockerPlayerScore = string(data.score);
			global.LootLockerPlayerID = string(data.player.id);
			
			ini_open("LootLockerConfiguration.ini");
			ini_write_string("getHighscoresCenteredMapID1","id","-1");
			sessionToken = ini_read_string("sessionToken","token","");
			count = ini_read_string("getHighscoresCenteredCount","count",string(autoRefreshLeaderboardsAmount));
			// Cache player info
			ini_write_string("playerID","id",string(global.LootLockerPlayerID));
			ini_write_string("playerName","name",string(global.LootLockerPlayerName));
			ini_write_string("LootLockerPlayerRank","id",string(global.LootLockerPlayerRank));
			ini_write_string("LootLockerPlayerScore","id",string(global.LootLockerPlayerScore));
			ini_write_string("LootLockerPlayerMetadata","id",string(global.LootLockerPlayerMetadata));
			ini_close();

			// Middle value
			rank = real(global.LootLockerPlayerRank);
			
			if(rank < real(count/2)+1)
			{
				after = 0;
			}
			else
			{
				after = rank-real(count/2);
				after = ceil(after);
			}
			if(global.LLdevelopmentMode == true)
			{
				show_debug_message("After:"+string(after));
			}

			var url = "https://api.lootlocker.io/game/leaderboards/"+leaderboardID+"/list?count="+string(count)+"&after="+string(after);
			var map = ds_map_create();
			ds_map_add(map, "Content-Type","application/json");
			ds_map_add(map,"x-session-token", session_token);
			if(global.LLdevelopmentMode == true)
			{
				show_debug_message("LootLocker getting highscores for leaderboard:"+string(leaderboardID));
			}
			getHighscoresCenteredMapID2 = http_request(url, "GET", map, "");

			ini_open("LootLockerConfiguration.ini");
			ini_write_string("getHighscoresCenteredMapID1","id","-1");
			ini_write_string("getHighscoresCenteredMapID2","id", string(getHighscoresCenteredMapID2));
			ini_close();

			if(global.LLdevelopmentMode == true)
			{
				show_debug_message("LootLocker auto refreshing latest leaderboard");
			}
		}
		else if(asyncID == getHighscoresCenteredMapID2)
		{
			// Second call
			global.LootLockerHighscoresCenteredRankList = array_create(100, " ");
			global.LootLockerHighscoresCenteredNamesList = array_create(100, " ");
			global.LootLockerHighscoresCenteredMetadataList = array_create(100, " ");
			global.LootLockerHighscoresCenteredScoreList = array_create(100, " ");
			global.LootLockerHighscoresCenteredIDList = array_create(100, " ");

			global.LootLockerHighscoresCenteredFormatted = "";

			for(var i = 0; i < array_length(data.items); i++)
			{
				// Top highscore lists
				global.LootLockerHighscoresCenteredRankList[i] = string(data.items[i].rank);
				global.LootLockerHighscoresCenteredNamesList[i] = string(data.items[i].player.name);
				global.LootLockerHighscoresCenteredMetadataList[i] = string(data.items[i].metadata);
				global.LootLockerHighscoresCenteredScoreList[i] = string(data.items[i].score);
				global.LootLockerHighscoresCenteredIDList[i] = string(data.items[i].player.id);

				// Full formatted string
				fullyFormatted = "";
				fullyFormatted += string(data.items[i].rank)+". ";
				if(string(data.items[i].player.name) == "")
				{
					fullyFormatted += string(data.items[i].player.id);
				}
				else
				{
					fullyFormatted += string(data.items[i].player.name);
				}
				// Trim the string if longer than 16 characters (for formatting)
				while(string_length(fullyFormatted) > 16)
				{
					fullyFormatted = string_delete(fullyFormatted, string_length(fullyFormatted), 1);
				}
				// Add some spaces
				while(string_length(fullyFormatted) < 22)
				{
					fullyFormatted += " ";
				}
				// Get length of score
				scoreLength = string_length(string(data.items[i].score));
				pos = string_length(fullyFormatted)-scoreLength;
				// Add it to the end
				fullyFormattedWithScore = string_insert(string(data.items[i].score), fullyFormatted, pos);
				// Remove characters at end
				while(string_length(fullyFormattedWithScore) > 22)
				{
					fullyFormattedWithScore = string_delete(fullyFormattedWithScore, string_length(fullyFormattedWithScore), 1);
				}
				global.LootLockerHighscoresCenteredFormatted += fullyFormattedWithScore+"\n";
			}
			ini_open("LootLockerConfiguration.ini");
			ini_write_string("getHighscoresCenteredMapID2","id","-1");
			ini_close();
		}
		else if(asyncID == resetMapID)
		{
			LootLockerInitialize(string(global.gameAPIkey), string(global.gameVersion), string(global.LLdevelopmentMode), string(leaderboardID));
			ini_open("LootLockerConfiguration.ini");
			ini_write_string("resetMapID","id","-1");
			ini_close();
		}
    }
	else
	{
		show_debug_message("LootLocker has not been initialized, check if global.LootLockerInitialized is true before calling other functions")
	}
}
else if(asyncStatus < 0)
{
    if(global.LLdevelopmentMode == true)
    {
        show_debug_message("LootLocker failed async, error: "+string(asyncStatus));
    }
}