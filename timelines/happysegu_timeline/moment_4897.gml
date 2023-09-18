with(hitbox_parents)
{
	if (object_index != hitbox_4)
	{
		direction = point_direction(other.x,other.y,room_width*0.5,room_height*0.5);
		t_speed = 32;
		speed = 32;
		center_destroy = 1;
	}
}