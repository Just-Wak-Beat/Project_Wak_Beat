/// @description Insert description here
// You can write your code in this editor
image_blend = global.map_color

w_alpha += (-0.01 - w_alpha)*0.15
image_angle += keep_spin_angle
image_xscale += (t_scale - image_xscale)*0.15
image_yscale += (t_scale - image_yscale)*0.15

x += (t_x - x)*0.1
y += (t_y - y)*0.1


t_y += global.map_speed_y*1.5