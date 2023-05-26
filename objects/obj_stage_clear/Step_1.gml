/// @description Insert description here
// You can write your code in this editor
	
	
	//애니메이션
	if (touched == 1)
	{
		image_angle += (360 - image_angle)*0.03
		
		
		if (y > player.y)
		{
			var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect)
			_ef.image_xscale = 1
			_ef.image_yscale = 1
			_ef.t_scale = 2
			_ef.image_blend = global.player_color

			repeat(irandom_range(8,10))
			{
				var random_x = irandom_range(-16,16)
				var random_y = irandom_range(-16,16)
				var effect_ = instance_create_depth(room_width*0.5+random_x,room_height*0.5+random_y,depth+1,movement_effect)
				effect_.image_xscale = 0.3
				effect_.image_yscale = 0.3
				effect_.direction = point_direction(room_width*0.5,room_height*0.5,room_width*0.5+random_x,room_height*0.5+random_y)
				effect_.speed = 16
				effect_.image_blend = color_sec
			}
			
			
				
			view_shake(0.1,10,0,2)
			touched = 2
			image_alpha = 0
			global.show_rank = 2
		}
		

		if (image_angle > 190 && image_angle <= 200)
		{
			var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect)
			_ef.image_xscale = 1
			_ef.image_yscale = 1
			_ef.t_scale = 2
			_ef.image_blend = global.player_color

			repeat(irandom_range(8,10))
			{
				var random_x = irandom_range(-16,16)
				var random_y = irandom_range(-16,16)
				var effect_ = instance_create_depth(room_width*0.5+random_x,room_height*0.5+random_y,depth+1,movement_effect)
				effect_.image_xscale = 0.3
				effect_.image_yscale = 0.3
				effect_.direction = point_direction(room_width*0.5,room_height*0.5,room_width*0.5+random_x,room_height*0.5+random_y)
				effect_.speed = 16
				effect_.image_blend = color_sec
			}
		}
			
			
		if (image_angle > 300)
		{
			global.t_w_alpha += 0.01;
		}


		if (effect_rad < 160)
		{
			effect_rad += 1+effect_rad*0.2;
		}
	}
	
	if (touched == 2)
	{
		var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect)
		_ef.image_xscale = 1
		_ef.image_yscale = 1
		_ef.t_scale = 2
		_ef.image_blend = global.player_color

		repeat(irandom_range(8,10))
		{
			var random_x = irandom_range(-16,16)
			var random_y = irandom_range(-16,16)
			var effect_ = instance_create_depth(room_width*0.5+random_x,room_height*0.5+random_y,depth+1,movement_effect)
			effect_.image_xscale = 0.3
			effect_.image_yscale = 0.3
			effect_.direction = point_direction(room_width*0.5,room_height*0.5,room_width*0.5+random_x,room_height*0.5+random_y)
			effect_.speed = 16
			effect_.image_blend = color_sec
		}
		
		global.t_w_alpha = 5000
		w_alpha = 10
		touched = 3
		alarm[1] = 30
	}
	