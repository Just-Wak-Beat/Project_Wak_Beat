/// @description Insert description here
// You can write your code in this editor
if (instance_exists(target))
{
	x = target.x
	y = target.y
}
timer++;
image_xscale += (1.5 - image_xscale)*0.07
image_yscale += (4 - image_yscale)*0.07


if (timer > 180)
{
	image_alpha += (-0.01 - image_alpha)*0.1;
	if (image_alpha <= 0)
	{
		instance_destroy();
	}	
}
else
{
	if (image_alpha < 1)
	{
		image_alpha += 0.01;
	}
}