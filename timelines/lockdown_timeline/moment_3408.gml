spike_ef.t_scale = 0.85;
pipe_ef.direction = 0;
spike_ef.x = room_width*0.5;
spike_ef.t_x = room_width*0.5;
spike_ef.y = global.c_h+512;
spike_ef.t_y = global.c_h-256;
global.w_alpha = 1
global.t_bg_color = -10
set_hitbox_color(#df1a62,1,room_width*0.5,global.c_h);


for(var i = -10; i <= 10; i++)
{
	var _shaking_circle = create_explo_circle(room_width*0.5+i*256,global.c_h-56,1+abs(i)*5,850,0,0,0.8+abs(i)*0.25,6,0,0)
	_shaking_circle.direction = 90
	_shaking_circle.sprite_index = spr_gear
}