/// @description 맵 정보 초기화 (일반 사망)
// You can write your code in this editor
global.t_b_alpha = -0.01
global.t_w_alpha = 0
global.fukurou_snow_effect = 0
global.turisumo_effect = 0
global.turisumo_effect_2 = 0
global.gomem_mashup_effect_arrow_alpha = 0
global.bamguy_effect = 0
global.turisumo_effect_scale = 0
global.t_turisumo_effect_scale = 0
global.master_remix_effect2 = 0;
global.master_remix_effect3 = 0;
global.master_remix_effect4 = 0;
global.master_remix_effect5 = 0;
global.wakrio_effect2 = 0
global.master_remix_effect = 0
global.gomem_mashup_effect = 0
global.run_shake_effect = 0;
global.blackout_effect = 0;
global.turisumo_effect_3 = 0
global.t_shake_x = 0;
global.shake_x = 0;
global.real_shake_x = 0;
global.t_shake_y = 0;
global.real_shake_y = 0;
global.shake_y = 0;
turisumo_bpm_timer = 0
turisumo_road_sign_delay = 0
global.ipad_random_xx = -4
global.ipad_random_xspeed = -4
global.ipad_random_yspeed = -4
global.ipad_effect = 0
global.phony_effect = 0
global.wakrio_effect3 = 0
global.clock_alpha_1 = 0
global.clock_alpha_2 = 0
global.yuha_effect1 = 0
global.yuha_effect2 = 0
global.yuha_effect3 = 0
global.happysegu_effect1 = 0
global.happysegu_effect2 = 0
global.happysegu_effect3 = 0
happysegu_pattern_timer = 0
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
global.lockdown_effect1 = 0
global.lockdown_effect2 = 0
global.lockdown_effect3 = 0
global.lockdown_effect4 = 0
global.lockdown_effect5 = 0
global.lockdown_effect6 = 0;
lockdown_pattern_s_timer = 0;
lockdown_pattern_d_timer = 0;
lockdown_pattern_timer = 0;
lockdown_effect4_1 = 0
lockdown_effect5_1 = 0
lockdown_effect5_2 = 0
total_stack_direction_plusment = 0
lockdown_effect5_3 = 0
global.hmove_speed = 0
global.vmove_speed = 0
global.map_speed = 0
global.map_speed_y = 0
global.t_map_speed = 0
global.t_map_speed_y = 0
global.wakrio_effect = 0
wakrio_timer = 0


//특수 효과 적용
if (global.streamer == 0)
{
	global.additional_hp = check_player_skin(5)+check_player_skin(12)+check_player_skin(20); //단위 hp
	global.dash_cross_bonus = check_player_skin(0)*25+check_player_skin(3)*50+check_player_skin(7)*50+check_player_skin(9)*150+check_player_skin(11)*150+check_player_skin(19)*150+check_player_skin(14)*150+check_player_skin(22)*150+check_player_skin(27)*150; //단위 score
	global.dash_cross_bonus_maxhp = check_player_skin(6)*100+check_player_skin(16)*100+check_player_skin(23)*100+check_player_skin(26)*100; //단위 score
	global.dash_dec_c_time = -check_player_skin(9)*30-check_player_skin(11)*30-check_player_skin(14)*30-check_player_skin(19)*30-check_player_skin(22)*30-check_player_skin(27)*30; //단위 frame
	global.ignore_damage = check_player_skin(1)*20+check_player_skin(17)*20+check_player_skin(21)*20; //단위 percentage
	global.minimum_rank = check_player_skin(4)*11;  //단위 rank
	global.addition_invinc_time = check_player_skin(8)*60+check_player_skin(13)*60+check_player_skin(18)*60+check_player_skin(24)*60;  //단위 frame
	global.clear_bonus_score = check_player_skin(10)*5000+check_player_skin(25)*5000; //단위 score
	global.damaged_bonus_score = check_player_skin(2)*5000+check_player_skin(15)*5000;
}
else
{
	//닉네임 스킨 적용 (스트리머)
	if (global.streamer == 1)
	{
		global.nickname = "Wakgood";
		global.n_player_skin = 0;
		global.player_skin = floor(0/4);
	}
	else if (global.streamer == 2)
	{
		global.nickname = "Jururu";
		global.n_player_skin = 22;
		global.player_skin = floor(22/4);
		global.additional_hp = 3;
	}
	else if (global.streamer == 3)
	{
		global.nickname = "JINGBURGER";
		global.n_player_skin = 26;
		global.player_skin = floor(26/4);
		global.additional_hp = 3;
	}
	else if (global.streamer == 4)
	{
		global.nickname = "VIichan";
		global.n_player_skin = 10;
		global.player_skin = floor(10/4);
		global.additional_hp = 3;
	}
	else if (global.streamer == 5)
	{
		global.nickname = "INE";
		global.n_player_skin = 6;
		global.player_skin = floor(6/4);
		global.additional_hp = 3;
	}
	else if (global.streamer == 6)
	{
		global.nickname = "Gosegu";
		global.n_player_skin = 14;
		global.player_skin = floor(14/4);
		global.additional_hp = 3;
	}
	else if (global.streamer == 7)
	{
		global.nickname = "Lilpa";
		global.n_player_skin = 18;
		global.player_skin = floor(18/4);
		global.additional_hp = 3;
	}
}
