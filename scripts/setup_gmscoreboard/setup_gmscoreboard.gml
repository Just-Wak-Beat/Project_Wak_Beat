/// @description run this script at the start of your game to ensure required variables are setup.
function setup_gmscoreboard(_tagid1,_tagid2)
{
	global.tagid = [ _tagid1, _tagid2 ];
	global.gmscoreboard_response = [ -1, -1 ];
	global.gmscoreboard_scores = [ -1, -1 ];
	global.gmscoreboard_scores[0] = ds_list_create();
	global.gmscoreboard_scores[1] = ds_list_create();
}