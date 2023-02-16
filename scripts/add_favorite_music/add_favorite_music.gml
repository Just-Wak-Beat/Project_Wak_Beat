// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_favorite_music()
{
//현재 좋아요한 갯수
var i = global.fav_n_music_num;

//노래 고유 번호
var ii = global.fav_map_origin_id[i];

//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
global.fav_map_name[i] = global.stage_map_name[ii];
global.fav_map_artist[i] = global.stage_map_artist[ii];
global.fav_map_difficulty[i] = global.stage_map_difficulty[ii];
global.fav_map_color[i] = global.stage_map_color[ii];
global.fav_map_duration[i] = global.stage_map_duration[ii];
global.fav_map_audio_name[i] = global.stage_map_audio_name[ii];
global.fav_bpm[i] = global.stage_bpm[ii];
global.fav_map_highlight_part[i] = global.stage_map_highlight_part[ii];
global.fav_n_rank[i] = global.n_rank[ii];
global.fav_n_artifact[i] = global.n_artifact[ii];
global.fav_detailed_difficulty[i] = global.detailed_difficulty[ii];
global.fav_requirement_type[i] = global.requirement_type[ii];
global.fav_requirement_number[i] = global.requirement_number[ii];
}