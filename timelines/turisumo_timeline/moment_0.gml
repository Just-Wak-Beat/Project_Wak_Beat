global.t_bg_color = 0
global.t_bg_color_alpha = 0
global.background_color = #1a1a30
global.t_map_speed_y = 0
global.map_speed_y = 0
global.artifact_type = 0
global.turisumo_effect = 0
global.turisumo_effect_2 = 0
global.turisumo_effect_3 = 0
set_hitbox_color(#1f1f1f,0,room_width*0.5,0);
instance_destroy(hitbox_parents)

if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 1800
	global.savepoint_color[0] = #1a1a30

	global.savepoint_position[1] = 3900
	global.savepoint_color[1] = #1a1a30
}


var _xx = global.c_w
for(var i = -8; i <= 0; i++)
{
create_laser(_xx+i*64,global.c_y,1+abs(i)*5,20,0,2,2,180)
}

if (global.t_selected_difficulty == 0)
{
var ins_tmp = instance_create_depth(room_width*0.5,room_height*0.5,depth,hitbox_22)
ins_tmp.image_xscale = 0.85;
ins_tmp.image_yscale = 0.85;
}