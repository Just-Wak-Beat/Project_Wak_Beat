/// @description Insert description here
// You can write your code in this editor




image_xscale += (7.8 - image_xscale)*0.02

if abs(image_xscale - 7.8) < 0.2
{
instance_destroy()
}