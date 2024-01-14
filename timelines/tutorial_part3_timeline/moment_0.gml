if (global.w_alpha >= 0.9)
{
	instance_destroy(hitbox_parents)
}

set_bg_color_with_effect($FF331800,obj_player.x,obj_player.y,1);
global.t_w_alpha = 0;
global.hp = 5;