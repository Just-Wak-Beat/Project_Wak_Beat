/// @description Insert description here
// You can write your code in this editor

global.camera_sx = camera_get_view_width(view_camera[0])/3584

global.savepoint_text_alpha += (global.savepoint_text_t_alpha - global.savepoint_text_alpha)*0.1


global.map_speed += (global.t_map_speed - global.map_speed)*0.05

global.t_bg_color_alpha += (global.t_bg_color - global.t_bg_color_alpha)*0.001
