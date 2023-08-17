
if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 2568
	global.savepoint_color[0] = #237293


	global.savepoint_position[1] = 5865
	global.savepoint_color[1] = #237293
}

global.artifact_type = 0
global.background_color = #c54a3d
global.t_bg_color = -15
global.t_bg_color_alpha = 1
global.t_map_speed = 0
global.t_map_speed_y = 0
global.quake_effect = 0
global.alzar_effect = 0
global.alzar_effect2 = 0
instance_destroy(hitbox_parents)


var xx = obj_player.x+choose(-1,1)*irandom_range(320, 1280)
for(var i = 0; i <= 64; i++)
{
var _shaking_circle = create_explo_circle(xx,global.c_y+i*64,1+i*2,60,0,0,0.18,2,0,0,3)
_shaking_circle.sprite_index = spr_circle_outline

create_explo_circle(xx,global.c_y+i*64,1+i*2,60,0,0,0.1,2,0,0,-3)
}

