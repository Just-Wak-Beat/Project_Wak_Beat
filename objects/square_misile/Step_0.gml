/// @description Insert description here
// You can write your code in this editor
x -= global.map_speed
y += global.map_speed_y

if stop_create > 0
{
stop_create++
}


if stop_create < 60
{
	if timer%target_time = 0
	{
	var laser__ = instance_create_depth(x,y,player.depth-1,hitbox_9)
	laser__.target_time = target_time
	laser__.des_time = des_time
	laser__.shake_scale = shake_scale
	laser__.shake_dir = shake_dir
	laser__.image_xscale = image_xscale
	laser__.image_yscale = image_yscale
	laser__.t_scale = t_scale
	}
}


timer++
