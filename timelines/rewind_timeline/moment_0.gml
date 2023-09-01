global.t_bg_color = 1
global.t_bg_color_alpha = 0
global.background_color = #424650
global.artifact_type = irandom_range(1,6)

global.map_color = #d892a6
if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 4080
	global.savepoint_color[0] = #424650

	global.savepoint_position[1] = 5760
	global.savepoint_color[1] = #424650
}



global.w_alpha = 1
for(var i = 0; i <= 12; i++)
{
	create_laser(room_width*0.5,room_height*0.5,60+abs(i)*2,20,0.1,0.1,1,i*30)
}
