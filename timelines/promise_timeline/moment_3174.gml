global.w_alpha = 1
var xx = irandom_range(room_width*0.8,global.c_w+500)
for(var i = 0; i < 180; i += 15)
{
	var attack_ef = instance_create_depth(xx,global.c_y,depth+1,hitbox_2)
	attack_ef.speed = 10
	attack_ef.direction = i
	attack_ef.keep_spin_angle = 90-i
	attack_ef.image_angle = 90-i
	attack_ef.image_xscale = 0.05
	attack_ef.image_yscale = 0.05
	attack_ef.w_alpha = 10
	attack_ef.sprite_index = spr_circle
}



var attack_ef = instance_create_depth(xx,global.c_y-irandom_range(220,0),depth+1,hitbox_10)
attack_ef.gravity = 5+abs(xx - global.c_w)/256
attack_ef.gravity_direction = 270
attack_ef.image_xscale = 0.45
attack_ef.image_yscale = 0.45
attack_ef.sprite_index = spr_star
attack_ef.speed = 64
attack_ef.direction = 215
attack_ef.w_alpha = 10
attack_ef.keep_spin_angle = irandom_range(10,5)/30