/// @description Insert description here
// You can write your code in this editor
scale += 0.07;
image_xscale += (scale - image_xscale)*0.07;
image_yscale += (scale - image_yscale)*0.07;
image_alpha += (0 - image_alpha)*0.2;
if (image_xscale >= 5)
{
	global.background_color = image_blend;
	//global.t_bg_color = alpha;
	global.t_bg_color_alpha = alpha;
	if (instance_number(changing_bg_color) == 1)
	{
		global.stack_bg_animations = 0
	}
	
	instance_destroy()
}