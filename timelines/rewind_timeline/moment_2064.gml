global.w_alpha = 1
global.map_color = #9ed5cb


for(var i = 0; i < 360; i += 30)
{
var scale = 1
var _misile_ = create_square_misile(global.c_x,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = i-60
_misile_.image_angle = i+90-60
_misile_.speed = (64+4)*scale/5
}



for(var i = -360; i < 0; i += 30)
{
var scale = 1
var _misile_ = create_square_misile(global.c_w,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = i-60
_misile_.image_angle = i+90-60
_misile_.speed = (64+4)*scale/5
}





global.map_color = $FF9A3FE5
heart_hitbox.image_angle = 180
heart_hitbox.image_index = 5
heart_hitbox.image_xscale = 0
heart_hitbox.image_yscale = 0

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

