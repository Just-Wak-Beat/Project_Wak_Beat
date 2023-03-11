/// @description Insert description here
// You can write your code in this editor

w_alpha += (0 - w_alpha)*0.1


image_xscale += (7.8 - image_xscale)*0.02
image_alpha += (0 - image_alpha)*0.05

if abs(image_xscale - 7.8) < 0.2
{
instance_destroy()
}