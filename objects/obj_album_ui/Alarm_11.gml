/// @description Insert description here
// You can write your code in this editor

//메인매뉴 처음 노래 선택
event_user(1)
global.b_t_select_map = code.n_stage+2
global.t_select_map = code.n_stage+2
global.tutorial_played = 0;

var n_stage = code.n_stage
load_stage(global.stage_map_name[n_stage],global.stage_map_artist[n_stage],global.stage_map_audio_name[n_stage],global.stage_map_color[n_stage],global.stage_map_duration[n_stage],global.stage_bpm[n_stage])
alarm[10] = 400
alarm[9] = 240


