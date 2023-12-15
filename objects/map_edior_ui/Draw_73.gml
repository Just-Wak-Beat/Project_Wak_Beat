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
	draw_sprite_ext(spr_square,0,xx+xx_w*0.5,yy+8*global.converted_view_ratio+scroll_y*global.converted_view_ratio,99,8,0,c_white,1)
	draw_sprite_ext(spr_square,0,xx+xx_w*0.5,yy+scroll_y*global.converted_view_ratio,99,8,0,c_black,1)
	
	
	draw_text_k_scale(xx+xx_w*0.98,yy+yy_h*(0.35-global.mobile_mode*0.03),"단축키 - ",fontsize2*256,-1,1,c_white,0,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	draw_text_k_scale(xx+xx_w*0.98,yy+yy_h*(0.4-global.mobile_mode*0.03),"눈금선 위로 고정 [Shift]\n배치된 탄막 선택/수정 [마우스 가운데 휠 버튼]\n선택된 탄막 삭제 [Delete]\n에디터 창 열기/닫기 [Space / Enter]",fontsize2*256,-1,1,c_white,0,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	if (!instance_exists(obj_message_log))
	{
		draw_text_k_scale(xx+xx_w*0.05,yy+yy_h*(0.96-global.mobile_mode*0.03),"에디터 창 [Enter]",64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	}

	
	draw_text_k_scale(xx+xx_w*0.5-1024,yy+yy_h*(0.96-global.mobile_mode*0.03)-scroll_y,"[A] 1프레임 전으로  /  [Q] 60프레임 전으로",64,-1,1,c_white,-1,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	draw_text_k_scale(xx+xx_w*0.5+1024,yy+yy_h*(0.96-global.mobile_mode*0.03)-scroll_y,"60프레임 후로 [E]  /  1프레임 후로 [D]",64,-1,1,c_white,-1,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	draw_text_k_scale(xx+xx_w*0.5,yy+yy_h*(0.96-global.mobile_mode*0.03)-scroll_y,"타임라인 재생 [W] / [S] 가장 가까운 타임라인으로",64,-1,1,c_white,-1,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

	draw_text_k_scale(xx+xx_w*0.2,yy+yy_h*(0.9-global.mobile_mode*0.03)-map_edior_ui.scroll_y,"타임라인 이동 [ "+string(global.n_progress)+" / "+string(global.music_duration)+" ]",64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)


	var tmp_name = [ "이동 탄막", "스파이크 폭발 탄막", "레이저 탄막", "눈꽃 탄막", "지렁이 탄막", "화살표 레이저 탄막", "원형 폭발 탄막", "맵 밖에서 튀어나오는 탄막", "탄막색 변경" , "배경색 변경" , "미사일 탄막" , "세이브 포인트 지정", "바운스 탄막", "카메라 효과", "잡다한 화면 효과 모음", "회전하는 탄막 자동 생성기", "물 이펙트 탄막", "화면 흔들림 효과", "맵 이동 효과", "Unknown", "배치된 탄막 수정 ['마우스 가운데 휠 버튼'으로 바로 선택 가능]", "타임라인 플레이/일시정지" ];
	if (global.editor_selected_type >= 0)
	{
		draw_text_k_scale(xx+64,yy+32+scroll_y,string(tmp_name[global.editor_selected_type]),64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		if (custom_image_type != 2)
		{
			draw_text_k_scale(xx+xx_w-64,yy+32+scroll_y,"[좌/우 방향키를 눌러 탄막 이미지 변경]",64,-1,1,c_white,0,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		}
	}
	else
	{
		draw_text_k_scale(xx+64,yy+32+scroll_y,"[하단의 이미지를 클릭하여 배치할 탄막을 선택]",64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	}
}
else
{
	draw_text_k_scale(t_m_x+32,t_m_y-64,"camera zoom : "+string(global.n_camera_zoom)+"\ncamera_slow_zoom : "+string(global.camera_slow_zoom),64,-1,1,c_red,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
}



for(var i = 0; i <= 21; i++)
{
	if ((global.editor_hitbox == -1 && (i <= 18 || i > 20)) || (global.editor_hitbox == 1 && ((instance_exists(n_selected) && i == 0) || i > 20)))
	{
		var tmp_xx = xx+(128+i*160)*global.converted_view_ratio;
		var tmp_yy = yy+(160+scroll_y)*global.converted_view_ratio;
		if (mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,tmp_xx,tmp_yy) <= 64*global.converted_view_ratio)
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
		
			if (i == 21)
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
		
			if (i == 20)
			{
				global.editor_hitbox *= -1;
				show_message_log("점선으로 이루어진 원을 클릭해 탄막 선택");
			}
			
			with(code)
			{
				event_user(14);
			}
		}
	
	
		var tmp_img_ind = i+1;
		if (i == 21)
		{
			if (global.timeline_stop == 1)
			{
				tmp_img_ind = 22;
			}
			else
			{
				tmp_img_ind = 23;
			}
		}
		else if (instance_exists(n_selected) && i == 0 && global.editor_hitbox == 1)
		{
			tmp_img_ind = 21;
		}
		
		draw_sprite_ext(spr_editor_button,tmp_img_ind,tmp_xx,tmp_yy,global.converted_view_ratio,global.converted_view_ratio,0,c_white,1)
		if (global.editor_selected_type == i)
		{
			draw_sprite_ext(spr_editor_button,0,tmp_xx,tmp_yy,global.converted_view_ratio,global.converted_view_ratio,0,c_white,1)
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
				tmp_val -= 180;
			}
			else if (i == 2)
			{
				tmp_val -= 128
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
		
		var tmp_string = " ["+string(tmp_val)+"]";
		draw_text_k_scale(xx+64+scroll_y*1.25,yy+320+i*120,string(global.ed_arg_name[i])+string(tmp_string),64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0);
	}
}