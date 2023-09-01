global.map_color = #4369a0
heart_hitbox.image_angle = 180
heart_hitbox.image_index = 4
heart_hitbox.image_xscale = 0
heart_hitbox.image_yscale = 0
heart_hitbox.t_angle = -25

for(var i = 0; i < 360; i += 16)
{
	var attack_ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,hitbox_2)
	attack_ef.direction = i
	attack_ef.speed = 24
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.4
	attack_ef.image_yscale = 0.4
	attack_ef.w_alpha = 10
}

var _ef = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-2,explosion_effect)
_ef.image_xscale = 3.7
_ef.image_yscale = 3.7
_ef.t_scale = 6
_ef.image_blend = c_white
global.w_alpha = 1