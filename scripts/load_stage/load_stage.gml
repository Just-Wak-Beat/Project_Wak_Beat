// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param n_music_title
///@param n_music_artist
///@param n_music_name
///@param map_color
///@param music_duration
function load_stage(argument0,argument1,argument2,argument3)
{
global.n_music_title = argument0
global.n_music_artist = argument1
global.n_music_name = argument2
global.map_color = argument3
global.music_duration = argument4 //x60된 값(프레임 값 보정) > origin = 115 sec
}