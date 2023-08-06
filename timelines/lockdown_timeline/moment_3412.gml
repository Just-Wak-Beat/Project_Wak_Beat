for(var i = -10; i <= 10; i++)
{
	var _shaking_circle = create_explo_circle(room_width*0.5+i*256,spike_ef.y+200,1+abs(i)*5,9999,0,0,7,6,0,0)
	_shaking_circle.direction = 90
	_shaking_circle.sprite_index = spr_square
}