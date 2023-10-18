/// @description Insert description here
// You can write your code in this editor

if (timer > 520)
{
	image_alpha += (-0.01 - image_alpha)*0.1
	if (image_alpha <= 0)
	{
		instance_destroy();
	}
}
else
{
	image_alpha += (1 - image_alpha)*0.1
}
timer ++;


real_pos += (pos - real_pos)*0.15