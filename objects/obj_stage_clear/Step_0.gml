/// @description Insert description here
// You can write your code in this editor



spin_rad += 10


for(var i = 6; i < 32; i++)
{
xx[i] += (lengthdir_x(66,spin_rad*0.5) - xx[i])*0.02*i
yy[i] += (lengthdir_y(66,spin_rad*0.5) - yy[i])*0.02*i

xx[i] = floor(xx[i])
yy[i] = floor(yy[i])


xx2[i] += (lengthdir_x(82,-spin_rad) - xx2[i])*0.02*i
yy2[i] += (lengthdir_y(82,-spin_rad) - yy2[i])*0.02*i

xx2[i] = floor(xx2[i])
yy2[i] = floor(yy2[i])



xx3[i] += (lengthdir_x(66,spin_rad*0.5+180) - xx3[i])*0.02*i
yy3[i] += (lengthdir_y(66,spin_rad*0.5+180) - yy3[i])*0.02*i

xx3[i] = floor(xx3[i])
yy3[i] = floor(yy3[i])
}



timer ++

if timer > (global.bpm/3600)*2000
{
t_speed -= 0.001
}

if timer > (global.bpm/3600)*5000
{
timer -= (global.bpm/3600)*5000
	if t_speed != 10
	{
	image_angle = 360*choose(-1,1)
	t_speed = 10
	w_alpha = 1
		if point_distance(x,y,room_width*0.5,room_height*0.5) > room_height*0.3
		{
		t_angle = point_direction(x,y,room_width*0.5,room_height*0.5)
		}
		else
		{
		t_angle = irandom_range(0,359)
		}
	}
image_xscale = 0.25
image_yscale = 0.25
}


speed += (t_speed - speed)*0.01
direction += (t_angle - direction)*0.01
image_angle += (0 - image_angle)*0.03
image_xscale += (0.2 - image_xscale)*0.1
image_yscale += (0.2 - image_yscale)*0.1
w_alpha += (0 - w_alpha)*0.01



if place_meeting(x,y,player)
{
global.w_alpha = 1
global.savepoint_text_t_alpha = -0.01
audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
var _ef = instance_create_depth(x,y,depth+1,explosion_effect)
_ef.image_xscale = 1
_ef.image_yscale = 1
_ef.t_scale = 2
_ef.image_blend = global.player_color

	repeat(irandom_range(8,10))
	{
	var random_x = irandom_range(-16,16)
	var random_y = irandom_range(-16,16)
	var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect)
	effect_.image_xscale = 0.3
	effect_.image_yscale = 0.3
	effect_.direction = point_direction(x,y,x+random_x,y+random_y)
	effect_.speed = 16
	effect_.image_blend = $FF4AB539
	}
	
	if global.n_playing_tutorial = 1
	{
	global.tutorial_n_stage++
	
		if global.tutorial_n_stage = 1
		{
		global.background_color = $FF161510
		}
		else if global.tutorial_n_stage = 2
		{
		global.background_color = $FF331800
		}
		else if global.tutorial_n_stage = 3
		{
		global.background_color = $FF1E2620
		}
		else
		{
		global.t_bg_color_alpha = 1
		global.t_bg_color = 0
		global.select_map = code.n_stage+2
		global.t_select_map = code.n_stage+2
		code.gamestart = 3
		}
	}
	else
	{
	global.select_map = code.n_stage+2
	global.t_select_map = code.n_stage+2
	code.gamestart = 3
	}
	
instance_destroy()
}