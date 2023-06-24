global.ipad_effect = 1
global.w_alpha = 1


if (global.t_selected_difficulty == 0)
{
	for(var i = 0; i <= 5; i++)
	{
		show_debug_message("created")
		create_cylinder(global.c_x+i*68,global.c_h-8*abs(22)*(1+abs(i)),depth+15,0.5,1,64,270,0)
		
		create_cylinder(global.c_w-i*68,global.c_h-8*abs(22)*(1+abs(i)),depth+15,0.5,1,64,270,0)
	}
}