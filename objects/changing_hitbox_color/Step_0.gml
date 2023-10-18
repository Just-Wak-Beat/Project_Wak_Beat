/// @description Insert description here
// You can write your code in this editor
scale += 0.07;
image_xscale += (scale - image_xscale)*0.07;
image_yscale += (scale - image_yscale)*0.07;
image_alpha += (0 - image_alpha)*0.2;
if (image_xscale >= 5)
{
	instance_destroy()
}