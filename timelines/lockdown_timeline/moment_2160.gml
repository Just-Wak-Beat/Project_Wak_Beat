global.w_alpha = 1

if (global.t_selected_difficulty == 0)
{
	for(var i = -10; i <= 10; i++)
	{
		var _shaking_circle = create_explo_circle(room_width*0.5+i*256,global.c_h,1+abs(i)*5,356,0,0,7,6,0,0)
		_shaking_circle.direction = 90
		_shaking_circle.sprite_index = spr_square
		
		var _shaking_circle = create_explo_circle(room_width*0.5+i*256,global.c_y,1+abs(i)*5,356,0,0,7,6,0,0)
		_shaking_circle.direction = 270
		_shaking_circle.sprite_index = spr_square
	}
}

for(var i = -10; i <= 10; i++)
{
	var _shaking_circle = create_explo_circle(global.c_x,room_height*0.5+i*256,1+abs(i)*5,356,0,0,7,6,0,0)
	_shaking_circle.direction = 0
	_shaking_circle.sprite_index = spr_square
		
	var _shaking_circle = create_explo_circle(global.c_w,room_height*0.5+i*256,1+abs(i)*5,356,0,0,7,6,0,0)
	_shaking_circle.direction = 180
	_shaking_circle.sprite_index = spr_square
}