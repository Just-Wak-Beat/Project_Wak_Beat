/// @description Insert description here
// You can write your code in this editor
image_angle += spin_angle
if time%5 = 0
{
create_projectile(x,y,image_xscale,spin_angle,lengthdir_x(_speed,image_angle),lengthdir_y(_speed,image_angle),0,0,sprite_index)
}

time ++
image_xscale -= scale_down
if time >= target_time || image_xscale <= 0
{
	instance_destroy()
}