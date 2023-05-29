/// @description Insert description here
// You can write your code in this editor
code.alarm[1] = 1
touched = 1
global.cannot_control = 1
global.show_rank = 1
audio_play_sound(show_rank_sfx,0,false,global.sfx_volume*global.master_volume)
//스킨 획득
event_user(2)