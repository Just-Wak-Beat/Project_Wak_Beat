/// @description Movement - Dashing
// You can write your code in this editor
w_alpha = 5
if invincibility_cooltime < 30
{
invincibility_cooltime = 30+(1-global.t_selected_difficulty)*15
}
global.dashing = 1
global.dash_cooltime = 40

var _ef = instance_create_depth(x,y,depth+1,explosion_effect)
_ef.image_xscale = 1
_ef.image_yscale = 1
_ef.t_scale = 2
_ef.image_blend = global.player_color

	repeat(irandom_range(8,10)*2)
	{
	var random_x = irandom_range(-16,16)-global.hmove_speed*2
	var random_y = irandom_range(-16,16)-global.vmove_speed*2
	var effect_ = instance_create_depth(x+random_x,y+random_y,depth+1,movement_effect)
	effect_.image_xscale = 0.3
	effect_.image_yscale = 0.3
	effect_.direction = point_direction(x,y,x+random_x,y+random_y)
	effect_.speed = 16
	effect_.image_blend = global.player_color
	}