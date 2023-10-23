var xx = room_width*0.5
for(var ii = 5; ii < 90; ii += 15)
{
var dir_ = ii
	for(var i = 0; i <= 64; i++)
	{
	var _shaking_circle = create_explo_circle(xx+lengthdir_x(i*64,90+dir_),global.c_h+lengthdir_y(i*64,90+dir_),60+i,60,0,0,0.18,2,0,0,3)
	_shaking_circle.sprite_index = spr_circle_outline

	var _shaking_circle = create_explo_circle(xx+lengthdir_x(i*64,90-dir_),global.c_h+lengthdir_y(i*64,90-dir_),60+i,60,0,0,0.18,2,0,0,-3)
	_shaking_circle.sprite_index = spr_circle_outline

	create_explo_circle(xx+lengthdir_x(i*64,90+dir_),global.c_h+lengthdir_y(i*64,90+dir_),60+i,60,0,0,0.1,2,0,0,-3)
	create_explo_circle(xx+lengthdir_x(i*64,90-dir_),global.c_h+lengthdir_y(i*64,90-dir_),60+i,60,0,0,0.1,2,0,0,3)
	}
}


yonsei_hitbox.image_xscale *= 0.95
yonsei_hitbox.image_yscale *= 0.95
yonsei_hitbox.w_alpha = 1

for(var i = 0; i < 360; i += 15)
{
	var attack_ef = instance_create_depth(yonsei_hitbox.x,yonsei_hitbox.y,depth+1,hitbox_6)
	attack_ef.direction = i
	attack_ef.speed = 20
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.08
	attack_ef.image_yscale = 0.08
	attack_ef.w_alpha = 10
}