/// @description Insert description here
// You can write your code in this editor


speed += (0 - speed)*0.02
image_alpha += (-0.01 - image_alpha)*0.1
image_xscale += (-0.01 - image_xscale)*0.05
image_yscale += (1 - image_yscale)*0.05
if image_xscale <= 0.01 || image_alpha <= 0.01
{
	instance_destroy()
}