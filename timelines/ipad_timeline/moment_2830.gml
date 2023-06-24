global.background_color = #ff637a
global.map_color = #ff637a
global.t_bg_color = 0.22
global.w_alpha = 1

create_laser(room_width*0.5,global.c_y,65,150,4,3,3,180)

if (global.t_selected_difficulty == 0)
{
	for(var i = -4; i <= 4; i++)
	{
		show_debug_message("created")
		create_cylinder(room_width*0.35+i*68,global.c_h-8*abs(22)*(1+abs(i)),depth+15,0.5,1,64,270,0)
	}
}