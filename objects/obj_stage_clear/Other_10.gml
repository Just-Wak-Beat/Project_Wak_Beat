/// @description Insert description here
// You can write your code in this editor
load_stage(global.stage_map_name[code.n_stage],global.stage_map_artist[code.n_stage],global.stage_map_audio_name[code.n_stage],global.stage_map_color[code.n_stage],global.stage_map_duration[code.n_stage],global.stage_bpm[code.n_stage])
global.highlight_time = 0
code.play_highlight = 1
global.select_map = code.n_stage+2
global.t_select_map = code.n_stage+2
code.gamestart = 3
global.t_bg_color = 1
global.t_bg_color_alpha = 1
code.alarm[1] = 1


