create_spike_circle(global.c_w+320,room_height*0.5,global.c_w-520,room_height*0.5,32,0,0,0.2)
create_spike_circle(global.c_x-320,room_height*0.5,global.c_x+520,room_height*0.5,32,0,0,0.2)

global.w_alpha = 1
square.w_alpha = 10
square.automatic_angle = -10

for(var i = 0; i < 360; i += 90)
{
	var tmp = create_projectile_spin(room_width*0.5,room_height*0.5,spr_square,0.5,200,-9.5,0,10)
	tmp.image_angle = i
}


