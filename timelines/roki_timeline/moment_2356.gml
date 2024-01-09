if (global.total_died_here > 0 && global.t_selected_difficulty == 1)
{
	square = instance_create_depth(global.c_x+640,room_height*0.5,obj_player.depth-3,hitbox_11)
	square.sprite_index = spr_spuare_outline
	square.t_scale = 0
	square.shake_scale = 0
	square.shake_dir = 0
	square.t_angle = 0
	square.w_alpha = 0
	square.image_index = 0
	square.image_xscale = 0
	square.image_yscale = 0
	
	square2 = instance_create_depth(global.c_w-640,room_height*0.5,obj_player.depth-3,hitbox_11)
	square2.sprite_index = spr_spuare_outline
	square2.t_scale = 0
	square2.shake_scale = 0
	square2.shake_dir = 0
	square2.t_angle = 0
	square2.w_alpha = 0
	square2.image_index = 0
	square2.image_xscale = 0
	square2.image_yscale = 0
}