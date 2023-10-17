clock_hitbox_2.t_scale = 4.25
clock_hitbox.t_scale = 2.8

if (global.t_selected_difficulty == 0)
{
	clock_hitbox_3.t_scale = clock_hitbox.t_scale*1.01
}

set_hitbox_color($FFDB83BF,1,room_width*0.5,room_height*0.5);
global.w_alpha = 1