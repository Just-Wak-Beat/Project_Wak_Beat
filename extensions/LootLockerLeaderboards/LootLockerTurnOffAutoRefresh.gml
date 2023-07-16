#define LootLockerTurnOffAutoRefresh
ini_open("LootLockerConfiguration.ini");
ini_write_string("autoRefreshLeaderboard","bool","false");
ini_close();