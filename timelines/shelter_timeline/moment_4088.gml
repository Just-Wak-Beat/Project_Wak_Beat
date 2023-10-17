set_hitbox_color($FF571DFF,1,room_width*0.5,room_height*0.5);
heart_hitbox.w_alpha = 1
heart_hitbox.image_angle = 90
heart_hitbox.t_angle = 0
heart_hitbox.automatic_angle = 0
global.w_alpha = 0.1



square_outline_hitbox1.t_scale = 25
square_outline_hitbox1.w_alpha = 1


square_outline_hitbox2.t_scale = 25
square_outline_hitbox2.w_alpha = 1


if (global.t_selected_difficulty == 0)
{
	create_projectile_spin(room_width*0.5,room_height*0.5,spr_square,0.4,1100,11,0,10)
}