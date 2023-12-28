/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var yy_h = camera_get_view_height(view_camera[0]);

var tmp_position = (instance_exists(map_edior_ui) && map_edior_ui.activated == 1) ? (220 + map_edior_ui.scroll_y/2) : 0;
draw_text_k_scale(xx+32,yy+yy_h-100-real_pos*48-tmp_position,string(text),64,-1,image_alpha,c_white,0,-1,normal_font,0.5,0.5,0)
