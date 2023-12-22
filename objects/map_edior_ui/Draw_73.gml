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
	
	
	draw_text_k_scale(t_m_x+32,t_m_y-64,"x : "+string(t_m_x)+"\ny : "+string(t_m_y),64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	draw_sprite_ext(spr_square,0,xx+xx_w*0.5,yy+yy_h*1.01+8*global.converted_view_ratio-scroll_y*global.converted_view_ratio,99,8,0,c_white,1)
	draw_sprite_ext(spr_square,0,xx+xx_w*0.5,yy+yy_h*1.02-scroll_y*global.converted_view_ratio,99,8,0,c_black,1)
	
	
	var tmp_alpha_ = fix_to_zero(1-global.tiny_value_scrolling_now);
	if (tmp_alpha_ > 0)
	{
		draw_text_k_scale(xx+xx_w*0.02,yy+yy_h*(0.35-global.mobile_mode*0.03),"- 단축키",fontsize2*256,-1,tmp_alpha_,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		var plus_str = (custom_image_type != 2) ? "\n탄막 이미지 변경 [좌/우 방향키]" : "";
		draw_text_k_scale(xx+xx_w*0.02,yy+yy_h*(0.4-global.mobile_mode*0.03),"눈금선 위로 고정 [Shift]\n세밀한 값 조절 [Shift+스크롤 바 좌클릭]\n배치된 탄막 선택/수정 [마우스 가운데 휠 버튼]\n선택된 탄막 삭제 [Delete]\n에디터 창 열기/닫기 [Space / Enter]\n현재 타임라인 삭제 [Ctrl + Del]\n전체 타임라인 삭제 [Alt + Del]"+string(plus_str),fontsize2*256,-1,tmp_alpha_,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)


	
		draw_text_k_scale(xx+xx_w*0.5-1024,yy+yy_h*(0.01-global.mobile_mode*0.03)+scroll_y,"[A] 1프레임 전으로  /  [Q] 60프레임 전으로",64,-1,tmp_alpha_,c_white,-1,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		draw_text_k_scale(xx+xx_w*0.5+1024,yy+yy_h*(0.01-global.mobile_mode*0.03)+scroll_y,"60프레임 후로 [E]  /  1프레임 후로 [D]",64,-1,tmp_alpha_,c_white,-1,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		draw_text_k_scale(xx+xx_w*0.5,yy+yy_h*(0.01-global.mobile_mode*0.03)+scroll_y,"타임라인 재생 [W] / [S] 가장 가까운 타임라인으로",64,-1,tmp_alpha_,c_white,-1,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

		draw_text_k_scale(xx+xx_w*0.2,yy+yy_h*(0.09-global.mobile_mode*0.03)+map_edior_ui.scroll_y,"타임라인 이동 [ "+string(global.n_progress)+" / "+string(global.music_duration)+" ]",64,-1,tmp_alpha_,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	}


	var tmp_name = [ "이동 탄막 - 이동하는 탄막을 생성합니다", "스파이크 폭발 탄막 - 멀리서 날아와 폭발하는 탄막을 생성합니다", "레이저 탄막 - 레이저를 생성합니다", "눈꽃 탄막 - '겨울봄 (Winter Spring)'에 등장한 눈꽃 탄막을 생성합니다", "지렁이 탄막 - '매스터 리믹스 (Orchestral Edit)'에 등장한 지렁이 탄막을 생성합니다", "화살표 레이저 탄막 - 'Happy Gosegu Sencho!'에 등장한 화살표 방향으로 날아가는 탄막을 생성합니다", "원형 폭발 탄막 - 시간이 지난 뒤 등장하는 탄막을 생성합니다", "맵 밖에서 튀어나오는 탄막 - '고멤가요제 MASHUP (아이네 INE)'에 등장한 막대기 모양의 탄막을 생성합니다", "탄막색 변경 - 탄막색을 변경합니다" , "배경색 변경 - 배경색을 변경합니다" , "미사일 탄막 - '밤가이!!'에 등장한 날아가면서 탄막을 생성하는 탄막을 생성합니다" , "세이브 포인트 지정 - 현재 타임라인에 세이브 포인트를 지정합니다", "바운스 탄막 - 'Happy Gosegu Sencho!'에 등장한 맵 바깥에서 튕기며 폭발하는 탄막을 생성합니다", "카메라 효과 - 카메라 줌 정도를 조절합니다", "배경 투명도 변화 - 배경의 투명도를 조절합니다", "회전하는 탄막 자동 생성기 - 지속 시간 동안 계속 '이동 탄막'을 생성합니다", "물 이펙트 탄막 - '아이패드'에 등장한 물이 튀기는 듯한 모양의 탄막을 생성합니다", "카메라 지진 효과 - 카메라를 시점을 흔드는 효과를 줍니다", "맵 이동 효과 - '밤가이!!'에 등장한 맵이 이동하는 효과를 줍니다", "지정 위치 이동 탄막 - 특정 좌표로 이동하는 탄막을 생성합니다", "이펙트 탄막 - 피격판정이 없는 탄막을 생성합니다", "화면 플래시 효과 - 화면이 번쩍거리는 효과를 줍니다", "비 효과 - '매스터 리믹스 (Orchestral Edit)'에 등장한 비 내리는 효과를 줍니다", "특수 카메라 효과 - 몇몇 특수한 카메라 효과를 줍니다", "Unknown", "Unknown", "Unknown", "배치된 탄막 수정 ['마우스 가운데 휠 버튼'으로 바로 선택 가능]", "타임라인 플레이/일시정지" ];
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
		if (i <= 23 || i > 27)
		{
			var tmp_xx = xx+(96+i*120)*global.converted_view_ratio;
			var tmp_yy = yy+yy_h*0.88+(160-scroll_y)*global.converted_view_ratio;
			if (mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,tmp_xx,tmp_yy) <= 48*global.converted_view_ratio)
			{
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
			else if (instance_exists(n_selected) && i == 0 && global.editor_hitbox == 1)
			{
				tmp_img_ind = 28; //탄막이 새로 추가되면 수정해야됨
			}
		
			draw_sprite_ext(spr_editor_button,tmp_img_ind,tmp_xx,tmp_yy,global.converted_view_ratio/1.333333333,global.converted_view_ratio/1.333333333,0,c_white,1)
			if (global.editor_selected_type == i)
			{
				draw_sprite_ext(spr_editor_button,0,tmp_xx,tmp_yy,global.converted_view_ratio/1.333333333,global.converted_view_ratio/1.333333333,0,c_white,1)
			}
			//draw_text(tmp_xx+32,tmp_yy+32,i);
		}
	}

	if (global.editor_selected_type == 0)
	{
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(t_m_x+lengthdir_x(320,image_angle),t_m_y+lengthdir_y(320,image_angle),t_m_x,t_m_y,3);
	}
	else if (global.editor_selected_type == 1)
	{
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(t_m_x+(global.ed_arg[1]-180)*50,t_m_y+(global.ed_arg[2]-128)*50,t_m_x,t_m_y,3);
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
	else if (global.editor_selected_type == 10)
	{
		var tmp_val_ang = floor(image_angle)
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(t_m_x+lengthdir_x(320,tmp_val_ang),t_m_y+lengthdir_y(320,tmp_val_ang),t_m_x,t_m_y,3);
	}
	else if (global.editor_selected_type == 12)
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
			draw_line_width(t_m_x+lengthdir_x((global.ed_arg[2]/60)*64,tmp_ang+90),t_m_y+lengthdir_y((global.ed_arg[2]/60)*64,tmp_ang+90),t_m_x,t_m_y,3);
		}
	}
}


for(var i = 0; i < 7; i++)
{
	if (global.ed_arg_name[i] != "")
	{
		//보정된 값으로 출력
		var tmp_val = global.ed_arg[i];
		if (global.ed_arg_name[i] == "크기")
		{
			tmp_val = string(floor(sprite_get_width(sprite_index)*global.ed_arg[i]))+"px";
			global.ed_arg[i] = floor(sprite_get_width(sprite_index)*global.ed_arg[i])/sprite_get_width(sprite_index);
		}
		else if (global.ed_arg_name[i] == "n프레임 이후 활성화 (60fps = 1초)")
		{
			tmp_val = string(tmp_val)+"fps 후";
		}
		else if (global.ed_arg_name[i] == "지속 시간 (60fps = 1초)")
		{
			tmp_val = string(tmp_val)+"fps 후";
		}
		else if (global.ed_arg_name[i] == "생성된 탄막의 지속 시간 (60fps = 1초)")
		{
			tmp_val = string(tmp_val)+"fps 후";
		}
		
		
		if (global.editor_selected_type == 1)
		{
			if (i == 1)
			{
				tmp_val = floor((tmp_val-180)*50);
			}
			else if (i == 2)
			{
				tmp_val = floor((tmp_val-128)*50);
			}
		}
		else if (global.editor_selected_type == 2)
		{
			if (i == 2)
			{
				tmp_val = (tmp_val-128)/130;
			}
		}
		else if (global.editor_selected_type == 3)
		{
			if (i == 4)
			{
				tmp_val /= 255;
			}
		}
		else if (global.editor_selected_type == 4)
		{
			if (i == 4)
			{
				tmp_val /= 64;
			}
		}
		else if (global.editor_selected_type == 6)
		{
			if (i == 0)
			{
				tmp_val = string(floor(sprite_get_width(sprite_index)*global.ed_arg[i]*0.5))+"px";
				global.ed_arg[i] = floor(sprite_get_width(sprite_index)*global.ed_arg[i])/sprite_get_width(sprite_index);
			}
		}
		else if (global.editor_selected_type == 7)
		{
			if (i == 1)
			{
				tmp_val = round(tmp_val/90)*90;
			}
			else if (i == 5)
			{
				tmp_val = floor((tmp_val/1200)*359);
			}
		}
		else if (global.editor_selected_type == 10)
		{
			if (i == 2)
			{
				tmp_val = floor(tmp_val/255*64);
			}
		}
		else if (global.editor_selected_type == 12)
		{
			if (i == 2)
			{
				tmp_val = floor(tmp_val/4);
			}
			else if (i == 3)
			{
				tmp_val = floor((tmp_val-128)/255*15);
			}
		}
		else if (global.editor_selected_type == 13)
		{
			if (i == 0)
			{
				tmp_val = string(floor((50+tmp_val*12*0.65)))+"% 확대";
			}
			else if (i == 1)
			{
				tmp_val = "1프레임당 "+string(floor((tmp_val-180)/10)/200)+"%씩 확대";
			}
		}
		else if (global.editor_selected_type == 14)
		{
			if (i == 0)
			{
				tmp_val = (tmp_val-10)/10;
			}
			else if (i == 2)
			{
				tmp_val = (tmp_val < 128) ? "비활성화됨" : "활성화됨"
			}
			else if (i == 5)
			{
				tmp_val = (tmp_val)/255;
			}
		}
		else if (global.editor_selected_type == 15)
		{
			if (i == 2)
			{
				tmp_val = floor((tmp_val)/4);
			}
			else if (i == 3)
			{
				tmp_val = (tmp_val-128)/16;
			}
			else if (i == 4)
			{
				tmp_val = floor(fix_to_zero(((tmp_val/255)-1)*60));
			}
			else if (i == 5)
			{
				tmp_val = 1+floor(tmp_val);
			}
		}
		else if (global.editor_selected_type == 16)
		{
			if (i == 1)
			{
				tmp_val = round(tmp_val/90)*90;
			}
			else if (i == 2)
			{
				tmp_val = (tmp_val/60);
			}
		}
		else if (global.editor_selected_type == 17)
		{
			if (i == 1)
			{
				tmp_val = round(tmp_val/180);
				if (tmp_val == 0)
				{
					tmp_val = "x,y축 모두 흔들림"
				}
				else if (tmp_val == 1)
				{
					tmp_val = "x축으로만 흔들림"
				}
				else
				{
					tmp_val = "y축으로만 흔들림"
				}
			}
		}
		else if (global.editor_selected_type == 18)
		{
			if (i == 0)
			{
				tmp_val = floor((tmp_val*6-300));
			}
			else if (i == 1)
			{
				tmp_val = (tmp_val-180);
			}
		}
		else if (global.editor_selected_type == 19)
		{
			if (i == 3 || i == 4)
			{
				tmp_val = floor((tmp_val-128)*50);
			}
		}
		else if (global.editor_selected_type == 21)
		{
			if (i == 0)
			{
				tmp_val = round((tmp_val*12/100));
			}
		}
		else if (global.editor_selected_type == 22)
		{
			if (i == 6)
			{
				tmp_val = (tmp_val == 1) ? "활성화됨" : "비활성화됨";
			}
		}
		else if (global.editor_selected_type == 23)
		{
			if (i == 6)
			{
				tmp_val = (tmp_val == 1) ? "화면 흔들림 효과" : "블랙아웃 효과";
			}
			else if (i == 0)
			{
				if (global.ed_arg[6] == 1)
				{
					var tmp_val1 = round(tmp_val*12/100*3);
					tmp_val = "x축으로만 흔들림";
					if (tmp_val1 == 1)
					{
						tmp_val = "y축으로만 흔들림";
					}
					else if (tmp_val1 == 2)
					{
						tmp_val = "x,y축 모두 흔들림";
					}
				}
				else
				{
					var tmp_val1 = round(tmp_val*12/100*4);
					var tmp_val = "원형";
					if (tmp_val1 == 1)
					{
						tmp_val = "상단";
					}
					else if (tmp_val1 == 2)
					{
						tmp_val = "우측";
					}
					else if (tmp_val1 == 3)
					{
						tmp_val = "하단";
					}
					else if (tmp_val1 == 4)
					{
						tmp_val = "좌측";
					}
				}
			}
		}
		
		
		
		
		
		var tmp_string = " ["+string(tmp_val)+"]";
		var tmp_alpha = 1;
		with(obj_button)
		{
			if (other.object_index != map_edior_ui && other.button_id-100 == i)
			{
				tmp_alpha = other.image_alpha;
			}
		}
		

		draw_text_k_scale(xx+xx_w*0.98-scroll_y*1.25,yy+320+i*120,string(global.ed_arg_name[i])+string(tmp_string),64,-1,tmp_alpha,c_white,0,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0);
	}
}