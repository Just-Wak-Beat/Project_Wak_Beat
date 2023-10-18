/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player) && obj_player.image_xscale <= 0)
{
	var xx = camera_get_view_x(view_camera[0]);
	var yy = camera_get_view_y(view_camera[0]);
	var yy_h = camera_get_view_height(view_camera[0]);

	draw_text_k_scale(xx+32,yy+yy_h-100-real_pos*48,string(text),64,-1,image_alpha,c_white,0,-1,normal_font,0.5,0.5,0)
}