global.w_alpha = 1
for(var i = -12; i <= 0; i++)
{
	create_laser(room_width*0.5,room_height*0.5,60+abs(i)*2,20,0.1,0.1,1,15+i*30)
}

clock_hitbox.t_scale = -0.01
clock_hitbox.t_angle = -360-180


clock_hitbox_2.t_scale = -0.01
if (global.t_selected_difficulty == 0)
{
	clock_hitbox_3.t_scale = -0.01
}