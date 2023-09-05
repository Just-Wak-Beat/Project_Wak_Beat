if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 4080
	global.savepoint_color[0] = #59444b
}
global.t_bg_color = 0
global.t_bg_color_alpha = 0
global.artifact_type = 1
global.automatic_camera_movement = 3;

for(var i = 0; i <= 64; i++)
{
	var _shaking_circle = create_explo_circle(global.c_x+i*64,global.c_y+64,1+i*10,7200,0,0,0.18,2,0,0)
	_shaking_circle.direction = 90
}