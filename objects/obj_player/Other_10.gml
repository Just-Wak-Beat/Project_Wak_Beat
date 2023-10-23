 /// @description Movement - Dashing
// You can write your code in this editor
w_alpha = 5
global.dashed = 1
if invincibility_cooltime < 25+(1-global.t_selected_difficulty)*15
{
	invincibility_cooltime = 25+(1-global.t_selected_difficulty)*15
}

n_max_map_speed = (global.map_speed > global.map_speed_y) ? global.map_speed : global.map_speed_y

global.dashing = 1
global.dash_cooltime = fix_to_zero(30-n_max_map_speed*0.2)

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
}