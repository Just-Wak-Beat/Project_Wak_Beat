for(var i = 0; i <= 6; i++)
{
create_laser(room_width*0.5,room_height*0.5,60+abs(i)*2,20,0.1,0.1,1,i*60)
}

clock_hitbox.automatic_angle = 0
clock_hitbox.automatic_angle_real = 0
clock_hitbox.w_alpha = 1
clock_hitbox.saved_color = global.background_color
clock_hitbox.saved_color_2 = global.map_color

if (global.t_selected_difficulty == 0)
{
	clock_hitbox_3.automatic_angle = 0
}

global.background_color = c_black
global.map_color = c_white
global.w_alpha = 1