/// @description Insert description here
// You can write your code in this editor
var yy = camera_get_view_y(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])

if global.n_map_list != 2
{
sprite_index = spr_album
image_index = global.n_map_id+2
}
else
{
sprite_index = global.custom_stage_album[global.n_map_id]
}
x = global.c_x+916-global.mobile_mode*64
depth = code.depth-100
image_alpha = global.ui_alpha

if global.total_map > 0
{
	if instance_exists(code) && code.gamestart = 1
	{
	y += (yy+yy_h*2 - y)*0.1
	timer ++

		if timer > 120
		{
		instance_destroy()
		}
	}
y += (yy+yy_h*0.5 - y)*0.1

image_xscale += (1+global.mobile_mode*0.8 - image_xscale)*0.16
image_yscale += (1+global.mobile_mode*0.8 - image_yscale)*0.16
image_angle += (5+angle_moving - image_angle)*0.1
w_alpha += (0 - w_alpha)*0.1

	if angle_moving_timer%2 = 0
	{
	angle_moving += (3 - angle_moving)*0.03
	}
	else
	{
	angle_moving += (-3 - angle_moving)*0.03
	}
}
else
{
y = room_height
image_xscale = 0
image_yscale = 0
image_angle = 0
}

if global.highlight_time <= 360 && global.highlight_time > 30 && code.gamestart != 1 && code.gamestart != 2 && code.gamestart != 3
{
bpm_timer ++
	if bpm_timer >= (3600/global.bpm)+global.music_sync_offset*3*60
	{
	angle_moving_timer++
	global.background_w_alpha = 0.05
	instance_create_depth(global.c_w-640,global.c_y+yy_h*0.47,code.depth-50,circle_effect)
		repeat(irandom_range(8,10)*5)
		{
		var random_dir = irandom_range(0,359)
		var effect_ = instance_create_depth(x+lengthdir_x(image_xscale*240,random_dir),y+lengthdir_y(image_xscale*240,random_dir),depth+1,movement_effect)
		effect_.image_xscale = 0.3
		effect_.image_yscale = 0.3
		effect_.direction = random_dir
		effect_.speed = 16
		effect_.image_blend = global.map_color
		}
	image_xscale *= 0.8
	image_yscale *= 0.8
	w_alpha = 1
	bpm_timer -= (3600/global.bpm)+global.music_sync_offset*3*60
	}
}