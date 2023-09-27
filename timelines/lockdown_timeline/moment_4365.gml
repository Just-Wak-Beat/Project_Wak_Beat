for(var i = -4; i <= 4; i++)
{
	show_debug_message("created")
	create_cylinder(room_width*0.5+i*266,global.c_h-8*abs(22)*(1+abs(i)),depth+15,2,1+abs(i),64,270,0,false);
}

global.w_alpha = 1
global.lockdown_effect6 = 0;
spike_ef.t_scale = 0;
pipe_ef.t_scale = 0;