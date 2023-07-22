square = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-1,hitbox_11)
square.sprite_index = spr_square
square.t_scale = 5
square.shake_scale = 0
square.shake_dir = 0
square.t_angle = 0
square.w_alpha = 10
square.image_index = 0
square.image_xscale = 0
square.image_yscale = 0

for(var i = 0; i < 360; i += 90)
{
	var tmp = create_projectile_spin(room_width*0.5,room_height*0.5,spr_square,0.5,33,9.5,0,15)
	tmp.image_angle = i
}

