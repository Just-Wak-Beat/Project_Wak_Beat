/// @description run this script at the start of your game to ensure required variables are setup.
function setup_gmscoreboard(_tagid){
	global.tagid = _tagid;
	global.gmscoreboard_response = -1;
	global.gmscoreboard_scores = ds_list_create();
}