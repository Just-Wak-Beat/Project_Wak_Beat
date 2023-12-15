/// @description Insert description here
// You can write your code in this editor
x -= global.map_speed
y += global.map_speed_y

image_angle += keep_spin_angle
if global.low_graphics = false
{
	w_alpha += (-0.01 - w_alpha)*0.15
	circle_w_alpha += (-0.01 - circle_w_alpha)*0.1
	circle_ef_xscale -= 0.1;
}
else
{
	w_alpha = 0
	circle_w_alpha = 0;
}

if speed > 0
{
	if (x < -900 || x > room_width+900 || y < -900 || y > room_height+900)
	{
		instance_destroy()
	}
}

