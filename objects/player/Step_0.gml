/// @description Insert description here
// You can write your code in this editor

w_alpha += (-0.01 - w_alpha)*0.1


image_xscale += (t_xscale - image_xscale)*0.3
image_yscale += (t_yscale - image_yscale)*0.3

if x < 16
{
x = 16
}

if x > room_width-16
{
x = room_width-16
}

if y > room_height-16
{
y = room_height-16
}

if y < 16
{
y = 16
}


if abs(global.hmove_speed) <= 0.1
{
global.hmove_speed = 0
}

if abs(global.vmove_speed) <= 0.1
{
global.vmove_speed = 0
}

x += global.hmove_speed
y += global.vmove_speed


var random_dash = 0
if global.hmove = 0 && global.vmove = 0
{
random_dash = global.dashing
image_angle += (0 - image_angle)*0.3
}

global.hmove_speed += (global.hmove*(14+global.dashing*62)+random_dash*64 - global.hmove_speed)*0.3
global.vmove_speed += (global.vmove*(14+global.dashing*62) - global.vmove_speed)*0.3

if abs(global.hmove) = 1 && global.vmove = 0
{
image_angle = 180
}

if global.hmove = 0 && abs(global.vmove) = 1
{
image_angle = -180
}



if global.cannot_control = 0 && keyboard_check(vk_left)
{
global.hmove = -1
}

if global.cannot_control = 0 && keyboard_check(vk_right)
{
global.hmove = 1
}




if global.cannot_control = 0 && keyboard_check(vk_up)
{
global.vmove = -1
}

if global.cannot_control = 0 && keyboard_check(vk_down)
{
global.vmove = 1
}






if global.hmove != 0 && global.vmove != 0
{
image_angle = 45+90*sign(global.vmove+global.hmove)
t_xscale = 1+abs(global.hmove)*(0.2+global.dashing*0.3)
t_yscale = 1-abs(global.hmove)*(0.2+global.dashing*0.3)
}
else
{
t_xscale = 1+abs(global.hmove)*(0.2+global.dashing*0.3)-abs(global.vmove)*(0.2+global.dashing*0.3)
t_yscale = 1-abs(global.hmove)*(0.2+global.dashing*0.3)+abs(global.vmove)*(0.2+global.dashing*0.3)
}






if abs(global.hmove)+abs(global.vmove) > 0 && global.dashing < 0.2
{
var effect_ = instance_create_depth(x+irandom_range(-16,16),y+irandom_range(-16,16),depth+1,movement_effect)
effect_.image_xscale = 0.3
effect_.image_yscale = 0.3
effect_.vspeed = -global.vmove_speed*1.2
effect_.hspeed = -global.hmove_speed*1.2
effect_.image_blend = $FF4AB539
}



if keyboard_check_released(vk_left) || keyboard_check_released(vk_right) || keyboard_check_released(vk_up) || keyboard_check_released(vk_down) || global.cannot_control = 1
{
global.hmove = 0
global.vmove = 0
}






if global.dash_cooltime > 0
{
global.dash_cooltime --
}

global.dashing += (-0.01 - global.dashing)*0.15
if global.dashing <= 0.1
{
global.dashing = 0
}

if global.dash_cooltime <= 0 && keyboard_check(vk_space)
{
w_alpha = 1
invincibility_cooltime = 30
global.dashing = 1
global.dash_cooltime = 50

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
}