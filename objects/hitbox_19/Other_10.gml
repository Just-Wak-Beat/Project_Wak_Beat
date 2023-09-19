/// @description Insert description here
// You can write your code in this editor
once_in = 1
direction += 180+irandom_range(-15,15)

view_shake(3,14,3,0)
var _ef = instance_create_depth(x,y,depth+1,explosion_effect)
_ef.image_xscale = 2
_ef.image_yscale = 2
_ef.t_scale = 5
_ef.image_blend = c_white

target_eye_dis = 0
w_alpha = 1;

image_xscale *= 0.5
image_yscale *= 0.5
//global.w_alpha = 0.5

for(var i = 0; i < 360; i += 20-(1-global.t_selected_difficulty)*10)
{
	var attack_ef = instance_create_depth(x,y,depth+1,hitbox_2)
	attack_ef.direction = i
	attack_ef.speed = 24
	attack_ef.keep_spin_angle = keep_spin_angle
	attack_ef.image_xscale = 0.4
	attack_ef.image_yscale = 0.4
	attack_ef.w_alpha = 10
}


if (sprite_get_height(sprite_index)*image_xscale <= 64)
{
	instance_destroy()
}