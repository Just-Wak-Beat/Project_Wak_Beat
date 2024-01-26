 /// @description Movement - Dashing
// You can write your code in this editor
w_alpha = 5
global.dashed = 1


n_max_map_speed = (global.map_speed > global.map_speed_y) ? global.map_speed : global.map_speed_y
n_max_map_speed = (n_max_map_speed > 28) ? 28 : n_max_map_speed;
global.dashing = 1
var tmp = (3600/global.bpm);
tmp = (tmp <= 20) ? tmp*2 : tmp;
global.dash_cooltime = fix_num_inside(tmp+20-global.dash_dec_c_time-n_max_map_speed*0.4,15,999);

var inv_cooltime = global.dash_cooltime-10;
//show_message_log(inv_cooltime)
if (invincibility_cooltime < inv_cooltime)
{
	invincibility_cooltime = inv_cooltime;
}

var _ef = instance_create_depth(x,y,depth+1,explosion_effect)
_ef.image_xscale = 1
_ef.image_yscale = 1
_ef.t_scale = 2
_ef.image_blend = global.player_color

repeat(irandom_range(4,6))
{
	var angle = point_direction(x+global.hmove_speed,y+global.vmove_speed,x,y)+irandom_range(-35,35);
	var effect_ = instance_create_depth(x+irandom_range(-16,16),y+irandom_range(-16,16),depth+1,movement_effect);
	effect_.image_xscale = 0.6;
	effect_.image_yscale = 0.6;
	effect_.direction = angle;
	effect_.speed = 48;
	effect_.image_angle = angle;
	effect_.image_blend = global.player_color;
	effect_.image_alpha = 0.3;
}