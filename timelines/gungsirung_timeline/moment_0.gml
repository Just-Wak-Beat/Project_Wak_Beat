
if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 1680
	global.savepoint_color[0] = #fbd780
}


global.automatic_camera_movement = 2;
global.artifact_type = 6
set_hitbox_color(#fbd780,0,room_width*0.5,room_height*0.5);
global.background_color = #d7bb2c
global.t_bg_color_alpha = 0
global.t_bg_color = 0
global.t_map_speed = 0
global.map_speed = 0

var scale = 1
var _misile_ = create_circle_misile(global.c_x,irandom_range(global.c_y+128,global.c_h-128),20.8*scale,15,0,0,scale*0.3)
_misile_.direction = 0
_misile_.image_angle = 0
_misile_.speed = 132*scale/5