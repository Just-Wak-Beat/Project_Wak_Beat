/// @description Insert description here
// You can write your code in this editor
x -= global.map_speed

image_angle += keep_spin_angle
w_alpha += (-0.01 - w_alpha)*0.15


if global.fukurou_snow_effect != 0
{
var _image_scale = 640*image_xscale

	if des = 0 && (x < global.c_x || x > global.c_w || y < global.c_y || y > global.c_h)
	{
	var _shaking_circle = create_explo_circle(x,y,1,60,2,0,2*image_xscale,0,0,0)
	_shaking_circle.sprite_index = spr_circle_outline
	des = 1
	}

	if x+_image_scale < global.c_x || x-_image_scale > global.c_w || y+_image_scale < global.c_y || y-_image_scale > global.c_h
	{
	instance_destroy()
	}
}