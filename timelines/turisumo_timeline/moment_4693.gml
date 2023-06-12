global.t_turisumo_effect_scale = 240
global.w_alpha = 1


for(var i = -9; i <= 9; i++)
{
	create_cylinder(room_width*0.5-820+i*68,global.c_h-8*abs(15)*(1+abs(i)*0.5),depth+15,0.5,1,64,270,0)
	create_cylinder(room_width*0.5+820+i*68,global.c_h-8*abs(15)*(1+abs(i)*0.5),depth+15,0.5,1,64,270,0)
}


