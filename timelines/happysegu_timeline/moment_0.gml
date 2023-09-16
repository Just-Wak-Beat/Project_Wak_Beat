if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 2160
	global.savepoint_color[0] = c_black
}
global.artifact_type = 0
global.map_color = #52bcfe
global.t_bg_color = 1
global.t_bg_color_alpha = 1
global.camera_slow_zoom = 0.00025;
global.n_camera_zoom = 0.7;
global.automatic_camera_movement = 2;

global.background_color = #52bcfe
global.t_bg_color = 0.1
global.t_bg_color_alpha = 0
global.t_map_speed = 0
global.t_map_speed_y = 0
master_bpm_timer = 0


create_laser(global.c_x+223,room_height*0.5-2016*0.5,10,15,4,2,1,180)