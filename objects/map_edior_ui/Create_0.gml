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
ins_list = array_create(100,-4);
custom_image_type = 2;
custom_image_ind = 0;
selected_projectile_type = 0;
del_current_timeline = 0
del_all_timeline = 0
tmp_arr_ind_ins_list = 0;
button_id = 0;
modified_value = 0;
modifying_value = 0;
global.copied_img = -4;
global.tiny_value_scrolling_now = 0;
global.revalued_projectile_save = 0;
global.value_set_arg = 0;
for(var i = 0; i < 7; i++)
{
	global.converted_param[i] = 0;
}	

global.mb_l = 0;
with(code)
{
	event_user(15);
}



saved_hitbox_xx = -4;
saved_hitbox_yy = -4;
saved_obj_num = -4;
saved_param = array_create(8,"");