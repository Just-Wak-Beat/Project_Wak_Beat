

if !instance_exists(clock_hitbox)
{
clock_hitbox = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-2,hitbox_11)
clock_hitbox.t_scale = 3.3
clock_hitbox.shake_scale = 8
clock_hitbox.shake_dir = 0
clock_hitbox.t_angle = -180
clock_hitbox.sprite_index = spr_clock
clock_hitbox.image_index = 0


clock_hitbox_2 = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-1,hitbox_11)
clock_hitbox_2.t_scale = 3.91
clock_hitbox_2.shake_scale = 0
clock_hitbox_2.shake_dir = 0
clock_hitbox_2.t_angle = 0
clock_hitbox_2.sprite_index = spr_clock
clock_hitbox_2.image_index = 2

	if (global.t_selected_difficulty == 0)
	{
		clock_hitbox_3 = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-1,hitbox_11)
		clock_hitbox_3.t_scale = clock_hitbox.t_scale*1.01
		clock_hitbox_3.shake_scale = 0
		clock_hitbox_3.shake_dir = 0
		clock_hitbox_3.t_angle = 0
		clock_hitbox_3.sprite_index = spr_clock
		clock_hitbox_3.image_index = 0
	}


heart_hitbox = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-1,hitbox_11)
heart_hitbox.sprite_index = spr_heart
heart_hitbox.t_scale = 0
heart_hitbox.shake_scale = 0
heart_hitbox.shake_dir = 0
heart_hitbox.t_angle = 0
}