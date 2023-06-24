create_explo_circle(global.c_x,room_height*0.5,60,670,1,0,2,0,0,0)
create_explo_circle(global.c_w,room_height*0.5,60,670,1,0,2,0,0,0)

if (global.t_selected_difficulty == 0)
{
	create_explo_circle(room_width*0.5,room_height*0.5,1,670,1,0,0.3,0,0,0)
	create_projectile_spin(room_width*0.5,room_height*0.5,spr_square,0.4,670,11,0,10)
}
