/// @description Insert description here
// You can write your code in this editor

x -= 16


if player.x+player.image_xscale*32 >= x
{
instance_create_depth(room_width+128,irandom_range(0,room_height),player.depth-1,obj_stage_clear)

audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*1.3)
global.show_progress_bar = 0

global.w_alpha = 1
instance_destroy()
}