var _ef = instance_create_depth(hitbox_8.x,hitbox_8.y,hitbox_8.depth+1,explosion_effect)
_ef.image_xscale = 3
_ef.image_yscale = 3
_ef.t_scale = 4
_ef.image_blend = c_white
						
var _ef = instance_create_depth(hitbox_8.x,hitbox_8.y,hitbox_8.depth+1,explosion_effect)
_ef.image_xscale = 3.7
_ef.image_yscale = 3.7
_ef.t_scale = 6
_ef.image_blend = c_white

instance_destroy(hitbox_8)

for(var i = 0; i < 360; i += 15)
{
	var attack_ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,hitbox_2)
	attack_ef.direction = i
	attack_ef.speed = 32
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.4
	attack_ef.image_yscale = 0.4
	attack_ef.w_alpha = 10
}

var random_x = irandom_range(global.c_w,global.c_w-420)
create_spike_circle(random_x,global.c_h,random_x,irandom_range(global.c_y+256,global.c_h-256),60,0,0,0.2)

var random_x = irandom_range(global.c_x,global.c_x+420)
create_spike_circle(random_x,global.c_h,random_x,irandom_range(global.c_y+256,global.c_h-256),60,0,0,0.2)



