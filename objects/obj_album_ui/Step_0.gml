/// @description Insert description here
// You can write your code in this editor
var yy = camera_get_view_y(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])

image_index = code.n_stage+1
x = global.c_x + 916
depth = code.depth-10

if instance_exists(code) && code.gamestart = 1
{
y += (yy+yy_h*2 - y)*0.1
timer ++

	if timer > 120
	{
	instance_destroy()
	}
}
y += (yy+yy_h*0.5 - y)*0.1

image_xscale += (1 - image_xscale)*0.16
image_yscale += (1 - image_yscale)*0.16


if global.highlight_time <= 360 && global.highlight_time > 30
{
bpm_timer ++
	if bpm_timer >= (3600/global.bpm)
	{
		repeat(irandom_range(8,10)*5)
		{
		var random_x = irandom_range(-260,260)
		var random_y = irandom_range(-260,260)
		var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect)
		effect_.image_xscale = 0.3
		effect_.image_yscale = 0.3
		effect_.direction = point_direction(x,y,x+random_x,y+random_y)
		effect_.speed = 16
		effect_.image_blend = global.map_color
		}
	image_xscale = 0.7
	image_yscale = 0.7
	bpm_timer -= (3600/global.bpm)
	}
}