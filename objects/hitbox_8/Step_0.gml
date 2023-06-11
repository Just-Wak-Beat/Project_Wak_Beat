/// @description Insert description here
// You can write your code in this editor
x += (t_x - x)*0.25
y += (t_y+y_movement - y)*0.25

y_movement_timer ++

if y_movement_timer > 60
{
y_movement_dir *= -1
y_movement_timer = 0
}

y_movement += y_movement_dir


if global.low_graphics = false
{
w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
w_alpha = 0
}

image_xscale += (1 - image_xscale)*0.1
image_yscale += (1 - image_yscale)*0.1