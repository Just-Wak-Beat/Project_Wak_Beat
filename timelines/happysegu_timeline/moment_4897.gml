with(hitbox_parents)
{
	if (sprite_index != spr_circle && sprite_index != spr_square_laser)
	{
		direction = point_direction(x,y,room_width*0.5,room_height*0.5);
		t_speed = 50;
		speed = 50;
		center_destroy = 1;
		image_alpha = 0.99
	}
}

