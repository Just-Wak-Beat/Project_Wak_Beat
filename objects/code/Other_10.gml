/// @description Reset discord presence
// You can write your code in this editor


np_setpresence_more("", "메인 매뉴", false);
np_setpresence("메인 매뉴", "", "type0", "");
automatic_loading_cancel = 0
window_set_cursor(cr_default)
global.gomem_mashup_effect_arrow_alpha = 0
global.check_died = 0
global.tutorial_now = 0
global.random_seed = -4
global.paused = 0
global.bamguy_effect = 0

instance_activate_all()
randomize()
global.fukurou_snow_effect = 0
global.turisumo_effect = 0
global.turisumo_effect_2 = 0
global.turisumo_effect_scale = 0
global.t_turisumo_effect_scale = 0
global.master_remix_effect = 0
global.gomem_mashup_effect = 0
global.turisumo_effect_3 = 0
turisumo_bpm_timer = 0
turisumo_road_sign_delay = 0
global.ipad_random_xx = -4
global.ipad_random_xspeed = -4
global.ipad_random_yspeed = -4
global.ipad_effect = 0
global.phony_effect = 0
global.rewind = 0
global.clock_alpha_1 = 0
global.clock_alpha_2 = 0
global.yuha_effect1 = 0
global.yuha_effect2 = 0
global.yuha_effect3 = 0
global.n_camera_zoom = 1
global.camera_slow_zoom = 0
phony_y = 0
phony_t_y = 1
phony_y_timer = 0
global.quake_effect = 0
global.yoong_laser_dir = 0
global.yoong_laser_dir2 = 0
cre_now1 = 0
cre_now2 = 0
random_dir_laser = choose(-1,1)
random_dir_laser2 = choose(-1,1)
master_bpm_timer = 0
global.alzar_effect = 0
global.alzar_effect2 = 0
global.roki_effect1 = 0
global.gomem_mashup_effect_dir = 0
alzar_timer = 0
alzar_timer2 = 0
alzar_timer2_stack = 0
alzar_t_timer = 27
spotlight1_preview_ins = -4
spotlight2_preview_ins = -4
progress_icon_alpha = 0
progress_alpha = 0
music_title_alpha = 0
discord_presence_update = 0
global.hmove_speed = 0
global.vmove_speed = 0
global.map_speed = 0
global.map_speed_y = 0
global.t_map_speed = 0
global.t_map_speed_y = 0
global.show_progress_bar = 0
global.n_progress = 0
global.show_music_title = 0
global.wakrio_effect = 0
wakrio_timer = 0
global.t_w_alpha = 0
global.highlight_time = 0
load_musicList(global.n_map_list)
global.t_b_alpha = -0.01
global.scroll_n_m_xx = -4
global.joystick_xx = -4
global.scroll_n_m_yy = -4
global.joystick_yy = -4
global.crossed_obstacle_num = 0
global.total_died_here = 0
global.n_rank_display = "S+"
instance_destroy(hitbox_parents)





//load_none_cleared_list();
load_unlocked_list();

if (saved_n_stage >= 0)
{
	global.t_select_map = saved_n_stage
	global.select_map = saved_n_stage
	n_stage = saved_n_stage-2
}

event_user(6)
alarm[10] = 2