global.artifact_type = 2


if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 2356
	global.savepoint_color[0] = #424278
}

camera_focus_on(-4,-4,1)
global.artifact_type = 6
set_hitbox_color(#424278,1,room_width*0.5,room_height*0.5);
global.background_color = #424278
global.t_bg_color_alpha = 0
global.t_bg_color = 0
global.t_map_speed = 0
global.map_speed = 0
global.roki_effect1 = 0

create_spike_circle(global.c_w+320,room_height*0.5,global.c_w-520,room_height*0.5,30,0,0,0.2)
create_spike_circle(global.c_x-320,room_height*0.5,global.c_x+520,room_height*0.5,30,0,0,0.2)

create_laser(room_width*0.5,global.c_y,60,80,4,2,2,180)