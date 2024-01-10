/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var xx_w = camera_get_view_width(view_camera[0]);
var yy_h = camera_get_view_height(view_camera[0]);

var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio;





if (global.timeline_stop == 1)
{
	draw_set_color(c_white);
	for(var i = -20; i <= 20; i++)
	{
		draw_set_alpha(0.07+((i%5 == 0) ? 0.07 : 0))
		draw_line(room_width*0.5+96*i,yy,room_width*0.5+96*i,yy+yy_h)
		draw_line(xx,room_height*0.5+96*i,xx+xx_w,room_height*0.5+96*i)
	}
	
	
	draw_text_k_scale(t_m_x+32,t_m_y-64,"x : "+string(t_m_x-room_width*0.5)+"\ny : "+string(t_m_y-room_height*0.5),64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	draw_sprite_ext(spr_square,0,xx+xx_w*0.5,yy+yy_h*1.01+8*global.converted_view_ratio-scroll_y*global.converted_view_ratio,99,8,0,c_white,1)
	draw_sprite_ext(spr_square,0,xx+xx_w*0.5,yy+yy_h*1.02-scroll_y*global.converted_view_ratio,99,8,0,c_black,1)
	
	
	var tmp_alpha_ = fix_to_zero(1-global.tiny_value_scrolling_now);
	if (tmp_alpha_ > 0)
	{
		draw_text_k_scale(xx+xx_w*0.01,yy+yy_h*(0.27-global.mobile_mode*0.03),"- 단축키",fontsize2*256,-1,tmp_alpha_,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		var plus_str = (custom_image_type != 2) ? "\n탄막 이미지 변경 [좌/우 방향키]" : "";
		draw_text_k_scale(xx+xx_w*0.01,yy+yy_h*(0.3-global.mobile_mode*0.03),"눈금선 위로 고정 [Shift]\n세밀한 값 조절 [Shift+스크롤 바 좌클릭]\n배치된 탄막 선택/수정 [마우스 가운데 휠 버튼]\n선택된 탄막 삭제 [Delete]\n에디터 창 열기/닫기 [Space / Enter]\n현재 타임라인 삭제 [Ctrl + Del]\n전체 타임라인 삭제 [Alt + Del]\n직접 값 입력 [스크롤 바 옆 숫자 클릭]"+string(plus_str),fontsize2*256,-1,tmp_alpha_,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)


	
		draw_text_k_scale(xx+xx_w*0.5-1024,yy+yy_h*(0.01-global.mobile_mode*0.03)+scroll_y,"[A] 1프레임 전으로  /  [Q] 60프레임 전으로",64,-1,tmp_alpha_,c_white,-1,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		draw_text_k_scale(xx+xx_w*0.5+1024,yy+yy_h*(0.01-global.mobile_mode*0.03)+scroll_y,"60프레임 후로 [E]  /  1프레임 후로 [D]",64,-1,tmp_alpha_,c_white,-1,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		draw_text_k_scale(xx+xx_w*0.5,yy+yy_h*(0.01-global.mobile_mode*0.03)+scroll_y,"타임라인 재생 [W] / [S] 가장 가까운 타임라인으로",64,-1,tmp_alpha_,c_white,-1,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

		draw_text_k_scale(xx+xx_w*0.2,yy+yy_h*(0.09-global.mobile_mode*0.03)+map_edior_ui.scroll_y,"타임라인 이동 [ "+string(global.n_progress)+" / "+string(global.music_duration)+" ]",64,-1,tmp_alpha_,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	}


	var tmp_name = [ "이동 탄막 - 이동하는 탄막을 생성합니다", "스파이크 폭발 탄막 - 멀리서 날아와 폭발하는 탄막을 생성합니다", "레이저 탄막 - 레이저를 생성합니다", "눈꽃 탄막 - '겨울봄 (Winter Spring)'에 등장한 눈꽃 탄막을 생성합니다", "지렁이 탄막 - '매스터 리믹스 (Orchestral Edit)'에 등장한 지렁이 탄막을 생성합니다", "화살표 레이저 탄막 - 'Happy Gosegu Sencho!'에 등장한 화살표 방향으로 날아가는 탄막을 생성합니다", "원형 폭발 탄막 - 시간이 지난 뒤 등장하는 탄막을 생성합니다", "맵 밖에서 튀어나오는 탄막 - '고멤가요제 MASHUP (아이네 INE)'에 등장한 막대기 모양의 탄막을 생성합니다", "탄막색 변경 - 탄막색을 변경합니다" , "배경색 변경 - 배경색을 변경합니다" , "미사일 탄막 - '밤가이!!'에 등장한 날아가면서 탄막을 생성하는 탄막을 생성합니다" , "세이브 포인트 지정 - 현재 타임라인에 세이브 포인트를 지정합니다", "바운스 탄막 - 'Happy Gosegu Sencho!'에 등장한 맵 바깥에서 튕기며 폭발하는 탄막을 생성합니다", "카메라 효과 - 카메라 줌 정도를 조절합니다", "배경 투명도 변화 - 배경의 투명도를 조절합니다", "회전하는 탄막 자동 생성기 - 지속 시간 동안 계속 '이동 탄막'을 생성합니다", "물 이펙트 탄막 - '아이패드'에 등장한 물이 튀기는 듯한 모양의 탄막을 생성합니다", "카메라 지진 효과 - 카메라를 시점을 흔드는 효과를 줍니다", "맵 이동 효과 - '밤가이!!'에 등장한 맵이 이동하는 효과를 줍니다", "지정 위치 이동 탄막 - 특정 좌표로 이동하는 탄막을 생성합니다", "이펙트 탄막 - 피격판정이 없는 탄막을 생성합니다", "화면 플래시 효과 - 화면이 번쩍거리는 효과를 줍니다", "비 효과 - '매스터 리믹스 (Orchestral Edit)'에 등장한 비 내리는 효과를 줍니다", "특수 카메라 효과 - 몇몇 특수한 카메라 효과를 줍니다", "세이프존 - 'Hardcore'모드에 등장하는 세이프존을 생성합니다", "산탄형 탄막 - 특정 각도로 특정 범위만큼 탄막을 산탄합니다.", "Unknown", "배치된 탄막 수정 ['마우스 가운데 휠 버튼'으로 바로 선택 가능]", "타임라인 플레이/일시정지" ];
	if (global.editor_selected_type >= 0)
	{
		draw_text_k_scale(xx+64,yy+yy_h*0.88+32-scroll_y,string(tmp_name[global.editor_selected_type]),64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	}
	else
	{
		draw_text_k_scale(xx+64,yy+yy_h*0.88+32-scroll_y,"[하단의 이미지를 클릭하여 배치할 탄막을 선택]",64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	}

//else
//{
	//draw_text_k_scale(t_m_x+32,t_m_y-64,"camera zoom : "+string(global.n_camera_zoom)+"\ncamera_slow_zoom : "+string(global.camera_slow_zoom),64,-1,1,c_red,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
//}



	for(var i = 0; i <= 28; i++) //탄막이 새로 추가되면 수정해야됨
	{
		if (i <= 25 || i > 27)
		{
			var tmp_xx = xx+(96+i*120)*global.converted_view_ratio;
			var tmp_yy = yy+yy_h*0.88+(160-scroll_y)*global.converted_view_ratio;
			if (mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,tmp_xx,tmp_yy) <= 48*global.converted_view_ratio)
			{
				with(hitbox_parents)
				{
					if (other.id != id)
					{
						editor_selected = 0;
					}
				}
				n_selected = -4;
				selected_projectile_type = 1;
				audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume);
				global.ed_arg_name[0] = "";
				global.ed_arg_name[1] = "";
				global.ed_arg_name[2] = "";
				global.ed_arg_name[3] = "";
				global.ed_arg_name[4] = "";
				global.ed_arg_name[5] = "";
				global.ed_arg_name[6] = "";
				global.editor_hitbox = -1;
				image_blend = global.map_color;
				image_angle = 0;
				image_xscale = 1;
				image_yscale = 1;
				image_alpha = 1;
		
				with(obj_button)
				{
					if (button_id >= 100)
					{
						instance_destroy();
					}
				}
		
				if (i == 28) //탄막이 새로 추가되면 수정해야됨
				{
					event_user(0);
				}
				else if (instance_exists(n_selected) && i == 0)
				{
					event_user(2);
				}
				else
				{
					global.editor_selected_type = i;
				}
			
				with(code)
				{
					event_user(14);
				}
			}
	
	
			var tmp_img_ind = i+1;
			if (i == 28) //탄막이 새로 추가되면 수정해야됨
			{
				if (global.timeline_stop == 1)
				{
					tmp_img_ind = 29; //탄막이 새로 추가되면 수정해야됨
				}
				else
				{
					tmp_img_ind = 30; //탄막이 새로 추가되면 수정해야됨
				}
			}

		
			draw_sprite_ext(spr_editor_button,tmp_img_ind,tmp_xx,tmp_yy,global.converted_view_ratio/1.333333333,global.converted_view_ratio/1.333333333,0,c_white,1)
			if (global.editor_selected_type == i)
			{
				draw_sprite_ext(spr_editor_button,0,tmp_xx,tmp_yy,global.converted_view_ratio/1.333333333,global.converted_view_ratio/1.333333333,0,c_white,1)
			}
			//draw_text(tmp_xx+32,tmp_yy+32,i);
		}
	}


	if (global.editor_selected_type == 1)
	{
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(room_width*0.5+global.ed_arg[1],room_height*0.5+global.ed_arg[2],t_m_x,t_m_y,3);
	}
	else if (global.editor_selected_type == 4)
	{
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(t_m_x+lengthdir_x(320,image_angle-270),t_m_y+lengthdir_y(320,image_angle-270),t_m_x,t_m_y,3);
	}
	else if (global.editor_selected_type == 7)
	{
		var tmp_val_ang = floor((global.ed_arg[5]/1200)*359)
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(t_m_x+lengthdir_x(320,tmp_val_ang),t_m_y+lengthdir_y(320,tmp_val_ang),t_m_x,t_m_y,3);
	}
	else if (global.editor_selected_type == 0 || global.editor_selected_type == 10 || global.editor_selected_type == 12 || global.editor_selected_type == 20)
	{
		var tmp_val_ang = floor(image_angle)
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(t_m_x+lengthdir_x(320,tmp_val_ang),t_m_y+lengthdir_y(320,tmp_val_ang),t_m_x,t_m_y,3);
	}
	else if (global.editor_selected_type == 15)
	{
		var tmp_val_ang = floor(global.ed_arg[1])
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(t_m_x+lengthdir_x(320,180+tmp_val_ang),t_m_y+lengthdir_y(320,180+tmp_val_ang),t_m_x,t_m_y,3);
	}
	else if (global.editor_selected_type == 16)
	{
		var tmp_ang = image_angle;
		for(var i = -global.ed_arg[3]; i <= global.ed_arg[3]; i++)
		{
			draw_sprite_ext(spr_circle_cylinder,0,x+lengthdir_x(image_xscale*160*i,image_angle),y+lengthdir_y(image_xscale*160*i,image_angle),image_xscale,image_xscale,tmp_ang,global.map_color,0.4);
		}
	
		if (global.ed_arg[6] != 1)
		{
			draw_set_color(c_white);
			draw_set_alpha(1);
			draw_line_width(t_m_x+lengthdir_x(global.ed_arg[2],tmp_ang+90),t_m_y+lengthdir_y(global.ed_arg[2],tmp_ang+90),t_m_x,t_m_y,3);
		}
	}
	else if (global.editor_selected_type == 19)
	{
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(t_m_x,t_m_y,room_width*0.5+global.ed_arg[3],room_height*0.5+global.ed_arg[4],3);
	}
	else if (global.editor_selected_type == 25)
	{
		var tmp_angle = image_angle;
		draw_set_color(c_white);
		draw_set_alpha(0.2);
		draw_line_width(t_m_x,t_m_y,t_m_x+lengthdir_x(256,tmp_angle),t_m_y+lengthdir_y(256,tmp_angle),1.5);
	
		draw_set_alpha(0.7);
		draw_line_width(t_m_x,t_m_y,t_m_x+lengthdir_x(160,tmp_angle-global.ed_arg[3]/2),t_m_y+lengthdir_y(160,tmp_angle-global.ed_arg[3]/2),3);
		draw_line_width(t_m_x,t_m_y,t_m_x+lengthdir_x(160,tmp_angle+global.ed_arg[3]/2),t_m_y+lengthdir_y(160,tmp_angle+global.ed_arg[3]/2),3);
	}
}


if (n_selected != -4 && instance_exists(n_selected))
{
	draw_text_k_scale(xx+xx_w*0.98-scroll_y*1.25,yy+200,"선택된 탄막 값 수정",64,-1,0.8,c_white,0,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0);
}



if (global.timeline_stop == 1 && scroll_y > -639)
{
	keyboard_string = string_digit_with_minus(keyboard_string);
	if (string_length(keyboard_string) > 5)
	{
		keyboard_string = string_delete(keyboard_string,6,2);
	}
	
	var activated_modifying = 0;
	for(var i = 0; i < 7; i++)
	{
		if (global.ed_arg_name[i] != "")
		{
			//보정된 값으로 출력
			var tmp_val = string(global.ed_arg[i])+string(global.ed_arg_tagname[i]);
			var tmp_string = string(tmp_val);
			
			//현재 설정값 문자열 표기
			if (i == 6)
			{
				tmp_string = (tmp_val == 1) ? "활성화됨" : "비활성화됨";
			}
			

			
			if (global.ed_arg_name[i] == "효과 방향")
			{
				if (global.ed_arg[6] == 1)
				{
					if (global.ed_arg[i] == 0)
					{
						tmp_string = "효과 해제";
					}
					else if (global.ed_arg[i] == 1)
					{
						tmp_string = "좌우로만";
					}
					else if (global.ed_arg[i] == 2)
					{
						tmp_string = "상하로만";
					}
					else
					{
						tmp_string = "좌우상하";
					}
				}
				else
				{
					if (global.ed_arg[i] == 0)
					{
						tmp_string = "효과 해제";
					}
					else if (global.ed_arg[i] == 1)
					{
						tmp_string = "중심";
					}
					else if (global.ed_arg[i] == 2)
					{
						tmp_string = "상단";
					}
					else if (global.ed_arg[i] == 3)
					{
						tmp_string = "우측";
					}
					else if (global.ed_arg[i] == 4)
					{
						tmp_string = "좌측";
					}
					else
					{
						tmp_string = "하단";
					}
				}
			}
			else if (global.ed_arg_name[i] == "설정된 효과 종류")
			{
				tmp_string = (global.ed_arg[i] == 1) ? "화면웨이브" : "블랙 아웃";
			}
			else if (global.ed_arg_name[i] == "화면 흔들림 방향")
			{
				if (global.ed_arg[i] == 0)
				{
					tmp_string = "좌우상하";
				}
				else if (global.ed_arg[i] == 1)
				{
					tmp_string = "좌우로만";
				}
				else
				{
					tmp_string = "상하로만";
				}
			}
			/////////////////////////////////////////////////////////////////////////////
			
			var tmp_alpha = 1;
			with(obj_button)
			{
				if (other.object_index != map_edior_ui && other.button_id-100 == i)
				{
					tmp_alpha = other.image_alpha;
				}
			}
		
			var tmp_xx = xx-scroll_y*1.25;
			var tmp_yy = yy+320+i*120;
			
			var tmp_xx2 = tmp_xx+xx_w*0.97;
			var tmp_yy2 = tmp_yy+28;
			draw_set_alpha(0.1);
			draw_set_color(c_white);
			draw_line_width(tmp_xx2-52,tmp_yy2,tmp_xx2+52,tmp_yy2,42);
			
			
			
			
			
			if (global.ed_arg_modifying[i] != "")
			{
				activated_modifying = 1;
				var tmp_val_cal = string_digit_with_minus(keyboard_string);
				
				//.이 있거나 -부호가 있는 경우
				if (string_char_at(tmp_val_cal,1) == "-")
				{
					modified_value = (string_digits(tmp_val_cal) == "") ? modified_value : -real(string_digits(tmp_val_cal));
				}
				else
				{
					modified_value = (tmp_val_cal == "") ? modified_value : real(tmp_val_cal);
				}
				
				global.ed_arg[i] = modified_value;
			}
			
			if (i < 6 && (mouse_check_button_released(mb_left) || keyboard_check_released(vk_enter)))
			{
				if (abs(mouse_x-tmp_xx2) <= 52 && abs(mouse_y-tmp_yy2) <= 18)
				{
					keyboard_string = "";
					modified_value = 0;
					global.ed_arg_modifying[i] = global.ed_arg[i];
				}
				else
				{
					if (global.ed_arg_modifying[i] != "")
					{
						global.ed_arg_modifying[i] = "";
						if (instance_exists(map_edior_ui) && map_edior_ui.n_selected != -4 && instance_exists(map_edior_ui.n_selected))
						{
							var tmp_id = map_edior_ui.n_selected;
							variable_instance_set(tmp_id,"m_data_arg"+string(i),global.ed_arg[i]);
							tmp_id.editor_selected = 1;
							global.revalued_projectile_save = 2;
							show_message_log("값 수정됨");
						}
					}
				}
			}
			
			draw_text_k_scale(tmp_xx+xx_w*0.948,tmp_yy,string(global.ed_arg_name[i]),64,-1,tmp_alpha,c_white,0,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0);
			draw_text_k_scale(tmp_xx+xx_w*0.97,tmp_yy,(global.ed_arg_modifying[i] != "") ? string(keyboard_string)+"|" : string(tmp_string),64,-1,tmp_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0);
		}
	}
	modifying_value = activated_modifying;
}