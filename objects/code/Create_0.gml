/// @description Insert description here
// You can write your code in this editor
global.version_real = "4.9";
global.version = "Beta "+string(global.version_real);
global.beta_tester = 1
surf_screen = -4;
music_title_alpha = 0
global.blackout_alpha = 0;
global.low_graphics = false;
global.dev_mode = 1
global.mobile_mode = (os_type == 0) ? 0 : 1;
global.font_ratio_resolution_xx = 1
global.custom_map_directory = string(program_directory)+"\\Custom map files\\";
global.nickname = ""
global.dashed = 0
//메인메뉴 애니메이션 재생
global.show_title_menu = 1;
global.title_menu_animation1 = 0;
global.title_menu_animation2 = 0;
global.overtime_highlight_song = 1;
global.show_credit = 1;
global.beta_tester = 0;
global.tutorial_played = 0;
global.boss_battle = 0

//닉네임 강제 초기화는 b_force_wipe_nickname 값을 수정하면 가능
b_force_wipe_nickname = 0
global.force_wipe_nickname = 1




alarm[11] = 1


//텍스쳐 및 오디오 로딩
for(var i = 0; i <= 4; i++)
{
	audio_group_load(i);
}

texturegroup_load("UI")
texturegroup_load("hitbox_shapes")
texturegroup_load("effects")

////////////////////////////////////////////////
//show_debug_overlay(true)


//discord presence
#macro DISCORD_APP_ID "1073730369964220527"

ready = false;
discord_presence_update = 0
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
//show_error("NekoPresence init fail.", true);
}



//전체 랭킹 리더보드
setup_gmscoreboard("a70d65f34511fece65808739de70d212");
automatic_reload_player_leaderboard = 0;
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
global.show_music_title = 0
global.checkpoint_text = -4
global.n_music_title = -4
global.reload_n_map_list_value = 0
global.reload_n_map_list_value_animation = 0
global.n_music_artist = -4
global.n_music_id = -4;
global.n_music_name = -4
global.n_music_instance = -4
global.map_color = -4
global.t_bg_color_alpha = 1
global.t_bg_color = 1
global.background_color = merge_color(global.map_color,c_black,0.9)
	if (global.background_color == c_black)
	{
		global.background_color = merge_color(c_white,c_black,0.95)
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

global.crossed_obstacle_num = 0

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
for(var i = 0; i < sprite_get_number(spr_illustrationCG); i++)
{
	global.unlocked_player_skin[i] = 0;
	global.unlocked_player_skin_name[i] = "";
	global.unlocked_player_skin_require_type[i] = 0;
	global.unlocked_player_skin_require_num[i] = 0;
}

	
	
for(var i = 0; i <= 11; i++)
{
	global.artifact_owned[i] = 0;
	global.max_artifact_owned[i] = 0;
	global.guide_showed[i] = 0;
}


//좋아하는 곡 총 갯수
global.fav_music_num = 0

//클리어 하지 않은 곡 총 갯수
global.none_cleared_music_num = 0

//언락된 곡 총 갯수
global.unlocked_music_num = 0

var total_original_map = 23;
global.origin_total_map = total_original_map;
global.total_map = total_original_map;
outside_of_window = -4
automatic_reload_leaderboard = 0;

	//리더보드
	//LootLockerInitialize("dev_b49a5099c4ec48c69d8f6920b987c0a8",string(global.version),"true","JWAB_map1_1");
	reload_leaderboard_automatically = 0
	for(var i = 0; i < global.origin_total_map; i++)
	{
		LootLockerInitialize("prod_edc3e07f8c8b401c92e3e2ff77119d00",string(global.version_real),"true","JWAB_map_"+string(i+1)+"_1");
		LootLockerInitialize("prod_edc3e07f8c8b401c92e3e2ff77119d00",string(global.version_real),"true","JWAB_map_"+string(i+1)+"_2");
	}




	//곡 정보
	for(var i = 0; i < global.total_map; i++)
	{
		//좋아요 한 곡
		global.fav_map_id[i] = -4;
		//해금된 곡
		global.unlocked_map_id[i] = -4;
		
		
		//새로운 곡 표시에 포함될 곡 (커스텀 곡은 제외)
		global.unlocked_music_name[i] = "";
		global.b_unlocked_music_name[i] = "";
		global.unlocked_music_name_new_list[i] = "";
		global.unlocked_music_name_new_list_rightside[i] = "";
		global.unlocked_music_name_new_list_color[i] = c_white;
		global.unlocked_music_name_new_list_color_rightside[i] = c_white;
		global.new_unlocked_map_num = 0;


		//실제 리스트에만 표기되는 곡
		global.stage_map_name[i] = -4;
		global.stage_map_artist[i] = -4;
		global.stage_map_difficulty[i] = -4;
		global.stage_map_color[i] = -4;
		global.stage_map_duration[i] = -4;
		global.stage_map_audio_name[i] = -4;
		global.stage_bpm[i] = -4;
		global.stage_map_highlight_part[i] = -4
		global.n_rank[i] = "--";
		global.n_rank_hardcore[i] = "--";
		global.n_score[i] = "--";
		global.n_score_hardcore[i] = "--";
		global.n_favorite[i] = -1;
		global.n_artifact[i] = "X";
		global.detailed_difficulty[i] = -4;
		global.obtainable_type[i] = -4;
		global.requirement_level[i] = -4;




		//모든곡 정보
		global.real_stage_map_name[i] = -4;
		global.real_stage_map_artist[i] = -4;
		global.real_stage_map_difficulty[i] = -4;
		global.real_stage_map_color[i] = -4;
		global.real_stage_map_duration[i] = -4;
		global.real_stage_map_audio_name[i] = -4;
		global.real_stage_bpm[i] = -4;
		global.real_stage_map_highlight_part[i] = -4
		global.real_n_rank[i] = "--";
		global.real_n_rank_hardcore[i] = "--";
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
		global.custom_stage_map_name[i] = -4;
		global.custom_stage_map_artist[i] = -4;
		global.custom_stage_map_difficulty[i] = -4;
		global.custom_map_duration[i] = -4;
		global.custom_stage_map_color[i] = -4;
		global.custom_stage_map_audio_name[i] = -4;
		global.custom_stage_bpm[i] = -4;
		global.custom_stage_map_highlight_part[i] = -4
		global.custom_n_rank[i] = "--";
		global.custom_n_rank_hardcore[i] = "--";
		global.custom_n_score[i] = "--";
		global.custom_n_score_hardcore[i] = "--";
		global.custom_n_artifact[i] = "X";
		global.custom_detailed_difficulty[i] = -4
		global.custom_obtainable_type[i] = -4
		global.custom_requirement_level[i] = -4
		global.custom_stage_album[i] = -4
		global.custom_audio_asset[i] = -4
	}


//왁트 모르즈비
global.real_stage_map_name[0] = "왁트모르즈비";
global.real_stage_map_artist[0] = "영바이브 (아버 편곡)";
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
global.real_stage_map_artist[2] = "나쁜개츠비 (아버 편곡)";
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
global.real_stage_map_artist[3] = "Team Pangenie (아버 편곡)";
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
global.real_stage_map_artist[4] = "BLKFLAGZ, WAKGOOD RECORDS (아버 편곡)";
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
global.real_stage_map_color[7] = c_black
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
global.real_stage_map_name[13] = "금목서 Kinmokusei (Cover by 비챤 VIichan)";
global.real_stage_map_artist[13] = "Original by Kujira";
global.real_stage_map_difficulty[13] = "Hard";
global.real_stage_map_color[13] = #f2aca0;
global.real_stage_map_duration[13] = 6474;
global.real_stage_map_audio_name[13] = "kinmoku";
global.real_stage_bpm[13] = 123;
global.real_stage_map_highlight_part[13] = 58.4;
global.real_detailed_difficulty[13] = 3;
global.real_obtainable_type[13] = 99;
global.real_requirement_level[13] = 9999;


//아이패드
global.real_stage_map_name[14] = "아이패드";
global.real_stage_map_artist[14] = "뾰복";
global.real_stage_map_difficulty[14] = "Hard";
global.real_stage_map_color[14] = #5595ff
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
global.real_stage_map_difficulty[16] = "Experts (Boss)";
global.real_stage_map_color[16] = #52bcfe;
global.real_stage_map_duration[16] = 7380;
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


//Promise
global.real_stage_map_name[17] = "Promise (Cover by 릴파 Lilpa)";
global.real_stage_map_artist[17] = "Mixing by 공띵 / Original by GrooPark";
global.real_stage_map_difficulty[17] = "Hard";
global.real_stage_map_color[17] = #344a87;
global.real_stage_map_duration[17] = 5453;
global.real_stage_map_audio_name[17] = "promise";
global.real_stage_bpm[17] = 165;
global.real_stage_map_highlight_part[17] = 39.5;
global.real_detailed_difficulty[17] = 3;
global.real_obtainable_type[17] = 4;
global.real_requirement_level[17] = 6;
global.promise_effect = 0


//궁시렁 리믹스
global.real_stage_map_name[18] = "궁시렁 리믹스";
global.real_stage_map_artist[18] = "레이지스피크";
global.real_stage_map_difficulty[18] = "Normal";
global.real_stage_map_color[18] = #fbd780;
global.real_stage_map_duration[18] = 3343;
global.real_stage_map_audio_name[18] = "gungsirung";
global.real_stage_bpm[18] = 173;
global.real_stage_map_highlight_part[18] = 6;
global.real_detailed_difficulty[18] = 2;
global.real_obtainable_type[18] = 15;
global.real_requirement_level[18] = 6;




//Re:wind
global.real_stage_map_name[19] = "RE:WIND";
global.real_stage_map_artist[19] = "Arranged by 아버 / Remix by Hyeok, Elestee";
global.real_stage_map_difficulty[19] = "Expert";
global.real_stage_map_color[19] = #d892a6;
global.real_stage_map_duration[19] = 7495;
global.real_stage_map_audio_name[19] = "rewind";
global.real_stage_bpm[19] = 75;
global.real_stage_map_highlight_part[19] = 12.70;
global.real_detailed_difficulty[19] = 3.5;
global.real_obtainable_type[19] = 8;
global.real_requirement_level[19] = 4;


//겨울봄
global.real_stage_map_name[20] = "겨울봄 (Winter Spring)";
global.real_stage_map_artist[20] = "Remix by BAKAINU";
global.real_stage_map_difficulty[20] = "Normal (Hardcore)";
global.real_stage_map_color[20] = #a594e4;
global.real_stage_map_duration[20] = 3489.6;
global.real_stage_map_audio_name[20] = "winter_spring";
global.real_stage_bpm[20] = 85;
global.real_stage_map_highlight_part[20] = 33.95;
global.real_detailed_difficulty[20] = 2;
global.real_obtainable_type[20] = 8;
global.real_requirement_level[20] = 5;


//락다운
global.real_stage_map_name[21] = "Lockdown (락다운)";
global.real_stage_map_artist[21] = "Remix by Mitsutoki";
global.real_stage_map_difficulty[21] = "Experts (Boss)";
global.real_stage_map_color[21] = c_black;
global.real_stage_map_duration[21] = 4530;
global.real_stage_map_audio_name[21] = "lockdown";
global.real_stage_bpm[21] = 132.4;
global.real_stage_map_highlight_part[21] = 28.1;
global.real_detailed_difficulty[21] = 6.5;
global.real_obtainable_type[21] = 8;
global.real_requirement_level[21] = 12;
global.lockdown_effect1 = 0
global.lockdown_effect2 = 0
global.lockdown_effect3 = 0
global.lockdown_effect4 = 0
global.lockdown_effect5 = 0
global.lockdown_effect6 = 0
lockdown_pattern_dir = [ 0,1.1,-1,-1.5,1,-0.7,1.6,-1.1,-0.4,1.5 ];
lockdown_pattern_shoot = [ 1,1,0,0 ];
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
global.real_stage_map_name[22] = "이세돌향 100% 첨가";
global.real_stage_map_artist[22] = "제이타지";
global.real_stage_map_difficulty[22] = "Hard (Hardcore)";
global.real_stage_map_color[22] = $FF7D5EEE;
global.real_stage_map_duration[22] = 4432;
global.real_stage_map_audio_name[22] = "isedolhyang";
global.real_stage_bpm[22] = 85;
global.real_stage_map_highlight_part[22] = 28.71;
global.real_detailed_difficulty[22] = 3;
global.real_obtainable_type[22] = 8;
global.real_requirement_level[22] = 7;

global.hardcore_only_num = 0;
global.both_difficulty_num = 0;
for(var i = 0; i < global.total_map; i++)
{
	var tmp_type = global.real_obtainable_type[i];
	if (tmp_type == 8 || tmp_type == 17)
	{
		tmp_type = 5
	}
	else if (tmp_type > 7)
	{
		tmp_type -= 9;
	}
	
	if (tmp_type <= 17)
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

	
global.unlocked_player_skin_name[0] = "우왁굳"
global.unlocked_player_skin_require_type[0] = 0;
global.unlocked_player_skin_require_num[0] = global.max_artifact_owned[0];
global.unlocked_player_skin_name[1] = "민수"
global.unlocked_player_skin_require_type[1] = 0;
global.unlocked_player_skin_require_num[1] = global.max_artifact_owned[0]+3;
global.unlocked_player_skin_name[2] = "메시두"
global.unlocked_player_skin_require_type[2] = 0;
global.unlocked_player_skin_require_num[2] = "아무 곡이나 대쉬를 사용하지 않고 S랭크 이상으로 클리어";
global.unlocked_player_skin_name[3] = "우왁굳 (왁굳향100%)"
global.unlocked_player_skin_require_type[3] = 0;
global.unlocked_player_skin_require_num[3] = global.max_artifact_owned[0];
global.unlocked_player_skin_name[4] = "아이네"
global.unlocked_player_skin_require_type[4] = 1;
global.unlocked_player_skin_require_num[4] = global.max_artifact_owned[1];
global.unlocked_player_skin_name[5] = "아이네 (엔젤)"
global.unlocked_player_skin_require_type[5] = 1;
global.unlocked_player_skin_require_num[5] = global.max_artifact_owned[1];
global.unlocked_player_skin_name[6] = "아이네 (산타)"
global.unlocked_player_skin_require_type[6] = 1;
global.unlocked_player_skin_require_num[6] = global.max_artifact_owned[1];
global.unlocked_player_skin_name[7] = "아이네 (후드)"
global.unlocked_player_skin_require_type[7] = 1;
global.unlocked_player_skin_require_num[7] = global.max_artifact_owned[1]+2;
global.unlocked_player_skin_name[8] = "비챤"
global.unlocked_player_skin_require_type[8] = 2;
global.unlocked_player_skin_require_num[8] = global.max_artifact_owned[2];
global.unlocked_player_skin_name[9] = "비챤 (메이드)"
global.unlocked_player_skin_require_type[9] = 2;
global.unlocked_player_skin_require_num[9] = global.max_artifact_owned[2];
global.unlocked_player_skin_name[10] = "비챤 (산타)"
global.unlocked_player_skin_require_type[10] = 2;
global.unlocked_player_skin_require_num[10] = global.max_artifact_owned[2];
global.unlocked_player_skin_name[11] = "비챤 (기타)"
global.unlocked_player_skin_require_type[11] = 2;
global.unlocked_player_skin_require_num[11] = global.max_artifact_owned[2]+2;
global.unlocked_player_skin_name[12] = "고세구 (여름)"
global.unlocked_player_skin_require_type[12] = 3;
global.unlocked_player_skin_require_num[12] = global.max_artifact_owned[3];
global.unlocked_player_skin_name[13] = "고세구"
global.unlocked_player_skin_require_type[13] = 3;
global.unlocked_player_skin_require_num[13] = global.max_artifact_owned[3];
global.unlocked_player_skin_name[14] = "고세구 (산타)"
global.unlocked_player_skin_require_type[14] = 3;
global.unlocked_player_skin_require_num[14] = global.max_artifact_owned[3];
global.unlocked_player_skin_name[15] = "고세구 (메이드)"
global.unlocked_player_skin_require_type[15] = 3;
global.unlocked_player_skin_require_num[15] = global.max_artifact_owned[3]+3;
global.unlocked_player_skin_name[16] = "릴파 (수녀)"
global.unlocked_player_skin_require_type[16] = 4;
global.unlocked_player_skin_require_num[16] = global.max_artifact_owned[4];
global.unlocked_player_skin_name[17] = "릴파 (여름)"
global.unlocked_player_skin_require_type[17] = 4;
global.unlocked_player_skin_require_num[17] = global.max_artifact_owned[4];
global.unlocked_player_skin_name[18] = "릴파 (산타)"
global.unlocked_player_skin_require_type[18] = 4;
global.unlocked_player_skin_require_num[18] = global.max_artifact_owned[4];
global.unlocked_player_skin_name[19] = "릴파 (전투메이드)"
global.unlocked_player_skin_require_type[19] = 4;
global.unlocked_player_skin_require_num[19] = global.max_artifact_owned[4]+1;
global.unlocked_player_skin_name[20] = "주르르"
global.unlocked_player_skin_require_type[20] = 5;
global.unlocked_player_skin_require_num[20] = global.max_artifact_owned[5];
global.unlocked_player_skin_name[21] = "주르르 (셔츠)"
global.unlocked_player_skin_require_type[21] = 5;
global.unlocked_player_skin_require_num[21] = global.max_artifact_owned[5];
global.unlocked_player_skin_name[22] = "주르르 (산타)"
global.unlocked_player_skin_require_type[22] = 5;
global.unlocked_player_skin_require_num[22] = global.max_artifact_owned[5];
global.unlocked_player_skin_name[23] = "주르르 (후드)"
global.unlocked_player_skin_require_type[23] = 5;
global.unlocked_player_skin_require_num[23] = global.max_artifact_owned[5]+1;
global.unlocked_player_skin_name[24] = "징버거 (여름)"
global.unlocked_player_skin_require_type[24]  = 6;
global.unlocked_player_skin_require_num[24] = global.max_artifact_owned[6];
global.unlocked_player_skin_name[25] = "징버거"
global.unlocked_player_skin_require_type[25] = 6;
global.unlocked_player_skin_require_num[25] = global.max_artifact_owned[6];
global.unlocked_player_skin_name[26] = "징버거 (산타)"
global.unlocked_player_skin_require_type[26] = 6;
global.unlocked_player_skin_require_num[26] = global.max_artifact_owned[6];
global.unlocked_player_skin_name[27] = "징버거 (파티타임)"
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
global.n_playing_tutorial = 0
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






