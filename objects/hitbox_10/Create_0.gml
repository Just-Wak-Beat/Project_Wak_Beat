/// @description Insert description here
// You can write your code in this editor

//일반 탄막
image_blend = global.map_color

des = 0
timer__ = 0
w_alpha = 1

if audio_is_playing(gungsirung)
{
	w_alpha = 0
}

alarm[1] = 1

if audio_is_playing(ipad)
{
	sprite_index = spr_cross
}
