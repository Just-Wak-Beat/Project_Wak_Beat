/// @description Insert description here
// You can write your code in this editor
scroll_x = 0
scroll_y = -640
t_scroll_y = 0
instance_destroy(obj_message_log)
image_index = 41;
image_speed = 0;
activated = -1
n_selected = -4;
t_m_x = mouse_x;
t_m_y = mouse_y;
keep_pressing = 0

custom_image_type = 2;
custom_image_ind = 0;
selected_projectile_type = 0;
global.tiny_value_scrolling_now = 0;
for(var i = 0; i < 7; i++)
{
	global.converted_param[i] = 0;
}	

global.mb_l = 0;
with(code)
{
	event_user(15);
}