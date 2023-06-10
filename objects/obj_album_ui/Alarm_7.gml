/// @description Insert description here
// You can write your code in this editor
audio_play_sound(glow_sfx,0,false,global.master_volume*global.sfx_volume)
global.title_menu_animation2 = 1

var xx = room_width*0.5
var yy = room_height*0.5
repeat(irandom_range(8,10)*5)
{
	var random_dir = irandom_range(0,359)
	var effect_ = instance_create_depth(xx+lengthdir_x(image_xscale*250,random_dir),yy+lengthdir_y(image_xscale*250,random_dir),depth-10,movement_effect)
	effect_.image_xscale = 0.3
	effect_.image_yscale = 0.3
	effect_.direction = random_dir
	effect_.speed = 16
	effect_.image_blend = global.map_color
}

alarm[6] = 30