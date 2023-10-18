if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 2490
	global.savepoint_color[0] = $FF190808
	global.savepoint_position[1] = 5320
	global.savepoint_color[1] = #833a55
}
global.artifact_type = 0
set_hitbox_color($FF007F16,0,room_width*0.5,room_height*0.5);
create_laser(global.c_x,global.c_y,65,532,10,2,5,180)
create_laser(global.c_w,global.c_y,125,462,10,2,5,180)