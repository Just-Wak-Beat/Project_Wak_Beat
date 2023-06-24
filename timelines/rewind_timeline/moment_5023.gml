if (global.t_selected_difficulty == 0 && !instance_exists(clock_hitbox_3))
{
	clock_hitbox_3 = instance_create_depth(room_width*0.5,room_height*0.5,player.depth-1,hitbox_11)
	clock_hitbox_3.t_scale = clock_hitbox.t_scale*1.01
	clock_hitbox_3.shake_scale = 0
	clock_hitbox_3.shake_dir = 0
	clock_hitbox_3.t_angle = 0
	clock_hitbox_3.sprite_index = spr_clock
	clock_hitbox_3.image_index = 0
}

clock_hitbox.t_angle += 30
clock_hitbox.image_xscale += 0.5 clock_hitbox.image_yscale += 0.5 clock_hitbox_2.image_xscale += 0.5 clock_hitbox_2.image_yscale += 0.5 
if(global.t_selected_difficulty == 0)
{
	clock_hitbox_3.image_xscale += 0.5 
	clock_hitbox_3.image_yscale += 0.5
	clock_hitbox_3.w_alpha = 1
	clock_hitbox_3.t_angle += 10
}

clock_hitbox.w_alpha = 1

