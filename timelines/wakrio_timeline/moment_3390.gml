global.wakrio_effect = -1
global.t_w_alpha = -0.1

for(var i = 0; i < 360; i += 15)
{
	var attack_ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,hitbox_2)
	attack_ef.direction = i
	attack_ef.speed = 25
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.4
	attack_ef.image_yscale = 0.4
	attack_ef.w_alpha = 10
}

global.background_color = #00111b
global.map_color = $FFEEFF6D
global.w_alpha = 1