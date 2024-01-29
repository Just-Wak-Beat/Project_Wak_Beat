/// @description Insert description here
// You can write your code in this editor
global.version_real = 1.09;
global.version = "Release "+string(global.version_real);
global.beta_tester = 0;
global.streamer = 0;
global.custom_mapper = 0;
global.dev_mode = 0;
devmode_activate = 0;
surf_screen = -4;
music_title_alpha = 0
global.blackout_alpha = 0;
global.low_graphics = false;
global.mobile_mode = (os_type == 0) ? 0 : 1;
global.font_ratio_resolution_xx = 1;
global.default_directory = program_directory;
global.custom_map_directory = string(global.default_directory)+"Custom map files\\";
global.nickname = ""
global.dashed = 0
global.total_damaged = 0
global.n_score_displaying = 0;
//메인메뉴 애니메이션 재생
global.show_title_menu = 1;
global.title_menu_animation1 = 0;
global.title_menu_animation2 = 0;
global.overtime_highlight_song = 1;
global.automatic_load_ranking = 0;
global.flash_effect_setting = -1;
global.cannot_connect = 0;
global.play_usermade_official_map = 0;
global.show_credit = 0.1;
var file_name = (global.dev_mode == 1) ? "PWB_Beta.ini" : "PWB_OpenBeta.ini"
ini_open_protect(file_name)
var tmp = ini_read_real("tutorial_played","none",0)
global.tutorial_skip = (tmp == 0) ? 0 : 1;
global.tutorial_played = (tmp == 0) ? 0 : 1;
ini_close_protect()
global.boss_battle = 0


//맵 에디터
global.map_editor = 0
global.editor_selected_type = -4;
global.timeline_stop = -1
global.editor_hitbox = -1;
global.save_point_num = 0;
global.selected_animation = 0;
for(var i = 0; i < 7; i++)
{
	global.ed_arg[i] = 0.1;
	global.ed_arg_modifying[i] = "";
	global.ed_arg_modifed[i] = 0;
	global.ed_arg_name[i] = "";
	global.ed_arg_min_val[i] = 0;
	global.ed_arg_max_val[i] = 0;
	global.ed_arg_correction[i] = 0; //0 = none, 1 = round, 2 = floor
	global.ed_arg_divide[i] = 0;
	global.ed_arg_tagname[i] = "";
}
global.ed_arg[6] = 1;

global.c_map_param = -4;
global.tmp_str_map_data = "";
global.b_n_progress = 0;
global.tmp_str_map_data = "";
global.play_custom_map = 0

global.c_spr_center_origin_num = 0;
global.c_spr_top_origin_num = 0;

//닉네임 강제 초기화는 b_force_wipe_nickname 값을 수정하면 가능
b_force_wipe_nickname = 0

global.force_wipe_nickname = 1;
global.update_plz = 0;




alarm[11] = 1


//텍스쳐 및 오디오 로딩
show_message_log("리소스 불러오는 중... (일부 노래가 들리지 않는다면 게임을 재시작 해주세요)");
for(var i = 0; i <= 4; i++)
{
	audio_group_load(i);
}



texturegroup_load("UI")
texturegroup_load("hitbox_shapes")
texturegroup_load("effects")

global.custom_map_timeline = false;
global.custom_proj_center_spr = array_create(100,-4);
global.custom_proj_top_spr = array_create(100,-4);
global.custom_proj_center_spr[0] = spr_tmp;
global.custom_proj_center_spr[1] = spr_circle;
global.custom_proj_center_spr[2] = spr_circle_half;
global.custom_proj_center_spr[3] = spr_circle_outline;
global.custom_proj_center_spr[4] = spr_circle_spike;
global.custom_proj_center_spr[5] = spr_circle_spike2;
global.custom_proj_center_spr[6] = spr_triangle;
global.custom_proj_center_spr[7] = spr_triangle_empty_bold;
global.custom_proj_center_spr[8] = spr_star;
global.custom_proj_center_spr[9] = spr_snow;
global.custom_proj_center_spr[10] = spr_heart;
global.custom_proj_center_spr[11] = spr_gear;
global.custom_proj_center_spr[12] = spr_arrow;
global.custom_proj_center_spr[13] = spr_cross;



global.custom_proj_top_spr[0] = spr_circle_cylinder;
global.custom_proj_top_spr[1] = spr_spike_cylinder;
global.custom_proj_top_spr[2] = spr_square_cylinder;

custom_map_loading = 0;

////////////////////////////////////////////////
//show_debug_overlay(true)


//discord presence
show_message_log("디스코드에 현재 활동 표기 중...");
#macro DISCORD_APP_ID "1073730369964220527"

ready = false;
discord_presence_update = 0
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_message_log("디스코드 연결 실패!");
//show_error("NekoPresence init fail.", true);
}



//전체 랭킹 리더보드
setup_gmscoreboard("a70d65f34511fece65808739de70d212","134126fa6426e417e2b28e18f146f280","04994b729d3a3b126cf95209f6639e39");
automatic_reload_player_leaderboard = 0;
automatic_leaderboard_cancle = 0;
global.player_leaderboard_difficulty = 0
global.total_score_normal = 0;
global.total_score_hardcore = 0;
global.top_ten_score_normal = -4;
global.top_ten_score_hardcore = -4;


//global setting
global.player_skin = 0
global.b_player_skin = 0
global.cannot_control = 0
global.master_volume = 1
global.bgm_volume = 0.5
global.custom_map_volume_control = 1
global.sfx_volume = 1
global.window_width = 1920
global.window_height = 1080
global.window_fullscreen = true
global.sc_img_for_pause = -4;
global.paused = 0
global.restart_stage = 0
global.total_death_point = 0;
global.back_to_game = 0
global.map_end_volumedown = 0
global.n_setting_button = -4
global.rank_display_alpha = 0
global.rank_display_r_alpha = 0
global.rank_display_b_alpha = 0
global.n_rank_display = "--"
global.result_exp = 0
global.result_obstacle = 0
global.result_score = 0
global.result_rank = 0

global.automatic_sycn_fixing = 0
global.n_sync = 0
global.random_illustration = 0


global.select_map = 2 //global.show_music_title = 0로 게임 시작
global.t_select_map = 2
global.die_sfx = wakgood_hurt
global.show_progress_bar = 0
progress_icon_alpha = 0
progress_alpha = 0
progress_alpha_sec = 0
saved_n_stage = 2
automatic_loading_cancel = 0

global.notice_title = ""
global.notice_title_sub = ""
global.saved_notice_title = ""
global.show_rank = 0
global.artifact_type = 0
global.run_shake_effect = 0
global.run_shake_checker = 0
global.show_music_title = 0
global.checkpoint_text = -4
global.n_music_title = -4
global.reload_n_map_list_value = 0
global.reload_n_map_list_value_animation = 0
global.n_music_artist = -4
global.n_music_id = -4;
global.n_music_name = -4
global.n_music_instance = -4
global.map_color = c_black
global.map_color_tmp = c_black
global.t_bg_color_alpha = 1
global.t_bg_color = 1
global.background_color = merge_color_new(global.map_color,c_black,0.9);
global.col_cal_delay = 0;
	if (global.background_color == c_black)
	{
		global.background_color = #1f1f1f;
	}
global.map_speed = 0
global.t_map_speed = 0
global.map_speed_y = 0
global.ui_alpha = 1
global.t_map_speed_y = 0
global.can_change_music_list = 0
global.map_scroll_ui_position = 0
global.map_list_ui_position = 0
global.select_difficulty = 0
global.t_select_difficulty = 0
global.selected_difficulty = 0
global.t_selected_difficulty = 1 //맵 난이도 설정 (1 == 노말)

global.crossed_obstacle_num = 0;
global.crossed_obstacle_num_with_maxhp = 0;

global.music_duration = 99999
global.bpm = 172
load_data_timer = 0
loading_now_progress = 0
global.character_setting = 0

global.level = 0
global.exp = 0
global.exp_for_draw = 0
global.exp_w_alpha = 0
global.max_exp = 1000
global.n_player_skin = -4
global.n_select_skin = 0
global.t_n_select_skin = 0
global.acquired_skin = -4

global.nametag_script_return0 = 0;
global.nametag_script_return1 = 0;
global.nametag_script_return2 = 0;
global.nametag_script_return3 = 0;


for(var i = 0; i < sprite_get_number(spr_illustrationCG); i++)
{
	global.unlocked_player_skin[i] = 0;
	global.unlocked_player_skin_name[i] = "";
	global.unlocked_player_skin_desc[i] = "";
	global.unlocked_player_skin_require_type[i] = 0;
	global.unlocked_player_skin_require_num[i] = 0;
}


	
for(var i = 0; i <= 11; i++)
{
	global.artifact_owned[i] = 0;
	global.max_artifact_owned[i] = 0;
	global.guide_showed[i] = 0;
}


global.custom_map_num = 0;



//좋아하는 곡 총 갯수
global.fav_music_num = 0

//클리어 하지 않은 곡 총 갯수
global.none_cleared_music_num = 0

//언락된 곡 총 갯수
global.unlocked_music_num = 0

var total_original_map = 29;
global.origin_total_map = total_original_map;
global.total_map = total_original_map;
outside_of_window = -4
automatic_reload_leaderboard = 0;

	//리더보드
	//LootLockerInitialize("dev_b49a5099c4ec48c69d8f6920b987c0a8",string(global.version),"활성화됨","PWB_map1_1");
	reload_leaderboard_automatically = 0
	//for(var i = 0; i < global.origin_total_map; i++)
	//{
	//	LootLockerInitialize("prod_edc3e07f8c8b401c92e3e2ff77119d00",string(global.version_real),"활성화됨","PWB_map_"+string(i+1)+"_1");
	//	LootLockerInitialize("prod_edc3e07f8c8b401c92e3e2ff77119d00",string(global.version_real),"활성화됨","PWB_map_"+string(i+1)+"_2");
	//}




	//곡 정보
	for(var i = 0; i < 255; i++)
	{
		//좋아요 한 곡
		global.fav_map_id[i] = -4;
		//해당 곡의 원래 오리지널 id값
		global.map_id_origin[i] = -4;

		
		
		
		//새로운 곡 표시에 포함될 곡 (커스텀 곡은 제외)
		global.unlocked_music_name[i] = "";
		global.b_unlocked_music_name[i] = "";
		global.unlocked_music_name_new_list[i] = "";
		global.unlocked_music_name_new_list_rightside[i] = "";
		global.unlocked_music_name_new_list_color[i] = c_white;
		global.unlocked_music_name_new_list_color_rightside[i] = c_white;
		global.new_unlocked_map_num = 0;


		//실제 리스트에만 표기되는 곡
		global.stage_map_name[i] = "";
		global.stage_map_artist[i] = -4;
		global.stage_map_difficulty[i] = -4;
		global.stage_map_color[i] = -4;
		global.stage_map_duration[i] = -4;
		global.stage_map_audio_name[i] = -4;
		global.stage_bpm[i] = -4;
		global.stage_map_highlight_part[i] = -4
		global.n_score[i] = "--";
		global.n_score_hardcore[i] = "--";
		global.n_favorite[i] = -1;
		global.n_artifact[i] = "X";
		global.detailed_difficulty[i] = -4;
		global.obtainable_type[i] = -4;
		global.requirement_level[i] = -4;




		//모든곡 정보
		global.real_stage_map_name[i] = "";
		global.real_stage_map_artist[i] = -4;
		global.real_stage_map_difficulty[i] = -4;
		global.real_stage_map_color[i] = -4;
		global.real_stage_map_duration[i] = -4;
		global.real_stage_map_audio_name[i] = -4;
		global.real_stage_bpm[i] = -4;
		global.real_stage_map_highlight_part[i] = -4;
		global.real_n_score[i] = "--";
		global.real_n_score_hardcore[i] = "--";
		global.real_n_favorite[i] = -1;
		global.real_n_artifact[i] = "X";
		global.real_detailed_difficulty[i] = -4
		global.real_obtainable_type[i] = -4
		global.real_requirement_level[i] = -4
		
		
		// 해당 곡 플레이 횟수 기록 (오리지널 스테이지만 기록됨)
		global.real_stage_playtime[i] = -4



		//커스텀 곡 정보
		global.custom_stage_map_name[i] = "";
		global.custom_stage_map_artist[i] = -4;
		global.custom_stage_map_difficulty[i] = -4;
		global.custom_map_duration[i] = -4;
		global.custom_stage_map_color[i] = -4;
		global.custom_stage_bpm[i] = -4;
		global.custom_stage_map_highlight_part[i] = -4;
		global.custom_n_score[i] = "--";
		global.custom_n_score_hardcore[i] = "--";
		global.custom_n_artifact[i] = "X";
		global.custom_detailed_difficulty[i] = -4;
		global.custom_obtainable_type[i] = -4;
		global.custom_requirement_level[i] = -4;
		global.custom_stage_album[i] = -4;
		global.custom_audio_asset[i] = -4;
		global.custom_stage_mapper[i] = -4;
		global.custom_map_file_dir[i] = "";
	}


//왁트 모르즈비
global.real_stage_map_name[0] = "왁트모르즈비";
global.real_stage_map_artist[0] = "영바이브 (ABER* (아버) 편곡)";
global.real_stage_map_difficulty[0] = "Tutorial";
global.real_stage_map_color[0] = #1076c8;
global.real_stage_map_duration[0] = 99999;
global.real_stage_map_audio_name[0] = "tutorial_part1";
global.real_stage_bpm[0] = 58;
global.real_stage_map_highlight_part[0] = 0;
global.real_detailed_difficulty[0] = 0;
global.real_obtainable_type[0] = 0
global.real_requirement_level[0] = 0
global.tutorial_now = 0
global.tutorial_wait_beat_alpha = 0;
bpm_timer = 0;
n_beat_index = 0;
global.tutorial_wait_beat_scale = [ 0, 0, 0 ];

//왁굳향 100% 첨가
global.real_stage_map_name[1] = "왁굳향100% 첨가";
global.real_stage_map_artist[1] = "제이타지";
global.real_stage_map_difficulty[1] = "Normal";
global.real_stage_map_color[1] = $FF007F16;
global.real_stage_map_duration[1] = 6900;
global.real_stage_map_audio_name[1] = "wakgoodhyang";
global.real_stage_bpm[1] = 82;
global.real_stage_map_highlight_part[1] = 21;
global.real_detailed_difficulty[1] = 2;
global.real_obtainable_type[1] = 0
global.real_requirement_level[1] = 0

//밤가이
global.real_stage_map_name[2] = "밤가이!!";
global.real_stage_map_artist[2] = "나쁜개츠비 (ABER* (아버) 편곡)";
global.real_stage_map_difficulty[2] = "Hard";
global.real_stage_map_color[2] = #bb631d;
global.real_stage_map_duration[2] = 5411;
global.real_stage_map_audio_name[2] = "bamguy";
global.real_stage_bpm[2] = 154.5;
global.real_stage_map_highlight_part[2] = 22.7;
global.real_detailed_difficulty[2] = 2;
global.real_obtainable_type[2] = 0
global.real_requirement_level[2] = 2
global.bamguy_effect = 0

//왁리오
global.real_stage_map_name[3] = "왁리오 (Wak'Lio)";
global.real_stage_map_artist[3] = "Team Pangenie (ABER* (아버) 편곡)";
global.real_stage_map_difficulty[3] = "Expert (Boss)";
global.real_stage_map_color[3] = #415c84;
global.real_stage_map_duration[3] = 4482;
global.real_stage_map_audio_name[3] = "wakrio";
global.real_stage_bpm[3] = 133.5;
global.real_stage_map_highlight_part[3] = 48.1;
global.real_detailed_difficulty[3] = 3.5;
global.real_obtainable_type[3] = 0
global.real_requirement_level[3] = 2
global.wakrio_effect = 0
global.wakrio_effect2 = 0
global.wakrio_effect3 = 0
wakrio_timer = 0


//알잘딱깔센
global.real_stage_map_name[4] = "Alzar Takkarsen";
global.real_stage_map_artist[4] = "BLKFLAGZ, WAKGOOD RECORDS (ABER* (아버) 편곡)";
global.real_stage_map_difficulty[4] = "Expert";
global.real_stage_map_color[4] = #c54a3d;
global.real_stage_map_duration[4] = 7005;
global.real_stage_map_audio_name[4] = "alzar";
global.real_stage_bpm[4] = 130;
global.real_stage_map_highlight_part[4] = 43.36;
global.real_detailed_difficulty[4] = 3.5;
global.real_obtainable_type[4] = 0
global.real_requirement_level[4] = 4
global.alzar_effect = 0
global.alzar_effect2 = 0
alzar_timer = 0
alzar_timer2 = 0
alzar_timer2_stack = 0
alzar_t_timer = 27
spotlight1_preview_ins = -4
spotlight2_preview_ins = -4


//뒤틀린 사랑
global.real_stage_map_name[5] = "뒤틀린 사랑";
global.real_stage_map_artist[5] = "Mixing by 마이보틀 / Original by Porter Robinson, Madeon";
global.real_stage_map_difficulty[5] = "Expert";
global.real_stage_map_color[5] = #219cac;
global.real_stage_map_duration[5] = 5791;
global.real_stage_map_audio_name[5] = "shelter";
global.real_stage_bpm[5] = 100;
global.real_stage_map_highlight_part[5] = 46.4;
global.real_detailed_difficulty[5] = 4;
global.real_obtainable_type[5] = 0
global.real_requirement_level[5] = 5


//느그란 또리스모
global.real_stage_map_name[6] = "느그란 또리스모";
global.real_stage_map_artist[6] = "갉갉";
global.real_stage_map_difficulty[6] = "Normal";
global.real_stage_map_color[6] = #2fdc40;
global.real_stage_map_duration[6] = 6188;
global.real_stage_map_audio_name[6] = "turisumo";
global.real_stage_bpm[6] = 160;
global.real_stage_map_highlight_part[6] = 6;
global.real_detailed_difficulty[6] = 2.5;
global.real_obtainable_type[6] = 9
global.real_requirement_level[6] = 3
global.turisumo_effect = 0
global.turisumo_effect_2 = 0
global.turisumo_effect_scale = 0
global.t_turisumo_effect_scale = 0
global.turisumo_effect_3 = 0
turisumo_bpm_timer = 0
turisumo_road_sign_delay = 0


//융터르
global.real_stage_map_name[7] = "융터르";
global.real_stage_map_artist[7] = "CLTH";
global.real_stage_map_difficulty[7] = "Expert (Boss)";
global.real_stage_map_color[7] = c_black;
global.real_stage_map_duration[7] = 4749;
global.real_stage_map_audio_name[7] = "Yoong";
global.real_stage_bpm[7] = 176;
global.real_stage_map_highlight_part[7] = 16.1;
global.real_detailed_difficulty[7] = 4.5;
global.real_obtainable_type[7] = 0
global.real_requirement_level[7] = 8
global.quake_effect = 0
global.yoong_laser_dir = 0
global.yoong_laser_dir2 = 0
cre_now1 = 0
cre_now2 = 0
random_dir_laser = choose(-1,1)
random_dir_laser2 = choose(-1,1)


//매스터 리믹스
global.real_stage_map_name[8] = "매스터 리믹스 (Orchestral Edit)";
global.real_stage_map_artist[8] = "Team Pangenie";
global.real_stage_map_difficulty[8] = "Expert (Boss)";
global.real_stage_map_color[8] = #333d4b;
global.real_stage_map_duration[8] = 7291;
global.real_stage_map_audio_name[8] = "master_remix";
global.real_stage_bpm[8] = 132;
global.real_stage_map_highlight_part[8] = 88.8;
global.real_detailed_difficulty[8] = 6;
global.real_obtainable_type[8] = 0
global.real_requirement_level[8] = 11
global.master_remix_effect = 0
master_bpm_timer = 0
global.master_remix_effect2 = 0
global.master_remix_effect3 = 0
global.master_remix_effect4 = 0
master_movement_dir = -3
master_movement_timer = 0
global.master_remix_effect5 = 0


//곡 필터링 - 우왁굳
global.filter_song_wakgood = [ 0, 8 ];

//후쿠로우
global.real_stage_map_name[9] = "부엉이 (Cover by 아이네 INE)";
global.real_stage_map_artist[9] = "Original by KOKIA / Inst by Kupon";
global.real_stage_map_difficulty[9] = "Easy";
global.real_stage_map_color[9] = #3d333e;
global.real_stage_map_duration[9] = 4800;
global.real_stage_map_audio_name[9] = "fukurou";
global.real_stage_bpm[9] = 45;
global.real_stage_map_highlight_part[9] = 46;
global.real_detailed_difficulty[9] = 0.5;
global.real_obtainable_type[9] = 1
global.real_requirement_level[9] = 1
global.fukurou_snow_effect = 0


//고멤가요제 MASHUP
global.real_stage_map_name[10] = "고멤가요제 MASHUP (아이네 INE)";
global.real_stage_map_artist[10] = "고단씨, 타라맛스";
global.real_stage_map_difficulty[10] = "Expert";
global.real_stage_map_color[10] = #10043f;
global.real_stage_map_duration[10] = 6778;
global.real_stage_map_audio_name[10] = "gomem_mashup";
global.real_stage_bpm[10] = 140;
global.real_stage_map_highlight_part[10] = 43.5;
global.real_detailed_difficulty[10] = 4.5;
global.real_obtainable_type[10] = 1;
global.real_requirement_level[10] = 9;
global.gomem_mashup_effect = 0
global.gomem_mashup_effect_dir = 0
gomem_mashup_effect_dir_updown = -1
gomem_mashup_effect_dir_updown_timer = 0
gomem_mashup_effect_dir_updown2 = -1
global.gomem_mashup_effect_arrow_alpha = 0


//Phony
global.real_stage_map_name[11] = "Phony (Cover by 비챤 VIichan)";
global.real_stage_map_artist[11] = "Mixing by Min / Original by Tsumiki";
global.real_stage_map_difficulty[11] = "Normal";
global.real_stage_map_color[11] = #757c45
global.real_stage_map_duration[11] = 5136;
global.real_stage_map_audio_name[11] = "phony";
global.real_stage_bpm[11] = 170;
global.real_stage_map_highlight_part[11] = 15.72;
global.real_detailed_difficulty[11] = 2.5;
global.real_obtainable_type[11] = 2
global.real_requirement_level[11] = 1
global.phony_effect = 0
phony_y = 0
phony_t_y = 1
phony_y_timer = 0


//로키
global.real_stage_map_name[12] = "로키 ROKI (Cover by 비챤 VIichan)";
global.real_stage_map_artist[12] = "Mixing by Min / Original by mikitoP";
global.real_stage_map_difficulty[12] = "Expert (Boss)";
global.real_stage_map_color[12] = #424278;
global.real_stage_map_duration[12] = 4738;
global.real_stage_map_audio_name[12] = "roki";
global.real_stage_bpm[12] = 157;
global.real_stage_map_highlight_part[12] = 52.05;
global.real_detailed_difficulty[12] = 6;
global.real_obtainable_type[12] = 11;
global.real_requirement_level[12] = 10;
global.roki_effect1 = 0


//금목서
global.real_stage_map_name[13] = "Fire Again (Cover by 비챤 VIichan)";
global.real_stage_map_artist[13] = "Original by Ashnikko, Grabbitz";
global.real_stage_map_difficulty[13] = "Hard";
global.real_stage_map_color[13] = c_black;
global.real_stage_map_duration[13] = 6474;
global.real_stage_map_audio_name[13] = "fire_again";
global.real_stage_bpm[13] = 99;
global.real_stage_map_highlight_part[13] = 180;
global.real_detailed_difficulty[13] = 3;
global.real_obtainable_type[13] = 99;
global.real_requirement_level[13] = 9999;


//아이패드
global.real_stage_map_name[14] = "아이패드";
global.real_stage_map_artist[14] = "뾰복";
global.real_stage_map_difficulty[14] = "Hard";
global.real_stage_map_color[14] = #5595ff;
global.real_stage_map_duration[14] = 4316;
global.real_stage_map_audio_name[14] = "ipad";
global.real_stage_bpm[14] = 130;
global.real_stage_map_highlight_part[14] = 30.3;
global.real_detailed_difficulty[14] = 3;
global.real_obtainable_type[14] = 3;
global.real_requirement_level[14] = 3;
global.ipad_random_xx = -4;
global.ipad_random_xspeed = -4;
global.ipad_random_yspeed = -4;
global.ipad_effect = 0;


//유하
global.real_stage_map_name[15] = "유하";
global.real_stage_map_artist[15] = "ruhungsu 루형수포쓰";
global.real_stage_map_difficulty[15] = "Hard (Hardcore)";
global.real_stage_map_color[15] = #5595ff;
global.real_stage_map_duration[15] = 4242;
global.real_stage_map_audio_name[15] = "yuha";
global.real_stage_bpm[15] = 89;
global.real_stage_map_highlight_part[15] = 34.8;
global.real_detailed_difficulty[15] = 3;
global.real_obtainable_type[15] = 3;
global.real_requirement_level[15] = 8;
global.yuha_effect1 = 0
global.yuha_effect2 = 0
global.yuha_effect3 = 0


//Happy Gosegu Sencho!
global.real_stage_map_name[16] = "Happy Gosegu Sencho!";
global.real_stage_map_artist[16] = "피젯스피니 FidgetSpinny";
global.real_stage_map_difficulty[16] = "Expert (Boss)";
global.real_stage_map_color[16] = #52bcfe;
global.real_stage_map_duration[16] = 7480;
global.real_stage_map_audio_name[16] = "happysegu";
global.real_stage_bpm[16] = 140;
global.real_stage_map_highlight_part[16] = 27.4;
global.real_detailed_difficulty[16] = 4.5;
global.real_obtainable_type[16] = 3;
global.real_requirement_level[16] = 5;
global.happysegu_effect1 = 0;
global.happysegu_effect2 = 0;
global.happysegu_effect3 = 0;
happysegu_pattern_timer = 0
global.happysegu_effect_pattern = [1,2,1,1,2,1,2,2];


//fans
global.real_stage_map_name[17] = "팬서비스 (Cover by 고세구 GOSEGU)";
global.real_stage_map_artist[17] = "Original by HoneyWorks";
global.real_stage_map_difficulty[17] = "Expert";
global.real_stage_map_color[17] = #363d5a;
global.real_stage_map_duration[17] = 7480;
global.real_stage_map_audio_name[17] = "fans";
global.real_stage_bpm[17] = 180;
global.real_stage_map_highlight_part[17] = 49.5;
global.real_detailed_difficulty[17] = 4.5;
global.real_obtainable_type[17] = 99;
global.real_requirement_level[17] = 9999;


//Promise
global.real_stage_map_name[18] = "Promise (Cover by 릴파 Lilpa)";
global.real_stage_map_artist[18] = "Mixing by 공띵 / Original by GrooPark";
global.real_stage_map_difficulty[18] = "Hard";
global.real_stage_map_color[18] = #344a87;
global.real_stage_map_duration[18] = 5453;
global.real_stage_map_audio_name[18] = "promise";
global.real_stage_bpm[18] = 165;
global.real_stage_map_highlight_part[18] = 39.5;
global.real_detailed_difficulty[18] = 3;
global.real_obtainable_type[18] = 4;
global.real_requirement_level[18] = 6;
global.promise_effect = 0


//궁시렁 리믹스
global.real_stage_map_name[19] = "궁시렁 리믹스";
global.real_stage_map_artist[19] = "레이지스피크";
global.real_stage_map_difficulty[19] = "Normal";
global.real_stage_map_color[19] = #fbd780;
global.real_stage_map_duration[19] = 3343;
global.real_stage_map_audio_name[19] = "gungsirung";
global.real_stage_bpm[19] = 173;
global.real_stage_map_highlight_part[19] = 6;
global.real_detailed_difficulty[19] = 2;
global.real_obtainable_type[19] = 15;
global.real_requirement_level[19] = 6;


//스테이
global.real_stage_map_name[20] = "STAY (Cover by 징버거 JINGBURGER)";
global.real_stage_map_artist[20] = "Mixing by 시온 / Original by The Kid LAROI, Justin Bieber";
global.real_stage_map_difficulty[20] = "Normal";
global.real_stage_map_color[20] = #5cc4cd;
global.real_stage_map_duration[20] = 3343;
global.real_stage_map_audio_name[20] = "stay";
global.real_stage_bpm[20] = 60;
global.real_stage_map_highlight_part[20] = 2;
global.real_detailed_difficulty[20] = 2;
global.real_obtainable_type[20] = 99;
global.real_requirement_level[20] = 9999;


//어푸
global.real_stage_map_name[21] = "어푸 (Cover by 주르르 Jururu)";
global.real_stage_map_artist[21] = "Mixing by 믹스마스터 / Original by 아이유 IU\nReworked Map by ABER* (아버) / Original Map by 댐쿵이";
global.real_stage_map_difficulty[21] = "Normal";
global.real_stage_map_color[21] = #2BA6ED;
global.real_stage_map_duration[21] = 6300;
global.real_stage_map_audio_name[21] = "apu";
global.real_stage_bpm[21] = 121;
global.real_stage_map_highlight_part[21] = 51.5;
global.real_detailed_difficulty[21] = 3.5;
global.real_obtainable_type[21] = 5;
global.real_requirement_level[21] = 4;


//사이언티스트
global.real_stage_map_name[22] = "SCIENTIST (Cover by 주르르 Jururu, feat. 아이네)";
global.real_stage_map_artist[22] = "Mixing by Chocotree / Original by TWICE(트와이스)";
global.real_stage_map_difficulty[22] = "Hard";
global.real_stage_map_color[22] = $FF7D5EEE;
global.real_stage_map_duration[22] = 3343;
global.real_stage_map_audio_name[22] = "scientist";
global.real_stage_bpm[22] = 120;
global.real_stage_map_highlight_part[22] = 43.41;
global.real_detailed_difficulty[22] = 4;
global.real_obtainable_type[22] = 99;
global.real_requirement_level[22] = 9999;




//Re:wind
global.real_stage_map_name[23] = "RE:WIND";
global.real_stage_map_artist[23] = "Arranged by ABER* (아버) / Remix by Hyeok, Elestee";
global.real_stage_map_difficulty[23] = "Expert";
global.real_stage_map_color[23] = #d892a6;
global.real_stage_map_duration[23] = 7495;
global.real_stage_map_audio_name[23] = "rewind";
global.real_stage_bpm[23] = 75;
global.real_stage_map_highlight_part[23] = 12.70;
global.real_detailed_difficulty[23] = 4.5;
global.real_obtainable_type[23] = 8;
global.real_requirement_level[23] = 4;


//겨울봄
global.real_stage_map_name[24] = "겨울봄 (Winter Spring)";
global.real_stage_map_artist[24] = "Remix by BAKAINU";
global.real_stage_map_difficulty[24] = "Normal (Hardcore)";
global.real_stage_map_color[24] = #a594e4;
global.real_stage_map_duration[24] = 3489.6;
global.real_stage_map_audio_name[24] = "winter_spring";
global.real_stage_bpm[24] = 85;
global.real_stage_map_highlight_part[24] = 33.95;
global.real_detailed_difficulty[24] = 2;
global.real_obtainable_type[24] = 8;
global.real_requirement_level[24] = 5;


//락다운
global.real_stage_map_name[25] = "Lockdown (락다운)";
global.real_stage_map_artist[25] = "Remix by Matsutoki";
global.real_stage_map_difficulty[25] = "Expert (Boss)";
global.real_stage_map_color[25] = c_black;
global.real_stage_map_duration[25] = 4530;
global.real_stage_map_audio_name[25] = "lockdown";
global.real_stage_bpm[25] = 132.4;
global.real_stage_map_highlight_part[25] = 28.1;
global.real_detailed_difficulty[25] = 6.5;
global.real_obtainable_type[25] = 8;
global.real_requirement_level[25] = 12;
global.lockdown_effect1 = 0
global.lockdown_effect2 = 0
global.lockdown_effect3 = 0
global.lockdown_effect4 = 0
global.lockdown_effect5 = 0
global.lockdown_effect6 = 0
lockdown_pattern_dir = [ 0,1.1,-1,-1.5,1,-0.7,1.6,-1.1,-0.4,1.5 ];
lockdown_pattern_shoot = [ 1,0,0,0 ];
lockdown_pattern_s_timer = 0;
lockdown_pattern_d_timer = 0;
lockdown_pattern_timer = 0
lockdown_effect4_1 = 0
lockdown_effect5_1 = 0
lockdown_effect5_2 = 0
lockdown_effect5_3 = 0
pipe_ef = -4
pipe_target_angle = irandom_range(-40,40);
b_direction_plusment = 0
total_stack_direction_plusment = 0


//이세돌향 첨가
global.real_stage_map_name[26] = "이세돌향 100% 첨가";
global.real_stage_map_artist[26] = "제이타지";
global.real_stage_map_difficulty[26] = "Hard (Hardcore)";
global.real_stage_map_color[26] = $FF7D5EEE;
global.real_stage_map_duration[26] = 4432;
global.real_stage_map_audio_name[26] = "isedolhyang";
global.real_stage_bpm[26] = 85;
global.real_stage_map_highlight_part[26] = 28.71;
global.real_detailed_difficulty[26] = 3;
global.real_obtainable_type[26] = 8;
global.real_requirement_level[26] = 7;


//우마뾰이 전설
global.real_stage_map_name[27] = "우마뾰이 전설 (Cover by 이세계아이돌)";
global.real_stage_map_artist[27] = "Uma Musume Pretty Derby OST";
global.real_stage_map_difficulty[27] = "Expert";
global.real_stage_map_color[27] = #363d5a;
global.real_stage_map_duration[27] = 4432;
global.real_stage_map_audio_name[27] = "umamusume";
global.real_stage_bpm[27] = 170;
global.real_stage_map_highlight_part[27] = 66;
global.real_detailed_difficulty[27] = 4;
global.real_obtainable_type[27] = 99;
global.real_requirement_level[27] = 9999;



//키딩 (Kidding)
global.real_stage_map_name[28] = "키딩 (Kidding)";
global.real_stage_map_artist[28] = "이세계아이돌 (ISEGYE IDOL)";
global.real_stage_map_difficulty[28] = "Normal";
global.real_stage_map_color[28] = #B4C0DD;
global.real_stage_map_duration[28] = 4432;
global.real_stage_map_audio_name[28] = "kidding";
global.real_stage_bpm[28] = 130;
global.real_stage_map_highlight_part[28] = 74;
global.real_detailed_difficulty[28] = 1.5;
global.real_obtainable_type[28] = 99;
global.real_requirement_level[28] = 9999;

//곡 필터링 - 이세돌
global.filter_song_isedol = [ 9 , 28 ];







global.hardcore_only_num = 0;
global.both_difficulty_num = 0;
for(var i = 0; i < global.total_map; i++)
{
	var tmp_type = global.real_obtainable_type[i];
	if (tmp_type >= 9)
	{
		tmp_type -= 9;
	}
	
	if (tmp_type != 8 && tmp_type < 17)
	{
		global.max_artifact_owned[tmp_type]++;
	}
	
	if (global.real_obtainable_type[i] != 99)
	{
		if (string_pos("(Hardcore)", global.real_stage_map_name[i]) != 0)
		{
			global.hardcore_only_num++;
		}
		else
		{
			global.both_difficulty_num++;
		}
	}
}



//특수 효과
global.additional_hp = 0; //단위 hp
global.dash_cross_bonus = 0; //단위 score
global.dash_cross_bonus_maxhp = 0; //단위 score
global.dash_dec_c_time = 0; //단위 frame
global.ignore_damage = 0; //단위 percentage
global.minimum_rank = 0;  //단위 rank
global.addition_invinc_time = 0;  //단위 frame
global.clear_bonus_score = 0; //단위 score
global.damaged_bonus_score = 0;
	
global.unlocked_player_skin_name[0] = "대쉬로 피한 탄막 갯수만큼 보너스 점수 +25를 얻습니다"
global.unlocked_player_skin_require_type[0] = 0;
global.unlocked_player_skin_require_num[0] = global.max_artifact_owned[0];
global.unlocked_player_skin_name[1] = "20% 확률로 피해를 무시합니다"
global.unlocked_player_skin_require_type[1] = 0;
global.unlocked_player_skin_require_num[1] = global.max_artifact_owned[0]+3;
global.unlocked_player_skin_name[2] = "피해를 받았을 때 보너스 점수 +5000을 얻습니다"
global.unlocked_player_skin_require_type[2] = 0;
global.unlocked_player_skin_require_num[2] = "아무 곡이나 대쉬를 사용하지 않고\nS랭크 이상으로 클리어 (튜토리얼 제외)";
global.unlocked_player_skin_name[3] = "대쉬로 피한 탄막 갯수만큼 보너스 점수 +50를 얻습니다"
global.unlocked_player_skin_require_type[3] = 0;
global.unlocked_player_skin_require_num[3] = "'왁굳향100% 첨가'곡을\nA+랭크 이상으로 클리어";
global.unlocked_player_skin_name[4] = "최하 랭크가 A로 고정"
global.unlocked_player_skin_require_type[4] = 1;
global.unlocked_player_skin_require_num[4] = global.max_artifact_owned[1];
global.unlocked_player_skin_name[5] = "첫 시작 때 추가 체력 +1을 얻고 시작합니다"
global.unlocked_player_skin_require_type[5] = 1;
global.unlocked_player_skin_require_num[5] = global.max_artifact_owned[1];
global.unlocked_player_skin_name[6] = "최대 체력 상태일 때 대쉬로 피한 탄막 보너스 점수 +100을 얻습니다"
global.unlocked_player_skin_require_type[6] = 1;
global.unlocked_player_skin_require_num[6] = global.max_artifact_owned[1];
global.unlocked_player_skin_name[7] = "대쉬로 피한 탄막 갯수만큼 보너스 점수 +50를 얻습니다"
global.unlocked_player_skin_require_type[7] = 1;
global.unlocked_player_skin_require_num[7] = global.max_artifact_owned[1]+2;
global.unlocked_player_skin_name[8] = "피해를 받은 후 무적 시간이 +0.5초 증가합니다"
global.unlocked_player_skin_require_type[8] = 2;
global.unlocked_player_skin_require_num[8] = global.max_artifact_owned[2];
global.unlocked_player_skin_name[9] = "대쉬 사용 쿨타임이 0.5초 증가하는 대신 대쉬로 피한 탄막 보너스 점수 +200을 얻습니다"
global.unlocked_player_skin_require_type[9] = 2;
global.unlocked_player_skin_require_num[9] = global.max_artifact_owned[2];
global.unlocked_player_skin_name[10] = "S랭크 이상으로 클리어시 보너스 점수 5000점을 얻습니다"
global.unlocked_player_skin_require_type[10] = 2;
global.unlocked_player_skin_require_num[10] = global.max_artifact_owned[2];
global.unlocked_player_skin_name[11] = "대쉬 사용 쿨타임이 0.5초 증가하는 대신 대쉬로 피한 탄막 보너스 점수 +200을 얻습니다"
global.unlocked_player_skin_require_type[11] = 2;
global.unlocked_player_skin_require_num[11] = "'로키 ROKI'곡을\nA+랭크 이상으로 클리어"
global.unlocked_player_skin_name[12] = "첫 시작 때 추가 체력 +1을 얻고 시작합니다"
global.unlocked_player_skin_require_type[12] = 3;
global.unlocked_player_skin_require_num[12] = global.max_artifact_owned[3];
global.unlocked_player_skin_name[13] = "피해를 받은 후 무적 시간이 +0.5초 증가합니다"
global.unlocked_player_skin_require_type[13] = 3;
global.unlocked_player_skin_require_num[13] = global.max_artifact_owned[3];
global.unlocked_player_skin_name[14] = "대쉬 사용 쿨타임이 0.5초 증가하는 대신 대쉬로 피한 탄막 보너스 점수 +200을 얻습니다"
global.unlocked_player_skin_require_type[14] = 3;
global.unlocked_player_skin_require_num[14] = global.max_artifact_owned[3];
global.unlocked_player_skin_name[15] = "피해를 받았을 때 보너스 점수 +5000을 얻습니다"
global.unlocked_player_skin_require_type[15] = 3;
global.unlocked_player_skin_require_num[15] = global.max_artifact_owned[3]+3;
global.unlocked_player_skin_name[16] = "최대 체력 상태일 때 대쉬로 피한 탄막 보너스 점수 +100을 얻습니다"
global.unlocked_player_skin_require_type[16] = 4;
global.unlocked_player_skin_require_num[16] = global.max_artifact_owned[4];
global.unlocked_player_skin_name[17] = "20% 확률로 피해를 무시합니다"
global.unlocked_player_skin_require_type[17] = 4;
global.unlocked_player_skin_require_num[17] = global.max_artifact_owned[4];
global.unlocked_player_skin_name[18] = "피해를 받은 후 무적 시간이 +0.5초 증가합니다"
global.unlocked_player_skin_require_type[18] = 4;
global.unlocked_player_skin_require_num[18] = global.max_artifact_owned[4];
global.unlocked_player_skin_name[19] = "대쉬 사용 쿨타임이 0.5초 증가하는 대신 대쉬로 피한 탄막 보너스 점수 +200을 얻습니다"
global.unlocked_player_skin_require_type[19] = 4;
global.unlocked_player_skin_require_num[19] = global.max_artifact_owned[4]+1;
global.unlocked_player_skin_name[20] = "첫 시작 때 추가 체력 +1을 얻고 시작합니다"
global.unlocked_player_skin_require_type[20] = 5;
global.unlocked_player_skin_require_num[20] = global.max_artifact_owned[5];
global.unlocked_player_skin_name[21] = "20% 확률로 피해를 무시합니다"
global.unlocked_player_skin_require_type[21] = 5;
global.unlocked_player_skin_require_num[21] = global.max_artifact_owned[5];
global.unlocked_player_skin_name[22] = "대쉬 사용 쿨타임이 0.5초 증가하는 대신 대쉬로 피한 탄막 보너스 점수 +200을 얻습니다"
global.unlocked_player_skin_require_type[22] = 5;
global.unlocked_player_skin_require_num[22] = global.max_artifact_owned[5];
global.unlocked_player_skin_name[23] = "최대 체력 상태일 때 대쉬로 피한 탄막 보너스 점수 +100을 얻습니다"
global.unlocked_player_skin_require_type[23] = 5;
global.unlocked_player_skin_require_num[23] = global.max_artifact_owned[5]+1;
global.unlocked_player_skin_name[24] = "피해를 받은 후 무적 시간이 +0.5초 증가합니다"
global.unlocked_player_skin_require_type[24]  = 6;
global.unlocked_player_skin_require_num[24] = global.max_artifact_owned[6];
global.unlocked_player_skin_name[25] = "S랭크 이상으로 클리어시 보너스 점수 5000점을 얻습니다"
global.unlocked_player_skin_require_type[25] = 6;
global.unlocked_player_skin_require_num[25] = global.max_artifact_owned[6];
global.unlocked_player_skin_name[26] = "최대 체력 상태일 때 대쉬로 피한 탄막 보너스 점수 +100을 얻습니다"
global.unlocked_player_skin_require_type[26] = 6;
global.unlocked_player_skin_require_num[26] = global.max_artifact_owned[6];
global.unlocked_player_skin_name[27] = "대쉬 사용 쿨타임이 0.5초 증가하는 대신 대쉬로 피한 탄막 보너스 점수 +200을 얻습니다"
global.unlocked_player_skin_require_type[27] = 6;
global.unlocked_player_skin_require_num[27] = global.max_artifact_owned[6]+1;






global.player_color = $FF4AB539
global.n_progress = 0
global.background_w_alpha = 0
global.sync_setting = 0
global.sync_setting_alpha = 0
global.music_sync_offset = 0
sync_setting_timer = 0
sync_play_part = 0
	for(var i = 0; i <= 2; i++)
	{
		global.sync_setting_circle_scale[i] = 1;
		global.setting_beat_w_alpha[i] = 0
		sync_play[i] = 0
	}


global.start_point = 0
	for(var i = 0; i <= 5; i++)
	{
		global.savepoint_position[i] = -4
		global.savepoint_color[i] = global.map_color
	}
global.respawn_point_xx = -4
global.respawn_point_yy = -4


//global.camera_sx = -4
global.w_alpha = 0
global.b_alpha = 0
global.t_w_alpha = -0.01
global.t_b_alpha = -0.01


global.rewind = 0
global.clock_alpha_1 = 0
global.clock_alpha_2 = 0
global.new_song_scroll = 0
global.t_new_song_scroll = 0
global.show_new_songs = 0

global.c_w = -4
global.c_h = -4

global.c_x = -4
global.c_y = -4

global.check_died = 0


global.rewind_effect_line_angle = 0
global.savepoint_text_alpha = 0
global.savepoint_text_t_alpha = 0
	for(var i = 0; i < 16; i++)
	{
		global.rewind_effect_line_pos[i] = -4
	}



//play highlight (music)
global.highlight_time = 0
global.highlight_music = -4;
global.highlight_music_volume = 0;
play_highlight = 1
n_stage = 2
gamestart = 0
gamestart_anime = 0
instance_create_depth(0,0,0,obj_album_ui)





//tutorial
global.tutorial_now = 0
global.tutorial_n_stage = 0


//rank system
global.total_died_here = 0
randomize()



//favorite animation
global.fav_anime = 0

//현재 로드중인 맵 리스트
global.n_map_list = 0
global.b_map_list = 0
global.b_t_select_map = 0

//맵 리스트 로드
load_musicList(0)
n_stage = 0
event_user(7)





//모바일용 조이스틱
global.joystick_xx = -4
global.joystick_yy = -4
global.joystick_width = -4;
global.joystick_height = -4;
global.joystick_n_xx = -4
global.joystick_n_yy = -4
global.scroll_n_m_xx = -1
global.scroll_n_m_yy = -1
global.random_seed = -4
global.joystick_dir = 0
global.joystick_activated = -1
global.joystick_alpha = 0
global.joystick_size = 512
global.scroll_activated = -1
global.clicking_timer = 0
global.clicking_del = 0
scrolling_map = 0






