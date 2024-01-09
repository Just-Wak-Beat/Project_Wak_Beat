/// @description Insert description here
// You can write your code in this editor

if (global.play_custom_map == 1)
{
	var tmp_col = global.custom_stage_map_color[global.n_map_id];
	global.map_color = (is_real(tmp_col)) ? tmp_col : hex_to_color(tmp_col,1);
}
else
{
	var tmp_col = global.stage_map_color[global.n_map_id];
	global.map_color = (is_real(tmp_col)) ? tmp_col : hex_to_color(tmp_col,1);
}
