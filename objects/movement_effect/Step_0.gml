/// @description Insert description here
// You can write your code in this editor
x -= global.map_speed
y += global.map_speed_y


speed += (0 - speed)*0.1
w_alpha += (0.1 - w_alpha)*0.3

timer++;
if (timer > 15)
{
	image_alpha -= 0.15;
	image_xscale += (0 - image_xscale)*0.1
	image_yscale += (0 - image_yscale)*0.1
}


if (image_alpha <= 0)
{
	instance_destroy()
}

if place_meeting(x,y,obj_album_ui)
{
	w_alpha = 1
}