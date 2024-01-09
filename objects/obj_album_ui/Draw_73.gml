/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var xx_w = camera_get_view_width(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])

var middle_xx = xx+xx_w*0.5;
var middle_yy = yy+yy_h*0.5;

if (global.show_title_menu == 0)
{
	var color_table = [ $FF4AB539,#8a2be2,#77716a,#5c89ce,#443965,#ff008c,#f0a957 ];
	var ui_alpha__cal = global.ui_alpha
	if ui_alpha__cal > 1
	{
		ui_alpha__cal = 1
	}
	///////////////////////////////////////////////////////////////////////////////////
	if sprite_exists(sprite_index)
	{
		var __brighting_col = global.map_color
		draw_sprite_ext(spr_album,1,x-32,y+32,image_xscale*global.font_ratio_resolution_xx*1.05,image_yscale*1.05,image_angle,c_black,0.3*image_alpha)
	
		var xscale = image_xscale*image_scale
		var yscale = image_yscale*image_scale
		//draw_self랑 같은 코드
		draw_sprite_ext(sprite_index,image_index,x,y,xscale*global.font_ratio_resolution_xx,yscale,image_angle,image_blend,image_alpha)
		if (global.obtainable_type[code.n_stage] != 99)
		{
			var tmp_ind1 = (global.obtainable_type[code.n_stage] >= 9) ? 21 : 20;
			var tmp_ind2 = global.obtainable_type[code.n_stage];
			var tmp_ind3 = (global.obtainable_type[code.n_stage] >= 9) ? 19 : 18;
			if (global.play_custom_map == 1)
			{
				tmp_ind1 = 20;
				tmp_ind2 = 22;
				tmp_ind3 = 18;
			}
		
			draw_sprite_ext(spr_W52,tmp_ind1,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,image_angle,global.map_color,image_alpha)
			draw_sprite_ext(spr_W52,tmp_ind2,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(spr_W52,tmp_ind3,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,image_angle,image_blend,image_alpha)
		}

		if instance_exists(code) && global.level < global.requirement_level[code.n_stage]
		{
			__brighting_col = #68646f
			draw_sprite_ext(spr_album,1,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,image_angle,__brighting_col,0.5*image_alpha)
			draw_sprite_ext(spr_lock,0,x,y,image_xscale*0.7*global.font_ratio_resolution_xx,image_yscale*0.7,image_angle,c_white,image_alpha)
		}
	



		var _walpha__ = (w_alpha*2 > 1) ? 1 : w_alpha*2
		draw_sprite_ext(spr_album_outline,0,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,image_angle,merge_color_new(global.map_color,c_white,_walpha__),ui_alpha__cal)

	
		draw_sprite_ext(spr_album,1,x,y,image_xscale*global.font_ratio_resolution_xx,image_yscale,image_angle,c_white,w_alpha_bg)
	
		if heart_alpha > 0
		{
			var scale = (10-heart_alpha)/13
			if (scale < 0)
			{
				scale = 0
			}
			draw_sprite_ext(spr_heart,0,x,y,image_xscale*global.font_ratio_resolution_xx*scale,image_yscale*scale,image_angle,c_white,heart_alpha)
		}
	}



	//스탯창 그림자
	var ______yy = global.c_y-(1 - ui_alpha__cal)*1880-abs(global.map_scroll_ui_position)*256
	//for(var i = 0; i <= 16; i += 0.5)
	//{
	//draw_sprite_ext(spr_status,0,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y+i,global.font_ratio_resolution_xx,1.15,0,#d9d1dc,0.02*ui_alpha__cal)
	//draw_sprite_ext(spr_square,0,global.c_x+1480-(1 - ui_alpha__cal)*1880,global.c_y+80+i,0.5*global.font_ratio_resolution_xx,0.5,45,#d9d1dc,0.02*ui_alpha__cal)
	//draw_sprite_ext(spr_list_name,0,global.c_w-640*1.4,______yy,global.font_ratio_resolution_xx,1,0,#d9d1dc,0.02*ui_alpha__cal)
	//}
	draw_sprite_ext(spr_status,0,global.c_x-(1 - ui_alpha__cal)*1880+128*1.15*global.font_ratio_resolution_xx,global.c_y+16,global.font_ratio_resolution_xx,1.15,0,c_black,0.3*ui_alpha__cal)
	draw_sprite_ext(spr_square,0,global.c_x+1480-(1 - ui_alpha__cal)*1880,global.c_y+80+16,0.5*global.font_ratio_resolution_xx,0.5,45,c_black,0.3*ui_alpha__cal)


	var gradient_color = merge_color_new(c_white,c_black,0.1)
	//스텟 창
	draw_sprite_ext(spr_status,0,global.c_x-(1 - ui_alpha__cal)*1880+128*1.15*global.font_ratio_resolution_xx,global.c_y,global.font_ratio_resolution_xx,1.15,0,c_white,ui_alpha__cal)
	draw_sprite_ext(spr_square,0,global.c_x+1700-(1 - ui_alpha__cal)*1880,global.c_y+80,0.5*global.font_ratio_resolution_xx,0.5,45,c_white,ui_alpha__cal)


	//플레이어 캐릭터 아이콘
	draw_sprite_ext(spr_player_icon,1,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y,global.font_ratio_resolution_xx*1.15*0.5,global.font_ratio_resolution_xx*1.15*0.5,0,c_white,ui_alpha__cal)
	draw_sprite_ext(spr_player_icon,(global.n_player_skin >= 0) ? 2+global.n_player_skin : 2,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y,global.font_ratio_resolution_xx*1.15*0.5,global.font_ratio_resolution_xx*1.15*0.5,0,c_white,ui_alpha__cal)
	draw_sprite_ext(spr_player_icon,0,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y,global.font_ratio_resolution_xx*1.15*0.5,global.font_ratio_resolution_xx*1.15*0.5,0,c_white,ui_alpha__cal)


	//레벨 바
	var tmp_exp_color = (global.exp/global.max_exp > 1) ? 1 : global.exp/global.max_exp;
	draw_sprite_ext(spr_level_bar,0,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y+global.font_ratio_resolution_xx*148,0.7*global.font_ratio_resolution_xx,0.7,0,#171628,ui_alpha__cal)
	draw_sprite_part_ext(spr_level_bar,0,0,0,(global.exp_for_draw/global.max_exp)*1760,64,global.c_x-(1 - ui_alpha__cal)*1880,global.c_y+global.font_ratio_resolution_xx*148,0.7*global.font_ratio_resolution_xx,0.7,merge_color_new(merge_color_new(c_white,global.player_color,0.5+(tmp_exp_color)*0.5),c_white,global.exp_w_alpha),ui_alpha__cal)
	var tmp_txt = (global.level < 999) ? global.level : "MAX"


	draw_text_kl_scale(global.c_x-(1 - ui_alpha__cal)*1880+16,global.c_y+global.font_ratio_resolution_xx*135,string(global.nametag_script_return0)+string(global.nametag_script_return3)+" - Lv."+string(tmp_txt),64,-1,ui_alpha__cal,global.nametag_script_return2,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)


	//환경설정 버튼
	draw_text_k_scale(global.c_x+104,global.c_y+450,"환경설정"+((global.mobile_mode == 1) ? "" : "\n[ESC]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.47*global.font_ratio_resolution_xx,0.47,0)
	draw_sprite_ext(spr_gear,0,global.c_x+100,global.c_y+400+16,0.17*global.font_ratio_resolution_xx*0.85,0.17*0.85,0,c_black,0.3*ui_alpha__cal)
	draw_sprite_ext(spr_gear,0,global.c_x+100,global.c_y+400,0.17*global.font_ratio_resolution_xx*0.85,0.17*0.85,0,c_white,ui_alpha__cal)


	//캐릭터 변경 버튼
	draw_text_k_scale(global.c_x+104,global.c_y+700,"파트너"+((global.mobile_mode == 1) ? "" : "\n[W]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.47*global.font_ratio_resolution_xx,0.47,0)
	draw_sprite_ext(spr_W,global.player_skin,global.c_x+100,global.c_y+660+16,0.17*global.font_ratio_resolution_xx*0.85,0.17*0.85,0,c_black,0.3*ui_alpha__cal)
	draw_sprite_ext(spr_W,global.player_skin,global.c_x+100,global.c_y+660,0.17*global.font_ratio_resolution_xx*0.85,0.17*0.85,0,c_white,ui_alpha__cal)



	draw_text_k_scale(global.c_x+104,global.c_y+950,"유저 랭킹"+((global.mobile_mode == 1) ? "" : "\n[Q]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.47*global.font_ratio_resolution_xx,0.47,0)
	draw_sprite_ext(spr_star,global.player_skin,global.c_x+100,global.c_y+910+16,0.17*global.font_ratio_resolution_xx*0.85,0.17*0.85,0,c_black,0.3*ui_alpha__cal)
	draw_sprite_ext(spr_star,global.player_skin,global.c_x+100,global.c_y+910,0.17*global.font_ratio_resolution_xx*0.85,0.17*0.85,0,c_white,ui_alpha__cal)
	


	//리더보드 랭크 순위 버튼
	if (global.n_map_list != 2)
	{
		//if (global.n_map_id >= 0 && global.real_stage_map_difficulty[global.n_map_id] != "Tutorial")
		//{
		//	draw_text_k_scale(global.c_x+104,global.c_y+1210,"스테이지 랭킹"+((global.mobile_mode == 1) ? "" : "\n[Tab]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
		//	draw_sprite_ext(spr_music,global.player_skin,global.c_x+100,global.c_y+1170+16,0.17*global.font_ratio_resolution_xx,0.2,-15,c_black,0.3*ui_alpha__cal)
		//	draw_sprite_ext(spr_music,global.player_skin,global.c_x+100,global.c_y+1170,0.17*global.font_ratio_resolution_xx,0.2,-15,c_white,ui_alpha__cal)
		//}
		
		//멀티플레이 버튼
		draw_sprite_ext(spr_gamepad,0,global.c_x+104,global.c_y+1180+16,global.font_ratio_resolution_xx*0.3,0.3,0,c_black,0.3*ui_alpha__cal)
		draw_sprite_ext(spr_gamepad,0,global.c_x+104,global.c_y+1180,global.font_ratio_resolution_xx*0.3,0.3,0,c_white,ui_alpha__cal)
		draw_text_k_scale(global.c_x+104,global.c_y+1220,"온라인\n모드"+((global.mobile_mode == 1) ? "" : "\n[M]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.47*global.font_ratio_resolution_xx,0.47,0)
	
		if (global.total_map > 0)
		{
			draw_text_k_scale(global.c_x+104,global.c_y+1470,"좋아요"+((global.mobile_mode == 1) ? "" : "\n[Shift]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.47*global.font_ratio_resolution_xx,0.47,0)
			draw_sprite_ext(spr_heart,global.player_skin,global.c_x+100,global.c_y+1430+16,0.17*global.font_ratio_resolution_xx*0.85,0.17*0.85,0,c_black,0.3*ui_alpha__cal)
			draw_sprite_ext(spr_heart,global.player_skin,global.c_x+100,global.c_y+1430,0.17*global.font_ratio_resolution_xx*0.85,0.17*0.85,0,c_white,ui_alpha__cal)
		}
	}
	else
	{
		//버튼
		draw_sprite_ext(spr_gear,0,global.c_x+85,global.c_y+1180+16,0.17*global.font_ratio_resolution_xx*0.85,0.17*0.85,0,c_black,0.3*ui_alpha__cal)
		draw_sprite_ext(spr_gear,0,global.c_x+130,global.c_y+1200+16,0.1*global.font_ratio_resolution_xx*0.85,0.1*0.85,0,c_black,0.3*ui_alpha__cal)
		draw_sprite_ext(spr_gear,0,global.c_x+85,global.c_y+1180,0.17*global.font_ratio_resolution_xx*0.85,0.17*0.85,0,c_white,ui_alpha__cal)
		draw_sprite_ext(spr_gear,0,global.c_x+130,global.c_y+1200,0.1*global.font_ratio_resolution_xx*0.85,0.1*0.85,0,c_white,ui_alpha__cal)
		draw_text_k_scale(global.c_x+104,global.c_y+1220,"커스텀 맵\n편집"+((global.mobile_mode == 1) ? "" : "\n[M]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.47*global.font_ratio_resolution_xx,0.47,0)
	
		draw_sprite_ext(spr_add,0,global.c_x+312,global.c_y+1180+16,global.font_ratio_resolution_xx*0.85,0.85,0,c_black,0.3*ui_alpha__cal)
		draw_sprite_ext(spr_add,0,global.c_x+312,global.c_y+1180,global.font_ratio_resolution_xx*0.85,0.85,0,c_white,ui_alpha__cal)
		draw_text_k_scale(global.c_x+312,global.c_y+1220,"새로운\n커스텀 맵\n생성"+((global.mobile_mode == 1) ? "" : "\n[N]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.47*global.font_ratio_resolution_xx,0.47,0)
	
		draw_sprite_ext(spr_trash,0,global.c_x+104,global.c_y+1470+16,global.font_ratio_resolution_xx*0.85,0.85,0,c_black,0.3*ui_alpha__cal)
		draw_sprite_ext(spr_trash,0,global.c_x+104,global.c_y+1470,global.font_ratio_resolution_xx*0.85,0.85,0,c_white,ui_alpha__cal)
		draw_text_k_scale(global.c_x+104,global.c_y+1510,"커스텀 맵\n삭제"+((global.mobile_mode == 1) ? "" : "\n[Alt + Del]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.47*global.font_ratio_resolution_xx,0.47,0)
	}


	//리스트 이름 표기창
	var __mobile__movement = global.reload_n_map_list_value_animation
	__mobile__movement = (__mobile__movement > 1) ? 1 : __mobile__movement;
	__mobile__movement = (__mobile__movement < -1) ? -1 : __mobile__movement;
	var __xx = global.c_w-640*1.4-__mobile__movement*128
	var key_Lpressed = keyboard_check(vk_left)
	var key_Rpressed = keyboard_check(vk_right)
	//draw_sprite_ext(spr_list_name,0,__xx,______yy,1,1,0,c_white,ui_alpha__cal)
	draw_sprite_general(spr_list_name,0,0,0,sprite_get_width(spr_list_name),sprite_get_height(spr_list_name),__xx-sprite_get_width(spr_list_name)*0.5*0.85,______yy,0.85,0.85,0,gradient_color,gradient_color,c_white,c_white,ui_alpha__cal)


	//곡(테마) 선택 버튼 ui
	var cal__xx1 = (global.map_list_ui_position < 0) ? global.map_list_ui_position*64 : 0
	var cal__xx2 = (global.map_list_ui_position > 0) ? global.map_list_ui_position*64 : 0
	draw_sprite_ext(spr_square_half,key_Lpressed,__xx-440+cal__xx1,______yy+80,0.2*global.font_ratio_resolution_xx,0.2,45,c_black,ui_alpha__cal*0.3)
	draw_sprite_ext(spr_square_half,key_Lpressed,__xx-440+cal__xx1,______yy+64,0.2*global.font_ratio_resolution_xx,0.2,45,c_white,ui_alpha__cal)

	draw_sprite_ext(spr_square_half,key_Rpressed,__xx+440+cal__xx2,______yy+80,0.2*global.font_ratio_resolution_xx,0.2,225,c_black,ui_alpha__cal*0.3)
	draw_sprite_ext(spr_square_half,key_Rpressed,__xx+440+cal__xx2,______yy+64,0.2*global.font_ratio_resolution_xx,0.2,225,c_white,ui_alpha__cal)


	var _____yy1 = global.c_y+global.c_h*0.5-(1 - ui_alpha__cal)*1880
	var _____yy2 = global.c_y+global.c_h*0.5+(1 - ui_alpha__cal)*1880
	var cal____yy1 = (global.map_scroll_ui_position < 0) ? global.map_scroll_ui_position*64 : 0
	var cal____yy2 = (global.map_scroll_ui_position > 0) ? global.map_scroll_ui_position*64 : 0
	draw_sprite_ext(spr_triangle,0,__xx,_____yy1+16-1024+(cal____yy1),0.1*global.font_ratio_resolution_xx*0.85,0.1*0.85,0,c_black,ui_alpha__cal*0.3)
	draw_sprite_ext(spr_triangle,0,__xx,_____yy1-1024+(cal____yy1),0.1*global.font_ratio_resolution_xx*0.85,0.1*0.85,0,c_white,ui_alpha__cal)

	draw_sprite_ext(spr_triangle,0,__xx,_____yy2+16+640+(cal____yy2),0.1*global.font_ratio_resolution_xx*0.85,-0.1*0.85,0,c_black,ui_alpha__cal*0.3)
	draw_sprite_ext(spr_triangle,0,__xx,_____yy2+640+(cal____yy2),0.1*global.font_ratio_resolution_xx*0.85,-0.1*0.85,0,c_white,ui_alpha__cal)





	if (global.n_map_list == 0)
	{
		draw_sprite_ext(spr_music,0,__xx-75,______yy+52,0.2*0.85,0.2*0.85,-15,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
		draw_text_k_scale(__xx+25,______yy+24,"모든 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.52*global.font_ratio_resolution_xx,0.52,0)
	}
	else if (global.n_map_list == 1)
	{
		draw_sprite_ext(spr_heart,0,__xx-108,______yy+58,0.1*0.85,0.1*0.85,0,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
		draw_text_k_scale(__xx+25,______yy+24,"좋아요 한 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.52*global.font_ratio_resolution_xx,0.52,0)
	}
	else if (global.n_map_list == 2)
	{
		draw_sprite_ext(spr_triangle_empty_bold,0,__xx-180,______yy+58,0.12*0.85,0.12*0.85,15,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
		draw_text_k_scale(__xx+25,______yy+24,"유저 제작 커스텀 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.52*global.font_ratio_resolution_xx,0.52,0)
	}
	else if (global.n_map_list == 3)
	{
		draw_sprite_ext(spr_lock,1,__xx-108,______yy+60,0.1*0.85,0.1*0.85,0,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
		draw_text_k_scale(__xx+25,______yy+24,"해금 된 곡",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.52*global.font_ratio_resolution_xx,0.52,0)
	}
	else if (global.n_map_list == 4)
	{
		draw_sprite_ext(spr_W,0,__xx-170,______yy+60,0.12,0.12,0,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
		draw_text_k_scale(__xx+25,______yy+24,"[곡 필터링] 우왁굳",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.52*global.font_ratio_resolution_xx,0.52,0)
	}
	else if (global.n_map_list == 5)
	{
		draw_sprite_ext(spr_W,8,__xx-210,______yy+60,0.15,0.15,0,#171628,ui_alpha__cal*(1-abs(__mobile__movement)))
		draw_text_k_scale(__xx+25,______yy+24,"[곡 필터링] 이세계아이돌",64,-1,ui_alpha__cal*(1-abs(__mobile__movement)),#171628,0,0,normal_font,0.52*global.font_ratio_resolution_xx,0.52,0)
	}


	draw_text_k_scale(global.c_x+27+128*1.15*global.font_ratio_resolution_xx-(1 - ui_alpha__cal)*1880,global.c_y,"Artifacts",64,-1,ui_alpha__cal,#171628,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
	for(var i = 0; i <= 8; i++)
	{
		draw_sprite_ext(spr_W,(i != 8) ? i : 9,global.c_x+128*1.15*global.font_ratio_resolution_xx+64+150*i-(1 - ui_alpha__cal)*1880,global.c_y+95,0.15*global.font_ratio_resolution_xx,0.15,20,#5a5257,ui_alpha__cal)
		draw_text_k_scale(global.c_x+128*1.15*global.font_ratio_resolution_xx+96+150*i-(1 - ui_alpha__cal)*1880,global.c_y+90,"x"+string(global.artifact_owned[i]),64,-1,ui_alpha__cal,#5a5257,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
	}






	var dis__ = (1.1 - abs(y - (middle_yy))/256)
	if dis__ < 0
	{
		dis__ = 0
	}


	draw_sprite_ext(spr_square,0,x,middle_yy+512+global.mobile_mode*64,dis__*0.5,dis__*0.5,45,c_white,image_alpha)
	var fontsize1 = 0.55*(1+global.mobile_mode*0.3)
	var fontsize2 = 0.65*(1+global.mobile_mode*0.3)
	var fontsize3 = 0.52*(1+global.mobile_mode*0.3)
  
	if global.n_map_id >= 0 && global.n_map_id < array_length(global.n_score) && instance_exists(code) && code.gamestart != 1 && code.gamestart != 2 && code.gamestart != 2 && code.gamestart != 3
	{
		if (global.play_custom_map != 1)
		{
			draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+590+global.mobile_mode*64+8,"Normal\nRank",64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
			draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96+8,string(convert_score_to_rank(global.n_score[global.n_map_id],0)),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
			if (global.n_score[global.n_map_id] != "--")
			{
				draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+750+global.mobile_mode*96+8,string(global.n_score[global.n_map_id]),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx*0.8,fontsize2*0.8,0)
			}

			draw_text_k_scale(x-global.mobile_mode*64,middle_yy+590+global.mobile_mode*64+8,"Hardcore\nRank",64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
			draw_text_k_scale(x-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96+8,string(convert_score_to_rank(global.n_score_hardcore[global.n_map_id],0)),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
			if (global.n_score_hardcore[global.n_map_id] != "--")
			{
				draw_text_k_scale(x-global.mobile_mode*64,middle_yy+750+global.mobile_mode*96+8,string(global.n_score_hardcore[global.n_map_id]),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx*0.8,fontsize2*0.8,0)
			}
	
	

			draw_text_k_scale(x+260+global.mobile_mode*64,middle_yy+620+global.mobile_mode*64+8,"아티팩트 수집",64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
			draw_text_k_scale(x+260+global.mobile_mode*64,middle_yy+680+global.mobile_mode*96+8,string(global.n_artifact[global.n_map_id]),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)



			draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+590+global.mobile_mode*64,"Normal\nRank",64,-1,dis__,c_white,0,0,normal_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
			draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96,string(convert_score_to_rank(global.n_score[global.n_map_id],0)),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
			if (global.n_score[global.n_map_id] != "--")
			{
				draw_text_k_scale(x-260-global.mobile_mode*64,middle_yy+750+global.mobile_mode*96,string(global.n_score[global.n_map_id]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx*0.8,fontsize2*0.8,0)
			}

			draw_text_k_scale(x-global.mobile_mode*64,middle_yy+590+global.mobile_mode*64,"Hardcore\nRank",64,-1,dis__,c_white,0,0,normal_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
			draw_text_k_scale(x-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96,string(convert_score_to_rank(global.n_score_hardcore[global.n_map_id],0)),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
			if (global.n_score_hardcore[global.n_map_id] != "--")
			{
				draw_text_k_scale(x-global.mobile_mode*64,middle_yy+750+global.mobile_mode*96,string(global.n_score_hardcore[global.n_map_id]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx*0.8,fontsize2*0.8,0)
			}

			draw_text_k_scale(x+260+global.mobile_mode*64,middle_yy+620+global.mobile_mode*64,"아티팩트 수집",64,-1,dis__,c_white,0,0,normal_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
			draw_text_k_scale(x+260+global.mobile_mode*64,middle_yy+680+global.mobile_mode*96,string(global.n_artifact[global.n_map_id]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		}
		else
		{
			draw_text_k_scale(x-global.mobile_mode*64,middle_yy+590+global.mobile_mode*64+8,"Custom Map\nRank",64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
			draw_text_k_scale(x-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96+8,string(convert_score_to_rank(global.custom_n_score[global.n_map_id],0)),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
			if (global.custom_n_score[global.n_map_id] != "--")
			{
				draw_text_k_scale(x-global.mobile_mode*64,middle_yy+750+global.mobile_mode*96+8,string(global.custom_n_score[global.n_map_id]),64,-1,0.3*dis__,c_black,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx*0.8,fontsize2*0.8,0)
			}
		
			draw_text_k_scale(x-global.mobile_mode*64,middle_yy+590+global.mobile_mode*64,"Custom Map\nRank",64,-1,dis__,c_white,0,0,normal_font,fontsize1*global.font_ratio_resolution_xx,fontsize1,0)
			draw_text_k_scale(x-global.mobile_mode*64,middle_yy+680+global.mobile_mode*96,string(convert_score_to_rank(global.custom_n_score[global.n_map_id],0)),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
			if (global.custom_n_score[global.n_map_id] != "--")
			{
				draw_text_k_scale(x-global.mobile_mode*64,middle_yy+750+global.mobile_mode*96,string(global.custom_n_score[global.n_map_id]),64,-1,dis__,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx*0.8,fontsize2*0.8,0)
			}
		}
	}

	if global.sync_setting_alpha >= 0.01
	{
		draw_set_alpha(global.sync_setting_alpha*0.93)
		draw_set_color(c_black)
		draw_line_width(global.c_x,global.c_y,global.c_w,global.c_h,room_width)

		for(var i = -1; i <= 1; i++)
		{
			var scale = (i != 1) ? global.sync_setting_circle_scale[i+1]*0.15 : global.sync_setting_circle_scale[i+1]*0.3
			var sprite__ = (i != 1) ? spr_circle : spr_circle_outline;
			draw_sprite_ext(sprite__,0,middle_xx+i*256,middle_yy,scale,scale,0,merge_color_new(c_white,global.player_color,global.setting_beat_w_alpha[i+1]),global.sync_setting_alpha)
	
			global.sync_setting_circle_scale[i+1] += (1 - global.sync_setting_circle_scale[i+1])*0.1
			global.setting_beat_w_alpha[i+1] += (0 - global.setting_beat_w_alpha[i+1])*0.1
		}

		if (global.mobile_mode == 0)
		{
			draw_text_k_scale(xx+64,yy+yy_h*0.55-8,"플래시 효과 줄이기  ["+string((global.flash_effect_setting == 1) ? "설정됨" : "해제됨")+"]",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
			draw_text_k_scale(xx+64,yy+yy_h*0.585-8,"화면의 번쩍거림이 거슬린다면 사용해보세요",64,-1,global.sync_setting_alpha,c_white,0,-1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
			
			draw_text_k_scale(xx+64,yy+yy_h*0.7-8,"화면 리로드",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
			draw_text_k_scale(xx+64,yy+yy_h*0.735-8,"화면(프레임)이 끊긴다면 사용해보세요",64,-1,global.sync_setting_alpha,c_white,0,-1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)

			var fullscreen_now = (window_get_fullscreen()) ? " (fullscreen)" : "";
			draw_text_k_scale(xx+64,yy+yy_h*0.85-8,"해상도  ["+string(window_get_width())+"x"+string(window_get_height())+"]"+string(fullscreen_now),64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
			draw_text_k_scale(xx+64,yy+yy_h*0.885-8,"화면 리로드시에도, 화면이 끊긴다면 해상도를 낮춰보세요",64,-1,global.sync_setting_alpha,c_white,0,-1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)


			draw_text_k_scale(xx+170,yy+yy_h*0.03,"게임 종료",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		}
		else
		{
			draw_text_k_scale(xx+170,yy+yy_h*0.03,"창 닫기",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
			draw_text_k_scale(xx+64,yy+yy_h*0.85-8,"게임 종료",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		}

		draw_text_k_scale(middle_xx,yy+yy_h*(0.1-global.mobile_mode*0.03),"마스터 볼륨",64,-1,global.sync_setting_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		draw_text_k_scale(middle_xx,yy+yy_h*(0.2-global.mobile_mode*0.03),"효과음 볼륨",64,-1,global.sync_setting_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		draw_text_k_scale(middle_xx,yy+yy_h*(0.3-global.mobile_mode*0.03),"음악 볼륨",64,-1,global.sync_setting_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

		draw_text_k_scale(xx+xx_w-64,yy+yy_h*(0.85-global.mobile_mode*0.03),"사용자 지정 오프셋",64,-1,global.sync_setting_alpha,c_white,0,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		draw_text_k_scale(xx+xx_w-64,yy+yy_h*0.885,"음악 싱크가 맞지 않는다면 사용해보세요",64,-1,global.sync_setting_alpha,c_white,0,1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
	}






	//게임 플레이 전 난이도 설정
	if (global.select_difficulty > 0 && global.title_menu_animation1 == -1)
	{
		draw_set_alpha(global.select_difficulty*0.93)
		draw_set_color(c_black)
		draw_line_width(global.c_x,global.c_y,global.c_w,global.c_h,room_width)


		var scale = 1.2//*(image_xscale - (0.3+global.mobile_mode*0.5))
		var n_difficulty = global.selected_difficulty
		var dis_temp1 = check_distance(abs(n_difficulty),1);
		var dis_temp2 = check_distance(abs(1-n_difficulty),1);
		var dis_temp3 = check_distance(abs(-1-n_difficulty),1);
		var color_temp1 = merge_color_new(c_black,c_white,dis_temp1)
		var color_temp2 = merge_color_new(c_black,c_white,dis_temp2)
		var color_temp3 = merge_color_new(c_black,c_white,dis_temp3)
		var f_selected = (global.mobile_mode == 1) ? 1.8 : 1+dis_temp1*0.5
		var s_selected = (global.mobile_mode == 1) ? 1.8 : 1+dis_temp2*0.5
		var t_selected = (global.mobile_mode == 1) ? 1.8 : 1+dis_temp3*0.5
		var icon_scale = 0.2*(image_xscale - (0.3+global.mobile_mode*0.5))


		var button_1_xx = xx+xx_w*0.32
		var button_2_xx = xx+xx_w*0.68
		//game start (난이도 선택 완료후 진짜로 시작)
		if global.select_difficulty > 0.99
		{
			if global.mobile_mode == 0
			{
				if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_up)
				{
					global.t_selected_difficulty--
					audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
				}
		
				if keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_down)
				{
					global.t_selected_difficulty++
					audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
				}
		
				if global.t_selected_difficulty > 1
				{
					global.t_selected_difficulty = 0
				}
		
				if global.t_selected_difficulty < 0
				{
					global.t_selected_difficulty = 1
				}
			}
		
		
			if (global.can_change_music_list == 1)
			{
				if (global.t_selected_difficulty == 1 || (global.n_map_id >= 0 && global.t_selected_difficulty != 1))
				{
					if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))
					{
						if (global.t_selected_difficulty = 1 || (global.t_selected_difficulty = 0 && global.level >= (global.detailed_difficulty[global.n_map_id]+1)*4))
						{
							code.gamestart = 1
							global.paused = 0
							global.t_select_difficulty = 0
							audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
							window_set_cursor(cr_none)
						}
					}
		
					if mouse_check_button_pressed(mb_left)
					{
						if (point_distance(mouse_x,mouse_y,button_1_xx,middle_yy) < 256*f_selected)
						{
							global.t_selected_difficulty = 1
							code.gamestart = 1
							global.paused = 0
							audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
							window_set_cursor(cr_none)
							global.t_select_difficulty = 0
						}
						else if (point_distance(mouse_x,mouse_y,button_2_xx,middle_yy) < 256*s_selected)
						{
							global.t_selected_difficulty = 0
							if (global.n_map_id >= 0 && global.level >= (global.detailed_difficulty[global.n_map_id]+1)*4)
							{
								code.gamestart = 1
								global.paused = 0
								window_set_cursor(cr_none)
								audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
								global.t_select_difficulty = 0
							}
						}
						else
						{
							code.gamestart = 0
							code.automatic_reload_leaderboard = 0
							audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
							global.t_select_difficulty = 0
						}
					}
			
					if (keyboard_check_pressed(vk_escape))
					{
						code.gamestart = 0
						code.automatic_reload_leaderboard = 0
						audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
						global.t_select_difficulty = 0
					}
				}
			}
		}
	

		draw_text(xx+64,yy+64,n_difficulty)
		draw_sprite_ext(spr_circle,0,button_1_xx,middle_yy,scale*f_selected*global.font_ratio_resolution_xx*0.5,scale*f_selected*0.5,0,merge_color_new(c_white,c_black,dis_temp1),global.select_difficulty)
		draw_sprite_ext(spr_music,0,button_1_xx,middle_yy-f_selected*130,icon_scale*f_selected*global.font_ratio_resolution_xx,icon_scale*f_selected,image_angle,merge_color_new(c_black,c_white,dis_temp1),global.select_difficulty)
		draw_text_k_scale(button_1_xx,middle_yy-f_selected*64,"Normal",64,-1,global.select_difficulty,color_temp1,0,0,normal_font,0.65*f_selected*global.font_ratio_resolution_xx,0.65*f_selected,0)
		draw_text_k_scale(button_1_xx,middle_yy,"특정 하이라이트 부분에서\n세이브 포인트를 제공합니다",scale*48*f_selected,-1,global.select_difficulty,color_temp1,0,0,normal_font,0.35*f_selected*global.font_ratio_resolution_xx,0.35*f_selected,0)

		var tmp_ind = global.obtainable_type[global.n_map_id];
		tmp_ind = (tmp_ind > 9) ? tmp_ind-9 : tmp_ind;
		draw_sprite_ext(spr_circle,0,button_2_xx,middle_yy,scale*s_selected*global.font_ratio_resolution_xx*0.5,scale*s_selected*0.5,0,merge_color_new(c_white,c_black,dis_temp2),global.select_difficulty)
		draw_sprite_ext(spr_W,tmp_ind,button_2_xx,middle_yy-s_selected*130,icon_scale*s_selected*global.font_ratio_resolution_xx,icon_scale*s_selected,image_angle,color_temp2,global.select_difficulty)
		draw_text_k_scale(button_2_xx,middle_yy-s_selected*64,"Hardcore",64,-1,global.select_difficulty,color_temp2,0,0,normal_font,0.65*s_selected*global.font_ratio_resolution_xx,0.65*s_selected,0)
		draw_text_k_scale(button_2_xx,middle_yy,"세이브 포인트를 제공하지 않으며,\n새로운 탄막이 추가됩니다.\n\n클리어 시,\n많은 경험치와 아티팩트를 중복하여 획득할 수 있으며,\n특정 캐릭터를 획득할 수 있습니다.",scale*48*s_selected,-1,global.select_difficulty,color_temp2,0,0,normal_font,0.35*s_selected*global.font_ratio_resolution_xx,0.35*s_selected,0)
	
	
		//draw_sprite_ext(spr_circle,0,middle_xx,middle_yy+yy_h*0.15,scale*t_selected*global.font_ratio_resolution_xx*0.5,scale*t_selected*0.5,0,merge_color_new(c_white,c_black,dis_temp3),global.select_difficulty)
		//draw_sprite_ext(spr_star,0,middle_xx,middle_yy+yy_h*0.15-t_selected*130,icon_scale*t_selected*global.font_ratio_resolution_xx,icon_scale*t_selected,image_angle,color_temp3,global.select_difficulty)
		//draw_text_k_scale(middle_xx,middle_yy+yy_h*0.15-t_selected*64,"Nightcore",64,-1,global.select_difficulty,merge_color_new(c_black,c_white,dis_temp3),0,0,normal_font,0.65*t_selected*global.font_ratio_resolution_xx,0.65*t_selected,0)
		//draw_text_k_scale(middle_xx,middle_yy+yy_h*0.15,"특정 하이라이트 부분에서\n세이브 포인트를 제공하며,\n음악의 속도가 조금 빨라집니다.",scale*48*t_selected,-1,global.select_difficulty,color_temp3,0,0,normal_font,0.35*t_selected*global.font_ratio_resolution_xx,0.35*t_selected,0)
	
		if (global.n_map_id >= 0)
		{
			var unlock_level = (global.detailed_difficulty[global.n_map_id]+1)*4;
			if (global.level < unlock_level)
			{
				draw_sprite_ext(spr_circle,0,button_2_xx,middle_yy,scale*s_selected*global.font_ratio_resolution_xx*0.5,scale*s_selected*0.5,0,c_black,global.select_difficulty*0.7)
				draw_sprite_ext(spr_lock,1,button_2_xx,middle_yy,scale*s_selected*global.font_ratio_resolution_xx*0.5,scale*s_selected*0.5,0,color_temp2,global.select_difficulty)
				draw_text_kl_scale(button_2_xx,middle_yy,"해금 조건\n"+string(unlock_level)+"레벨 이상",scale*48*s_selected,-1,global.select_difficulty,merge_color_new(c_white,c_black,abs(1-n_difficulty)*0.5),0,0,normal_font,0.5*s_selected*global.font_ratio_resolution_xx,0.5*s_selected,0)
			}
		}


		//outline
		draw_sprite_ext(spr_circle_outline_light,0,xx+xx_w*0.32,middle_yy,scale*f_selected*global.font_ratio_resolution_xx,scale*f_selected,0,color_temp1,global.select_difficulty)
		draw_sprite_ext(spr_circle_outline_light,0,xx+xx_w*0.68,middle_yy,scale*s_selected*global.font_ratio_resolution_xx,scale*s_selected,0,color_temp2,global.select_difficulty)
		//draw_sprite_ext(spr_circle_outline_light,0,middle_xx,middle_yy+yy_h*0.15,scale*t_selected*global.font_ratio_resolution_xx,scale*t_selected,0,color_temp3,global.select_difficulty)
	}
	/**/


	draw_set_color(c_black)
	draw_set_alpha(global.b_alpha)
	draw_line_width(0,0,room_width,room_height,5000)


	if instance_exists(code)
	{
		if global.character_setting > 0
		{
			var scale = 2
			var __alpha = global.b_alpha/0.9
			draw_set_color(c_white)
			draw_line_width(middle_xx-(__alpha)*150,yy+yy_h*0.2,middle_xx+(__alpha)*150,yy+yy_h*0.2,5)
			draw_text_k_scale(middle_xx,yy+yy_h*0.1,"파트너",scale*48,-1,__alpha,c_white,0,0,normal_font,0.56*global.font_ratio_resolution_xx*scale,0.56*scale,0)
		
			global.n_select_skin += (global.t_n_select_skin - global.n_select_skin)*0.1
			for(var i = 0; i < sprite_get_number(spr_illustrationCG); i++)
			{
				var n_skin__ = (global.n_select_skin >= 0) ? global.n_select_skin : 0
				var col_ = c_white
				var unlocked = (global.unlocked_player_skin[i] == 0);
				var n_is_selected = (i == round(global.n_select_skin)) ? 1.3 : 1;
				var _dis_scale = (1-(abs(i-global.n_select_skin)/3))*n_is_selected;
				var skin_name = global.unlocked_player_skin_name[i] ;
				//draw_text_k_scale(middle_xx+i*32,yy+yy_h*0.05+i*16,string(round(global.n_select_skin))+" / "+string(i),scale*48,-1,__alpha,c_white,0,0,normal_font,0.2*global.font_ratio_resolution_xx*scale,0.2*scale,0)
			
				if (!unlocked)
				{
					if (global.unlocked_player_skin[i] < 1.01)
					{
						global.unlock_partner_animation_queue = 0;
						global.unlocked_player_skin[i] = 1;
					}
					else
					{
						if (n_is_selected == 1.3)
						{
							if (global.unlocked_player_skin[i] == 3)
							{
								var _ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,explosion_effect);
								_ef.image_xscale = 3;
								_ef.image_yscale = 3;
								_ef.t_scale = 5;
								_ef.image_blend = (i/7);
								audio_play_sound(glow_sfx,0,false,global.master_volume*global.sfx_volume);
							}
							
							
							global.unlocked_player_skin[i] += (1 - global.unlocked_player_skin[i])*0.1;
						}
						
						if (global.unlock_partner_animation_queue == 0)
						{
							global.t_n_select_skin = i;
							global.unlock_partner_animation_queue = 1;
						}
					}
				}
			
				if (_dis_scale > 0.1)
				{
					if (unlocked)
					{
						shader_set(shFlash)
						col_ = c_gray
					}
					else
					{
						if (n_is_selected == 1.3)
						{
							var tmp_n_col = color_table[global.t_n_select_skin/4];
							var _margin = 8
							if (abs(global.t_n_select_skin - global.n_select_skin) < 0.5)
							{
								shader_set(shFlash)
								draw_sprite_ext(spr_illustrationCG,i,7*(1-(global.n_select_skin-i)*30)+middle_xx-n_skin__*640+i*640-_margin,middle_yy+256*_dis_scale*1.3,global.font_ratio_resolution_xx*_dis_scale*1.3,_dis_scale*1.3,0,tmp_n_col,__alpha*_dis_scale*(1+abs(global.n_select_skin-i)*10))
								shader_reset()
							}
						
							draw_text_k_scale(middle_xx,yy+yy_h*0.76,"[특수 효과]",scale*48,-1,__alpha*0.7*_dis_scale,merge_color_new(tmp_n_col,c_white,0.7-abs(i-global.n_select_skin)/1.5),0,0,normal_font,0.28*global.font_ratio_resolution_xx*scale*_dis_scale,0.28*scale*_dis_scale,0)
							draw_text_k_scale(middle_xx,yy+yy_h*0.76,"\n"+string(skin_name),scale*48,-1,__alpha*0.7*_dis_scale,merge_color_new(tmp_n_col,c_white,0.7-abs(i-global.n_select_skin)/1.5),0,0,normal_font,0.23*global.font_ratio_resolution_xx*scale*_dis_scale,0.23*scale*_dis_scale,0)
						}
					}
			
					draw_sprite_ext(spr_illustrationCG,i,middle_xx-n_skin__*640+i*640,middle_yy+256*_dis_scale*1.3,global.font_ratio_resolution_xx*_dis_scale*1.3,_dis_scale*1.3,0,col_,__alpha*_dis_scale)
					shader_reset()
			
					if (unlocked)
					{
						var tmp_requirement = global.unlocked_player_skin_require_num[i];
						var tmp_requirement_type = global.unlocked_player_skin_require_type[i];
						if (is_real(tmp_requirement))
						{
							draw_sprite_ext(spr_lock,0,middle_xx-n_skin__*640+i*640-84*_dis_scale,middle_yy-64*_dis_scale,global.font_ratio_resolution_xx*0.5*_dis_scale*0.5,0.5*_dis_scale*0.5,0,c_white,__alpha*_dis_scale)
							draw_text_kl_scale(middle_xx-n_skin__*640+i*640-20*_dis_scale,middle_yy-106*_dis_scale,"해금 조건",scale*48,-1,__alpha*0.7*_dis_scale,c_white,0,-1,normal_font,0.2*global.font_ratio_resolution_xx*scale*_dis_scale,0.2*scale*_dis_scale,0)
							draw_sprite_ext(spr_W,tmp_requirement_type,middle_xx-n_skin__*640+i*640,middle_yy-24*_dis_scale,global.font_ratio_resolution_xx*0.5*_dis_scale*0.25,0.5*_dis_scale*0.25,0,c_white,__alpha*_dis_scale)
							if (tmp_requirement == global.max_artifact_owned[tmp_requirement_type])
							{
								draw_text_kl_scale(middle_xx-n_skin__*640+i*640+40*_dis_scale,middle_yy-64*_dis_scale,"아티팩트 수집률\n100% 달성",scale*48,-1,__alpha*0.7*_dis_scale,c_white,0,-1,normal_font,0.2*global.font_ratio_resolution_xx*scale*_dis_scale,0.2*scale*_dis_scale,0)
							}
							else
							{
								draw_text_kl_scale(middle_xx-n_skin__*640+i*640+42*_dis_scale,middle_yy-36*_dis_scale,"x"+string(tmp_requirement),scale*48,-1,__alpha*0.7*_dis_scale,c_white,0,0,normal_font,0.2*global.font_ratio_resolution_xx*scale*_dis_scale,0.2*scale*_dis_scale,0)
							}
						}
						else
						{
							draw_sprite_ext(spr_lock,0,middle_xx-n_skin__*640+i*640-84*_dis_scale,middle_yy-64*_dis_scale,global.font_ratio_resolution_xx*0.5*_dis_scale*0.25,0.5*_dis_scale*0.25,0,c_white,__alpha*_dis_scale)
							draw_text_kl_scale(middle_xx-n_skin__*640+i*640-32*_dis_scale,middle_yy-96*_dis_scale,"해금 조건",scale*48,-1,__alpha*0.7*_dis_scale,c_white,0,-1,normal_font,0.2*global.font_ratio_resolution_xx*scale*_dis_scale,0.2*scale*_dis_scale,0)
							draw_text_kl_scale(middle_xx-n_skin__*640+i*640,middle_yy-16*_dis_scale,string(tmp_requirement),scale*48,-1,__alpha*0.7*_dis_scale,c_white,0,0,normal_font,0.2*global.font_ratio_resolution_xx*scale*_dis_scale,0.2*scale*_dis_scale,0)
						}
					}
					else
					{
						var unlock_anime_alpha = global.unlocked_player_skin[i]-1;
						shader_set(shFlash)
						draw_sprite_ext(spr_illustrationCG,i,middle_xx-n_skin__*640+i*640,middle_yy+256*_dis_scale*1.3,global.font_ratio_resolution_xx*_dis_scale*1.3,_dis_scale*1.3,0,c_white,unlock_anime_alpha*__alpha*_dis_scale)
						shader_reset()
					}
				}
			}



			if (mouse_check_button_pressed(mb_left) && global.unlock_partner_animation_queue == 0)
			{
				audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
				if (mouse_x >= middle_xx+400)
				{
					global.t_n_select_skin++
				}
				else if (mouse_x <= middle_xx-400)
				{
					global.t_n_select_skin--
				}
				else
				{
					event_user(0)
				}
			}
		
			if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left))
			{
				audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
				global.t_n_select_skin += keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left)
			}
		
			if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
			{
				event_user(0)
			}
		
		
			if (global.t_n_select_skin >= sprite_get_number(spr_illustrationCG))
			{
				global.t_n_select_skin = 0
			}
			else if global.t_n_select_skin < 0
			{
				global.t_n_select_skin = sprite_get_number(spr_illustrationCG)-1;
			}
		
		
		
		
			draw_sprite_ext(spr_square_half,key_Rpressed,middle_xx-(__alpha)*600,16+middle_yy,0.2*global.font_ratio_resolution_xx*scale,0.2*scale,45,c_black,ui_alpha__cal*0.3)
			draw_sprite_ext(spr_square_half,key_Rpressed,middle_xx-(__alpha)*600,middle_yy,0.2*global.font_ratio_resolution_xx*scale,0.2*scale,45,c_white,ui_alpha__cal)
		
			draw_sprite_ext(spr_square_half,key_Rpressed,middle_xx+(__alpha)*600,16+middle_yy,0.2*global.font_ratio_resolution_xx*scale,0.2*scale,225,c_black,ui_alpha__cal*0.3)
			draw_sprite_ext(spr_square_half,key_Rpressed,middle_xx+(__alpha)*600,middle_yy,0.2*global.font_ratio_resolution_xx*scale,0.2*scale,225,c_white,ui_alpha__cal)
		}
	
	
	

		if (global.show_new_songs > 0 && (code.gamestart == 0 || code.gamestart >= 4))
		{
			if (global.t_b_alpha != -0.02)
			{
				global.t_b_alpha = 0.9
			}
	
			if (global.t_b_alpha == 0.9 && instance_exists(code) && code.gamestart == 0 && global.b_alpha > 0.8)
			{
				code.gamestart = 4
			}
			var scale = 2
			draw_set_color(c_white)
			draw_set_alpha((global.show_new_songs/100)*(1 - abs(global.new_song_scroll)/100))
			draw_line_width(middle_xx-global.show_new_songs*1.5,yy+yy_h*0.2,middle_xx+global.show_new_songs*1.5,yy+yy_h*0.2,5)
			

			if (global.notice_title == "조작법 가이드")
			{
				anime_tuto_key_timer ++
				anime_tuto_key1_alpha += (0.2 - anime_tuto_key1_alpha)*0.1
				anime_tuto_key2_alpha += (0.2 - anime_tuto_key2_alpha)*0.1
				var tmp_alp = (global.show_new_songs/100)*(1 - abs(global.new_song_scroll)/100)
				draw_text_k_scale(middle_xx,yy+yy_h*0.1,global.notice_title,scale*48,-1,tmp_alp,c_white,0,0,normal_font,0.56*global.font_ratio_resolution_xx*scale,0.56*scale,0)
			
				if (anime_tuto_key_timer = 60)
				{
					anime_tuto_key1_alpha = 1.1
				}
			
				if (anime_tuto_key_timer = 70)
				{
					anime_tuto_key2_alpha = 1.1
				}
			
				if (anime_tuto_key_timer > 120)
				{
					anime_tuto_key_timer = 0;
				}
			
				if (global.mobile_mode == 1)
				{
					var scale_slide1_anime = (1.1 - anime_tuto_key1_alpha)
					draw_text_k_scale(middle_xx-640,yy+yy_h*0.55,"리스트 선택",scale*48,-1,tmp_alp,c_white,0,0,normal_font,0.3*global.font_ratio_resolution_xx*scale,0.3*scale,0)
					draw_sprite_ext(spr_key,5,middle_xx-640-96,yy+yy_h*0.4,scale*scale_slide1_anime,scale*scale_slide1_anime,0,c_white,tmp_alp*anime_tuto_key1_alpha)
					draw_sprite_ext(spr_key,6,middle_xx-640-96,yy+yy_h*0.4-(1.1-anime_tuto_key2_alpha)*64,scale,scale,0,c_white,tmp_alp*anime_tuto_key2_alpha)
				
					draw_sprite_ext(spr_key,5,middle_xx-640+96,yy+yy_h*0.4,scale*scale_slide1_anime,-scale*scale_slide1_anime,0,c_white,tmp_alp*anime_tuto_key1_alpha)
					draw_sprite_ext(spr_key,6,middle_xx-640+96,yy+yy_h*0.4+(1.1-anime_tuto_key2_alpha)*64,scale,-scale,0,c_white,tmp_alp*anime_tuto_key2_alpha)
				
				
					draw_text_k_scale(middle_xx,yy+yy_h*0.55,"곡 둘러보기",scale*48,-1,tmp_alp,c_white,0,0,normal_font,0.3*global.font_ratio_resolution_xx*scale,0.3*scale,0)
					draw_sprite_ext(spr_key,5,middle_xx-128,yy+yy_h*0.4,scale*scale_slide1_anime,scale*scale_slide1_anime,90,c_white,tmp_alp*anime_tuto_key1_alpha)
					draw_sprite_ext(spr_key,6,middle_xx-128-(1.1-anime_tuto_key2_alpha)*64,yy+yy_h*0.4,scale,scale,90,c_white,tmp_alp*anime_tuto_key2_alpha)
				
					draw_sprite_ext(spr_key,5,middle_xx+128,yy+yy_h*0.4,scale*scale_slide1_anime,scale*scale_slide1_anime,-90,c_white,tmp_alp*anime_tuto_key1_alpha)
					draw_sprite_ext(spr_key,6,middle_xx+128+(1.1-anime_tuto_key2_alpha)*64,yy+yy_h*0.4,scale,scale,-90,c_white,tmp_alp*anime_tuto_key2_alpha)
				
				
					draw_text_k_scale(middle_xx+640,yy+yy_h*0.55,"확인",scale*48,-1,tmp_alp,c_white,0,0,normal_font,0.3*global.font_ratio_resolution_xx*scale,0.3*scale,0)
					draw_sprite_ext(spr_key,7,middle_xx+640,yy+yy_h*0.4,scale*scale_slide1_anime,scale*scale_slide1_anime,90,c_white,tmp_alp*anime_tuto_key1_alpha)
				}
				else
				{
					draw_text_k_scale(middle_xx-640,yy+yy_h*0.55,"리스트 선택",scale*48,-1,tmp_alp,c_white,0,0,normal_font,0.3*global.font_ratio_resolution_xx*scale,0.3*scale,0)
					draw_sprite_ext(spr_key,0,middle_xx-640-96,yy+yy_h*0.45,scale*1.5,scale*1.5,0,c_white,tmp_alp)
					draw_sprite_ext(spr_key,0,middle_xx-640+96,yy+yy_h*0.45,-scale*1.5,scale*1.5,0,c_white,tmp_alp)
				
				
					draw_text_k_scale(middle_xx,yy+yy_h*0.55,"곡 둘러보기",scale*48,-1,tmp_alp,c_white,0,0,normal_font,0.3*global.font_ratio_resolution_xx*scale,0.3*scale,0)
					draw_sprite_ext(spr_key,1,middle_xx-96,yy+yy_h*0.45,scale*1.5,scale*1.5,0,c_white,tmp_alp)
					draw_sprite_ext(spr_key,2,middle_xx+96,yy+yy_h*0.45,scale*1.5,scale*1.5,0,c_white,tmp_alp)
				
				
					draw_text_k_scale(middle_xx+640,yy+yy_h*0.55,"확인",scale*48,-1,tmp_alp,c_white,0,0,normal_font,0.3*global.font_ratio_resolution_xx*scale,0.3*scale,0)
					draw_sprite_ext(spr_key,4,middle_xx+640,yy+yy_h*0.45,scale*1.5,scale*1.5,0,c_white,tmp_alp)
				}
			}
			else
			{
				if (global.notice_title_sub != "")
				{
					draw_text_k_scale(middle_xx,yy+yy_h*0.066,global.notice_title,scale*48,-1,(global.show_new_songs/100)*(1 - abs(global.new_song_scroll)/100),c_white,0,0,normal_font,0.56*global.font_ratio_resolution_xx*scale,0.56*scale,0)
					draw_text_k_scale(middle_xx,yy+yy_h*0.13,global.notice_title_sub,scale*48,-1,(global.show_new_songs/100)*(1 - abs(global.new_song_scroll)/100),c_white,0,0,normal_font,0.32*global.font_ratio_resolution_xx*scale,0.32*scale,0)
				}
				else
				{
					draw_text_k_scale(middle_xx,yy+yy_h*0.1,global.notice_title,scale*48,-1,(global.show_new_songs/100)*(1 - abs(global.new_song_scroll)/100),c_white,0,0,normal_font,0.56*global.font_ratio_resolution_xx*scale,0.56*scale,0)
				}
	
				for(var i = 0; i < global.new_unlocked_map_num; i++)
				{
					if (global.unlocked_music_name_new_list_rightside[i] == "")
					{
						if (global.unlocked_music_name_new_list[i] == "___")
						{
							draw_set_color(c_white)
							draw_set_alpha(global.show_new_songs/100)
							draw_line_width(middle_xx-230,yy+yy_h*0.245-global.new_song_scroll+i*64*scale,middle_xx+230,yy+yy_h*0.245-global.new_song_scroll+i*64*scale,5)
						}
						else
						{
							draw_text_k_scale(middle_xx,yy+yy_h*0.24-global.new_song_scroll+i*64*scale,global.unlocked_music_name_new_list[i],scale*48,-1,global.show_new_songs/130,global.unlocked_music_name_new_list_color[i],0,0,normal_font,0.35*global.font_ratio_resolution_xx*scale,0.35*scale,0)
						}
					}
					else
					{
						if (code.automatic_reload_leaderboard == 0)
						{
							draw_text_k_scale(middle_xx-640,yy+yy_h*0.24-global.new_song_scroll+i*64*scale,global.unlocked_music_name_new_list[i],scale*48,-1,global.show_new_songs/130,global.unlocked_music_name_new_list_color[i],0,-1,normal_font,0.35*global.font_ratio_resolution_xx*scale,0.35*scale,0)
							draw_text_k_scale(middle_xx+640,yy+yy_h*0.24-global.new_song_scroll+i*64*scale,global.unlocked_music_name_new_list_rightside[i],scale*48,-1,global.show_new_songs/130,global.unlocked_music_name_new_list_color_rightside[i],0,1,normal_font,0.35*global.font_ratio_resolution_xx*scale,0.35*scale,0)
						}
					}
				}
			}
		
						
			if (global.notice_title = "Result")
			{
				var tmp_art_type = global.artifact_type;
				var tmp_val = global.artifact_owned[tmp_art_type]/global.max_artifact_owned[tmp_art_type];
				tmp_val = (tmp_val > 1) ? 1 : tmp_val;
						
				if (global.show_new_songs > 60)
				{
					result_alpha1 += (1 - result_alpha1)*0.1
					if (result_alpha1 < 0.999)
					{
						if (!audio_is_playing(setting_scroll_sfx))
						{
							audio_play_sound(setting_scroll_sfx,0,false,global.master_volume*global.sfx_volume*32)
						}
					}
				
					if (result_alpha1 > 0)
					{
						global.n_progress_artifact += (tmp_val+0.01 - global.n_progress_artifact)*0.1
						global.n_progress_artifact = (global.n_progress_artifact > 1) ? 1 : global.n_progress_artifact;
					}
					else
					{
						global.n_progress_artifact = 0;
					}
				}
						
				draw_sprite_ext(spr_W,(tmp_art_type != 8) ? tmp_art_type : 9,middle_xx-1760*0.7*0.5*global.font_ratio_resolution_xx+64,yy+yy_h*0.72-global.new_song_scroll,0.2*global.font_ratio_resolution_xx,0.2,0,c_white,result_alpha1)
				draw_text_k_scale(middle_xx-1760*0.7*0.5*global.font_ratio_resolution_xx+128,yy+yy_h*0.7-global.new_song_scroll,"아티팩트 수집률 ("+string(floor(global.n_progress_artifact*100))+"%)",scale*48,-1,result_alpha1,c_white,0,-1,normal_font,0.35*global.font_ratio_resolution_xx*scale,0.35*scale,0)
				draw_sprite_ext(spr_level_bar,0,middle_xx-1760*0.7*0.5*global.font_ratio_resolution_xx,yy+yy_h*0.75-global.new_song_scroll,global.font_ratio_resolution_xx*0.7,0.5,0,#171628,result_alpha1)
			
				var tmp_col = (array_length(color_table) > tmp_art_type) ? color_table[tmp_art_type] : c_white;
				draw_sprite_part_ext(spr_level_bar,0,0,0,global.n_progress_artifact*1760,64,middle_xx-1760*0.5*0.7*global.font_ratio_resolution_xx,yy+yy_h*0.75-global.new_song_scroll,global.font_ratio_resolution_xx*0.7,0.5,tmp_col,result_alpha1)
			
						
						
				
				var can_show_top_ten, tmp_target_score, tmp_val2, tmp_str2;
				if (global.player_leaderboard_difficulty != 0)
				{
					can_show_top_ten = (global.top_ten_score_hardcore != -4) ? 1 : 0;
					tmp_target_score = (global.n_score_hardcore[global.n_map_id] == "--") ? 0 : global.n_score_hardcore[global.n_map_id];
					tmp_val2 = tmp_target_score/global.top_ten_score_hardcore;
					tmp_val2 = (tmp_val2 > 1) ? 1 : tmp_val2;
					tmp_str2 = (tmp_val2 != 1) ? "유저 랭킹 Top5까지 앞으로 "+string(numbers_with_comma(global.top_ten_score_hardcore - tmp_target_score))+"점!" : "유저 랭킹 Top5 달성!";
				}
				else
				{
					can_show_top_ten = (global.top_ten_score_normal != -4) ? 1 : 0;
					tmp_target_score = (global.n_score[global.n_map_id] == "--") ? 0 : global.n_score[global.n_map_id];
					tmp_val2 = tmp_target_score/global.top_ten_score_normal;
					tmp_val2 = (tmp_val2 > 1) ? 1 : tmp_val2;
					tmp_str2 = (tmp_val2 != 1) ? "유저 랭킹 Top5까지 앞으로 "+string(numbers_with_comma(global.top_ten_score_normal - tmp_target_score))+"점!" : "유저 랭킹 Top5 달성!";
				}
						
				if (can_show_top_ten == 1)
				{	
					if (result_alpha1 > 0.7)
					{
						result_alpha2 += (1 - result_alpha2)*0.1
						if (result_alpha2 > 0)
						{
							global.n_progress_score += (tmp_val2+0.01 - global.n_progress_score)*0.1
							global.n_progress_score = (global.n_progress_score > 1) ? 1 : global.n_progress_score;
						}
						else
						{
							global.n_progress_score = 0;
						}
					}

					draw_sprite_ext(spr_star,0,middle_xx-1760*0.7*0.5*global.font_ratio_resolution_xx+64,yy+yy_h*0.82-global.new_song_scroll,0.18*global.font_ratio_resolution_xx,0.18,0,c_white,result_alpha2)
					draw_text_k_scale(middle_xx-1760*0.7*0.5*global.font_ratio_resolution_xx+128,yy+yy_h*0.8-global.new_song_scroll,string(tmp_str2),scale*48,-1,result_alpha2,c_white,0,-1,normal_font,0.35*global.font_ratio_resolution_xx*scale,0.35*scale,0)
					draw_sprite_ext(spr_level_bar,0,middle_xx-1760*0.7*0.5*global.font_ratio_resolution_xx,yy+yy_h*0.85-global.new_song_scroll,global.font_ratio_resolution_xx*0.7,0.5,0,#171628,result_alpha2)
					draw_sprite_part_ext(spr_level_bar,0,0,0,global.n_progress_score*1760,64,middle_xx-1760*0.5*0.7*global.font_ratio_resolution_xx,yy+yy_h*0.85-global.new_song_scroll,global.font_ratio_resolution_xx*0.7,0.5,$FF56D2FF,result_alpha2)
				}
			}
	

			if (mouse_wheel_up() && global.t_new_song_scroll > 0)
			{
				global.t_new_song_scroll -= 150;
			}
	
			if (mouse_wheel_down() && global.t_new_song_scroll < global.new_unlocked_map_num*150-1500)
			{
				global.t_new_song_scroll += 150;
			}
			
			if (global.notice_title == "Ranking")
			{
				global.new_unlocked_map_num = 11;
				if (code.automatic_reload_leaderboard == 0)
				{
					if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_up))
					{
						global.t_selected_difficulty--;
						global.b_loaded_ranking = -1;
						audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)

						code.automatic_reload_leaderboard = 1
					}
					else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_down))
					{
						global.t_selected_difficulty++;
						global.b_loaded_ranking = -1;
						audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)


						code.automatic_reload_leaderboard = 1
					}
					else if (global.b_alpha >= 0.85 && (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left)))
					{
						global.t_b_alpha = -0.02
						code.gamestart = 5
						alarm[4] = 15
					}
				}
				else
				{
					var tmp_alpha = (code.automatic_reload_leaderboard/30 > 1) ? 1 : code.automatic_reload_leaderboard/30;
					draw_sprite_ext(spr_loading,0,middle_xx,yy+yy_h*0.52,global.font_ratio_resolution_xx,1,-5*code.automatic_reload_leaderboard,c_white,tmp_alpha)
				}
				
				
				if global.t_selected_difficulty > 1
				{
					global.t_selected_difficulty = 0
				}
				else if global.t_selected_difficulty < 0
				{
					global.t_selected_difficulty = 1
				}
				
				if (code.n_stage >= 0 && string_pos("(Hardcore)", global.stage_map_difficulty[code.n_stage]) != 0)
				{
					global.t_selected_difficulty = 0
				}
			}
			else if (global.notice_title == "User Ranking")
			{
				if (code.automatic_reload_player_leaderboard == 0)
				{
					if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_up))
					{
						global.player_leaderboard_difficulty--
						audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)

						code.automatic_reload_player_leaderboard = 1;
					}
					else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_down))
					{
						global.player_leaderboard_difficulty++
						audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)


						code.automatic_reload_player_leaderboard = 1;
					}
					else if (global.b_alpha >= 0.85 && (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left)))
					{
						global.t_b_alpha = -0.02
						code.gamestart = 5
						alarm[4] = 15
					}
				}
				else
				{
					var tmp_alpha = (code.automatic_reload_player_leaderboard/30 > 1) ? 1 : code.automatic_reload_player_leaderboard/30;
					draw_sprite_ext(spr_loading,0,middle_xx,yy+yy_h*0.52,global.font_ratio_resolution_xx,1,-5*code.automatic_reload_player_leaderboard,c_white,tmp_alpha)
				}
				
				
				if global.player_leaderboard_difficulty > 1
				{
					global.player_leaderboard_difficulty = 0
				}
				else if global.player_leaderboard_difficulty < 0
				{
					global.player_leaderboard_difficulty = 1
				}
			}
			else if (global.notice_title == "게임을 시작하기 전...")
			{
				if (holding_now > 0)
				{
					draw_set_color(c_white)
					draw_set_alpha(holding_now/70)
					draw_line_width(global.c_x,yy+yy_h*0.55,global.c_x+global.c_w*(holding_now/90),yy+yy_h*0.55,15)
				}
				
				if (keyboard_check_pressed(vk_escape) || (global.mobile_mode == 1 && keyboard_check_pressed(vk_backspace)))
				{
					global.nickname = "";
					global.t_b_alpha = -0.02;
					code.gamestart = 5;
					alarm[4] = 15;
				}
				else
				{
					var can_usable = 0

					if (string_length(global.nickname) <= 15 && string_length(global.nickname) >= 3)
					{
						if (holding_now != -1 && keyboard_check(vk_space))
						{
							holding_now++;
						}
						
						if (keyboard_check_released(vk_space))
						{
							holding_now = 0
						}
					}
					
					if (keyboard_check_pressed(vk_backspace) && global.mobile_mode == 1)
					{
						global.nickname = string_delete(global.nickname,string_length(global.nickname),5);
					}
					
				
					if (string_length(keyboard_string))
					{
						global.nickname = (global.nickname+string_lettersdigits(keyboard_string))
						
						if (string_length(global.nickname) <= 15)
						{
							global.nickname = string_replace_all(global.nickname," ","")
						}
						else
						{
							global.nickname = string_delete(global.nickname,16,string_length(global.nickname)-15);
						}
						
						if (global.mobile_mode == 1 && (keyboard_string == "\n" || keyboard_string == "\r"))
						{
							keyboard_input_display = 999
							keyboard_virtual_hide()
						}

						keyboard_string = "";
					}
					
					if (keyboard_input_display < 900)
					{
						keyboard_input_display ++;
					}
					if (keyboard_input_display >= 40)
					{
						keyboard_input_display = -40
					}
					
					global.unlocked_music_name_new_list[1] = string(global.nickname)+((keyboard_input_display < 0) ? "|" : "");
					global.unlocked_music_name_new_list_color[1] = merge_color_new(c_black,c_white,0.7);
				}
				
				
				if holding_now > 90
				{
					global.nickname = string_replace_all(global.nickname," ","")
					global.t_b_alpha = -0.02
					code.gamestart = 5
					alarm[4] = 15
					holding_now = -1
				}
			}
			else if global.b_alpha >= 0.85 && (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left))
			{
				if (global.nickname == "" && global.notice_title == "조작법 가이드")
				{
					global.show_new_songs = 1;
					show_nickname_setting();
				}
				else
				{
					global.t_b_alpha = -0.02
					code.gamestart = 5
					alarm[4] = 15
				}
			}

			
			
	
			if (global.t_b_alpha == -0.02)
			{
				global.show_new_songs += (-10 - global.show_new_songs)*0.35
			}
			else
			{
				if (global.show_new_songs < 50)
				{
					global.t_new_song_scroll = 0;
				}
				global.show_new_songs += (100 - global.show_new_songs)*0.35
			}
		
		
			if (global.notice_title == "파트너 해금!")
			{
				draw_sprite_ext(spr_W,global.player_skin,global.c_x+100+320*(global.show_new_songs/100),global.c_y+660+16,0.17*global.font_ratio_resolution_xx*(global.show_new_songs/50),0.17*(global.show_new_songs/50),0,c_black,0.3*ui_alpha__cal)
				draw_sprite_ext(spr_W,global.player_skin,global.c_x+100+320*(global.show_new_songs/100),global.c_y+660,0.17*global.font_ratio_resolution_xx*(global.show_new_songs/50),0.17*(global.show_new_songs/50),0,c_white,ui_alpha__cal)
			
				draw_text_k_scale(global.c_x+104+320*(global.show_new_songs/100),global.c_y+700+64*(global.show_new_songs/100),"파트너"+((global.mobile_mode == 1) ? "" : "\n[Q]"),80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.5*global.font_ratio_resolution_xx*(global.show_new_songs/50),0.5*(global.show_new_songs/50),0)
			}
			else if (global.notice_title == "주의! - 커스텀 유저 맵")
			{
				draw_sprite_ext(spr_X,0,global.c_w-160,global.c_h-196,0.4,0.4,0,c_white,ui_alpha__cal)
				draw_text_k_scale(global.c_w-160,global.c_h-148,"다시 보지 않기\n[X]",80,-1,ui_alpha__cal,c_white,0,0,normal_font,0.5,0.5,0)
			
				if (keyboard_check_pressed(ord("X")))
				{
					global.guide_showed[3] = 1;
				}
			}
		}
		else
		{
			if (global.t_b_alpha == -0.02 && code.gamestart >= 4)
			{
				global.t_b_alpha = -0.01
				global.unlocked_music_name_new_list_rightside[0] = "";
				global.notice_title_sub = ""
				global.notice_title = ""
				code.gamestart = 0
			}
		}
	}




	draw_set_color(c_white)
	draw_set_alpha(global.w_alpha)
	draw_line_width(0,0,room_width,room_height,5000)
}
else ///크레딧 출력
{
	var tmp_color_amount = fix_num_inside(credit_text_alpha[1],0,1);
	draw_set_color(merge_color_new(c_black,#121212,tmp_color_amount*0.3))
	draw_set_alpha(1)
	draw_line_width(0,0,room_width,room_height,5000)
	
	draw_sprite_ext(spr_W,0,middle_xx,middle_yy,global.font_ratio_resolution_xx*image_xscale*0.4,image_yscale*0.4,0,c_white,1)
	
	if (credit_text_alpha[0] > 0)
	{
		draw_text_k_scale(middle_xx,middle_yy-480,"광과민성 반응 경고",64,-1,credit_text_alpha[0],#fbd780,0,0,normal_font,global.font_ratio_resolution_xx*0.8,0.8,0)
		draw_set_alpha(credit_text_alpha[0])
		draw_set_color(merge_color(#fbd780,c_white,0.8))
		draw_line_width(middle_xx-(credit_text_alpha[0])*320,middle_yy-320,middle_xx+(credit_text_alpha[0])*320,middle_yy-320,5)
		draw_text_k_scale(middle_xx-32,middle_yy-64,"이 게임은 밝은 색상이 반짝이는 연출이 다수 포함되어 있습니다.",64,-1,credit_text_alpha[0],c_white,0,0,normal_font,global.font_ratio_resolution_xx*0.7,0.7,0)
		draw_text_k_scale(middle_xx-32,middle_yy,"(환경설정을 통해 반짝이는 연출을 없앨 수 있습니다)",64,-1,credit_text_alpha[0]*0.7,c_white,0,0,normal_font,global.font_ratio_resolution_xx*0.6,0.6,0)
	}
	
	if (credit_text_alpha[1] > 0)
	{
		draw_text_k_scale(middle_xx,middle_yy-480,"Presented by",64,-1,credit_text_alpha[1],c_white,0,0,normal_font,global.font_ratio_resolution_xx*0.7,0.7,0)
		
		draw_sprite_ext(Sprite49,0,middle_xx,middle_yy,global.font_ratio_resolution_xx*1.1,1.1,0,c_white,credit_text_alpha[1])
		draw_text_k_scale(middle_xx-32,middle_yy+190,"Studio",64,-1,credit_text_alpha[1],c_white,0,0,normal_font,global.font_ratio_resolution_xx*0.8,0.8,0)
	}
	
	if (credit_text_alpha[2] > 0)
	{
		var surface_ratio = 1.87;
		var video_data = video_draw();
		var video_status = video_data[0];
		if (video_status == 0)
		{
			var video_width = surface_get_width(video_data[1]);
			var video_height = surface_get_height(video_data[1]);
			//show_message_log("scale : "+string(scale)+" / "+string(surface_get_width(video_data[1])))
			draw_surface_ext(video_data[1],xx,yy,surface_ratio*global.font_ratio_resolution_xx,surface_ratio,0,c_white,fix_num_inside(credit_text_alpha[2],0,1));
		}
	}
	
	if (credit_text_alpha[3] > 0)
	{
		var text_tmp = "어느 날, 음악 속에 갇혀버린 왁타버스 멤버들...";
		draw_text_kl_scale(middle_xx-420,middle_yy-300-credit_text_alpha[3]*80,text_tmp,64,-1,credit_text_alpha[3],c_white,0,-1,normal_font,global.font_ratio_resolution_xx*0.7,0.7,0)
		
		draw_set_alpha(credit_text_alpha[3])
		draw_set_color(c_white)
		draw_line_width(middle_xx-420,middle_yy-300-credit_text_alpha[3]*80,middle_xx-250+credit_text_alpha[3]*power(string_length(text_tmp),2)/2,middle_yy-300-credit_text_alpha[3]*80,4)
	}
	
	if (credit_text_alpha[4] > 0)
	{
		var text_tmp = "음악 속에 숨겨진 '아티팩트'를 모아";
		draw_text_kl_scale(middle_xx-420,middle_yy-150-credit_text_alpha[4]*80,text_tmp,64,-1,credit_text_alpha[4],c_white,0,-1,normal_font,global.font_ratio_resolution_xx*0.7,0.7,0)
		
		draw_set_alpha(credit_text_alpha[4])
		draw_set_color(c_white)
		draw_line_width(middle_xx-420,middle_yy-150-credit_text_alpha[4]*80,middle_xx-250+credit_text_alpha[4]*power(string_length(text_tmp),2)/2,middle_yy-150-credit_text_alpha[4]*80,4)
	}
	
	if (credit_text_alpha[5] > 0)
	{
		var text_tmp = "왁타버스 멤버들을 구해주세요...";
		draw_text_kl_scale(middle_xx-420,middle_yy-credit_text_alpha[5]*80,text_tmp,64,-1,credit_text_alpha[5],c_white,0,-1,normal_font,global.font_ratio_resolution_xx*0.7,0.7,0)
		
		draw_set_alpha(credit_text_alpha[5])
		draw_set_color(c_white)
		draw_line_width(middle_xx-420,middle_yy-credit_text_alpha[5]*80,middle_xx-250+credit_text_alpha[5]*power(string_length(text_tmp),2)/2,middle_yy-credit_text_alpha[5]*80,4)
	}
}


if (global.tutorial_played <= 0 && blind_xx_final > 0.99)
{
	if (global.tutorial_played > -160)
	{
		global.tutorial_played -= 0.2;
	}
	draw_set_color(c_black)
	draw_set_alpha(160+global.tutorial_played)
	draw_rectangle(xx,yy,xx+xx_w,yy+yy_h,false)
}

if (global.title_menu_animation1 >= 1)
{
	var color_blind = (global.map_color == c_black) ? merge_color_new(c_white,c_black,0.9) : global.map_color;
	draw_set_color(color_blind)
	draw_set_alpha(1)
	draw_rectangle(xx+xx_w*blind_xx_start,yy,xx+xx_w*blind_xx_final,xx_w,false)
}
/**/


