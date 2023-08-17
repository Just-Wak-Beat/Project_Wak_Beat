/// @description Insert description here
// You can write your code in this editor
if global.dev_mode = 1 
{
	if (keyboard_check_pressed(ord("H")))
	{
		global.level--;
	}
	else if (keyboard_check_pressed(ord("E")))
	{
		global.hp = 0
	}
	else if (keyboard_check_pressed(ord("Y")))
	{
		global.exp = global.max_exp+1;
	}
	else if (keyboard_check_pressed(ord("F")))
	{
		instance_create_depth(global.c_w+128,irandom_range(global.c_y,global.c_h),obj_player.depth-1,obj_stage_clear)
	}
	else if (keyboard_check_pressed(ord("G")))
	{
		var save_ = instance_create_depth(room_width,0,obj_player.depth+1,obj_savepoint)
		save_.n_savepoint_position = global.savepoint_position[instance_number(obj_savepoint)-1]
		save_.n_color = global.savepoint_color[instance_number(obj_savepoint)-1]
	}
	else if (keyboard_check_pressed(ord("R")))
	{
		game_restart()
	}
}