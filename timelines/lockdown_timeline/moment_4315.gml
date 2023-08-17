for(var i = -4; i <= 4; i++)
{
	show_debug_message("created")
	create_cylinder(room_width*0.5+i*266,global.c_h-8*abs(22)*(1+abs(i)),depth+15,3,1,64,270,0)
}