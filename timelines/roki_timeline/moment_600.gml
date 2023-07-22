global.roki_effect1 = 0
create_spike_circle(global.c_w+320,room_height*0.5,global.c_w-520,room_height*0.5,32,0,0,0.2)
create_spike_circle(global.c_x-320,room_height*0.5,global.c_x+520,room_height*0.5,32,0,0,0.2)




square.image_angle = 0
square.image_xscale = 5
square.image_yscale = 5
square.t_scale = 5
square.w_alpha = 10
square.automatic_angle = -10
for(var i = 0; i < 360; i += 90)
{
	var tmp = create_projectile_spin(room_width*0.5,room_height*0.5,spr_square,0.5,200,-9.5,0,10)
	tmp.image_angle = i
}


global.w_alpha = 1
global.map_color = #c9acd8
global.t_bg_color = 0.35
global.t_bg_color_alpha = 0.35