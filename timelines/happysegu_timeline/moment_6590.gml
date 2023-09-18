segu_ef.t_angle += 180
segu_ef.image_xscale *= 1.3;
segu_ef.image_yscale *= 1.3;
segu_ef.w_alpha = 1;
segu_ef.t_scale = 0
global.w_alpha = 1
global.t_bg_color = -1

view_shake(3,14,3,0)
var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect)
_ef.image_xscale = 2
_ef.image_yscale = 2
_ef.t_scale = 5
_ef.image_blend = c_white
global.happysegu_effect3 = 0
master_bpm_timer = 0

for(var i = 0; i < 4; i++)
{
	var tmp_angle = segu_ef.image_angle+happysegu_pattern_timer*90+i*90;
	create_arrow_laser(room_width*0.5+lengthdir_x(256,tmp_angle),room_height*0.5+lengthdir_y(256,tmp_angle),depth,0.8,tmp_angle,128,true,10,1)
}

