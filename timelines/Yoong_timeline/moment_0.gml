if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 1200
	global.savepoint_color[0] = #d6d5c1

	global.savepoint_position[1] = 2580
	global.savepoint_color[1] = #d6d5c1
}
global.artifact_type = 0

global.yoong_laser_dir = 0
global.yoong_laser_dir2 = 0
cre_now1 = 0
cre_now2 = 0
random_dir_laser = choose(-1,1)
random_dir_laser2 = choose(-1,1)

global.background_color = #d6d5c1
global.t_bg_color = 0
global.t_bg_color_alpha = 0
global.t_map_speed = 0
global.t_map_speed_y = 0
global.quake_effect = 0
instance_destroy(hitbox_parents)
