/// @description Insert description here
// You can write your code in this editor
timer = (global.bpm/3600)*5000
image_blend = $FFE6FFE2
color_sec = $FF4AB539
image_speed = 0
outside_timer = 0

w_alpha = 0
direction = irandom_range(0,359)
t_speed = 0
t_angle = 0
image_xscale = 0.2
image_yscale = 0.2

spin_rad = 0
for(var i = 6; i < 32; i++)
{
xx[i] = lengthdir_x(66,spin_rad)
yy[i] = lengthdir_y(66,spin_rad)

xx2[i] = lengthdir_x(82,spin_rad)
yy2[i] = lengthdir_y(82,spin_rad)

xx3[i] = lengthdir_x(82,spin_rad)
yy3[i] = lengthdir_y(82,spin_rad)
}