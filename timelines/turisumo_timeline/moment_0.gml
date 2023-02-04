global.t_bg_color = 0
global.t_bg_color_alpha = 0
global.background_color = #1a1a30
global.turisumo_effect = 0
global.t_map_speed_y = 0
global.map_speed_y = 0
global.turisumo_effect_3 = 0
global.artifact_type = 0

global.savepoint_position[0] = 1800
global.savepoint_color[0] = #1a1a30

global.savepoint_position[1] = 3900
global.savepoint_color[1] = #1a1a30


var _xx = global.c_w
for(var i = -8; i <= 0; i++)
{
create_laser(_xx+i*64,global.c_y,1+abs(i)*5,20,0,2,2,180)
}