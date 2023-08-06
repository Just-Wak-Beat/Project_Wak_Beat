/// @description Insert description here
// You can write your code in this editor
x += (t_x - x)*0.15
y += (t_y - y)*0.15
image_blend = global.map_color

if (global.low_graphics == false)
{
	w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
	w_alpha = 0
}

if (scale_down > 0)
{
	image_xscale *= scale_down
	image_yscale *= scale_down
}
else if (scale_down < 0)
{
	scale_down += (-0.001 - scale_down)*0.05;
	if scale_down > -15
	{
		image_alpha += (-0.01 - image_alpha)*0.1
		if (image_alpha <= 0)
		{
			instance_destroy();
		}
	}
}