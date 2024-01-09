/// @description Insert description here
// You can write your code in this editor
depth = code.depth-80;

t_m_x = mouse_x;
t_m_y = mouse_y;
if (global.tiny_value_scrolling_now < 0.1 && keyboard_check(vk_shift))
{
	t_m_x = room_width*0.5+96*round((mouse_x - room_width*0.5)/96);
	t_m_y = room_height*0.5+96*round((mouse_y - room_height*0.5)/96);
}
x = t_m_x;
y = t_m_y;

scroll_y += (t_scroll_y - scroll_y)*0.1;


if (modifying_value != 1)
{
	if (global.show_music_title >= 200 || global.show_music_title <= 0)
	{
		if (keyboard_check_pressed(vk_enter) || (global.timeline_stop == 1 && keyboard_check_pressed(vk_space)))
		{
			show_message_log("(우측 상단의 '플레이 버튼'을 통해 일시정지 해제)");
			audio_play_sound(setting_scroll_sfx,0,false,global.master_volume*global.sfx_volume*32)
			activated *= -1;
			if (global.timeline_stop != 1)
			{
				global.b_n_progress = global.n_progress;
				global.timeline_stop = 1;
				camera_focus_on(-4,-4,1)
				instance_destroy(hitbox_parents);
				instance_destroy(effect_parents);
				instance_destroy(changing_hitbox_color);
				instance_destroy(changing_bg_color);
				audio_stop_sound(global.n_music_id);
			}
		}
	}
}

t_scroll_y = (activated == 1) ? 0 : -640;

if (global.editor_hitbox == 1)
{
	global.editor_selected_type = -4;
	global.selected_animation++;
	custom_image_type = 2;
}
else
{
	if (global.timeline_stop == 1)
	{
		global.selected_animation = 0;
		if (custom_image_type == 0)
		{
			if (keyboard_check_pressed(vk_left))
			{
				custom_image_ind --;
				if (custom_image_ind < 0)
				{
					custom_image_ind = 99;
					while(global.custom_proj_center_spr[custom_image_ind] == -4)
					{
						custom_image_ind--;
					}
				}
			}
			else if (keyboard_check_pressed(vk_right))
			{
				custom_image_ind ++;
				if (global.custom_proj_center_spr[custom_image_ind] == -4)
				{
					custom_image_ind = 0;
				}
			}
		}
		else if (custom_image_type == 1)
		{
			if (keyboard_check_pressed(vk_left))
			{
				custom_image_ind --;
				if (custom_image_ind < 0)
				{
					custom_image_ind = 99;
					while(global.custom_proj_top_spr[custom_image_ind] == -4)
					{
						custom_image_ind--;
					}
				}
			}
			else if (keyboard_check_pressed(vk_right))
			{
				custom_image_ind ++;
				if (global.custom_proj_top_spr[custom_image_ind] == -4)
				{
					custom_image_ind = 0;
				}
			}
		}
	}
}


if (custom_image_type == 0)
{
	var tmp_spr__ = global.custom_proj_center_spr[custom_image_ind];
	if (sprite_exists(tmp_spr__) && sprite_index != tmp_spr__)
	{
		show_message_log("이미지 변경 중 - "+string(custom_image_ind));
		sprite_index = tmp_spr__;
		with(code)
		{
			event_user(14);
		}
	}
}
else if (custom_image_type == 1)
{
	var tmp_spr__ = global.custom_proj_top_spr[custom_image_ind];
	if (sprite_exists(tmp_spr__) && sprite_index != tmp_spr__)
	{
		show_message_log("이미지 변경 중 - "+string(custom_image_ind));
		sprite_index = tmp_spr__;
		with(code)
		{
			event_user(14);
		}
	}
}
else if (custom_image_type == 2)
{
	image_xscale = 1;
	image_yscale = 1;
	sprite_index = spr_bg_color;
	image_index = 1;
}





switch(global.editor_selected_type)
{
	case 0: //이동 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			custom_image_ind = 0;
			custom_image_type = 0;
			selected_projectile_type = 0;
		}
		image_angle = global.ed_arg[1];
		image_alpha = 0.4;
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,0,"deg");
		scroll_param_set(2,"지속시간 (60fps = 1초, 0fps = 무한 지속)",0,3600,2,0,"fps");
		scroll_param_set(6,"이펙트 활성화",-1,1,2,0,"");
	break;
	
	case 1: //스파이크 폭발 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			custom_image_ind = 4;
			custom_image_type = 0;
			selected_projectile_type = 0;
		}
		image_alpha = 0.4;
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"처음 날아오는 위치 (x축)",-2048,2048,2,0,"");
		scroll_param_set(2,"처음 날아오는 위치 (y축)",-1920,1920,2,0,"");
		scroll_param_set(3,"n프레임 이후 활성화 (60fps = 1초)",1,3600,2,0,"fps");
	break;
	
	case 2: //레이저 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = 999;
		sprite_index = spr_square_laser;
		if (selected_projectile_type == 1)
		{
			custom_image_type = 2;
			selected_projectile_type = 0;
		}
		image_alpha = 0.4;
		image_angle = global.ed_arg[1];
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,0,"deg");
		scroll_param_set(2,"활성화 이후 회전 속력",-99,99,0,100,"");
		scroll_param_set(3,"n프레임 이후 활성화 (60fps = 1초)",1,3600,2,0,"fps");
		scroll_param_set(4,"지속시간 (60프레임 = 1초)",1,3600,2,0,"fps");
	break;
	
	case 3: //눈꽃 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			custom_image_ind = 9;
			custom_image_type = 0;
			selected_projectile_type = 0;
		}
		image_angle = global.ed_arg[1];
		image_alpha = 0.4;
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,0,"deg");
		scroll_param_set(2,"좌우 반복 움직임 속력 (각도에 따라 이동이 다름)",0,5,2,0,"");
		scroll_param_set(3,"n프레임 이후 활성화 (60fps = 1초)",1,3600,2,0,"fps");
		scroll_param_set(4,"중력",1,100,2,100,"");
		scroll_param_set(5,"지속시간 (60프레임 = 1초)",1,3600,2,0,"fps");
	break;
	
	case 4: //지렁이 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			custom_image_ind = 6;
			custom_image_type = 0;
			selected_projectile_type = 0;
		}
		image_angle = global.ed_arg[1];
		image_alpha = 0.4;
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,0,"deg");
		scroll_param_set(2,"속력",0,360,2,0,"");
		scroll_param_set(3,"몸통 갯수",0,64,2,0,"");
		scroll_param_set(4,"좌우 회전 속도",-5,5,2,0,"");
	break;
	
	case 5: //화살표 레이저 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		sprite_index = spr_arrow;
		if (selected_projectile_type == 1)
		{
			custom_image_type = 2;
			selected_projectile_type = 0;
		}
		image_angle = global.ed_arg[1];
		image_alpha = 0.4;
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,0,"deg");
		scroll_param_set(2,"속력",24,360,2,0,"");
		scroll_param_set(3,"n프레임 이후 활성화 (60fps = 1초)",0,3600,2,0,"fps");
		scroll_param_set(6,"이펙트 활성화",-1,1,2,0,"");
	break;
	
	case 6: //원형 폭발 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			custom_image_ind = 1;
			custom_image_type = 0;
			selected_projectile_type = 0;
		}
		image_angle = global.ed_arg[1];
		image_alpha = 0.4;
		
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,0,"deg");
		scroll_param_set(2,"n프레임 이후 활성화 (60fps = 1초)",0,3600,2,0,"fps");
		scroll_param_set(3,"지속시간 (60프레임 = 1초)",1,3600,2,0,"fps");
	break;
	
	case 7: //맵 밖에서 튀어나오는 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_ind = 0;
			custom_image_type = 1;
		}
		image_angle = global.ed_arg[1];
		image_alpha = 0.4;
		
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"튀어나오는 각도",0,359,2,90,"deg");
		scroll_param_set(2,"속력",24,360,2,0,"");
		scroll_param_set(3,"n프레임 이후 활성화 (60fps = 1초)",1,3600,2,0,"fps");
		scroll_param_set(4,"튀어나온 이후 이동 방향",0,359,2,0,"deg");
		scroll_param_set(6,"빠른 애니메이션",-1,1,2,0,"");
	break;
	
	case 8: //탄막색 변경
		sprite_index = spr_circle;
		image_xscale = 0.06;
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		image_blend = make_color_rgb(global.ed_arg[0],global.ed_arg[1],global.ed_arg[2]);
		scroll_param_set(0,"R",0,255,2,0,"");
		scroll_param_set(1,"G",0,255,2,0,"");
		scroll_param_set(2,"B",0,255,2,0,"");
		scroll_param_set(6,"이펙트 활성화",-1,1,2,0,"");
	break;
	
	case 9: //배경색 변경
		sprite_index = spr_circle;
		image_xscale = 0.06;
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		image_blend = merge_color_new(c_black,make_color_rgb(global.ed_arg[0],global.ed_arg[1],global.ed_arg[2]),fix_num(global.ed_arg[3]));
		scroll_param_set(0,"R",0,255,2,0,"");
		scroll_param_set(1,"G",0,255,2,0,"");
		scroll_param_set(2,"B",0,255,2,0,"");
		scroll_param_set(3,"배경색 투명도",0,100,2,100,"");
		scroll_param_set(6,"이펙트 활성화",-1,1,2,0,"");
	break;
	
	case 10: //미사일 탄막
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,90,"deg");
		scroll_param_set(2,"속력",24,640,2,0,"");
		scroll_param_set(3,"생성된 탄막의 지속 시간 (60fps = 1초)",1,3600,2,0,"fps");
		
		image_angle = global.ed_arg[1];
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_ind = 0;
			custom_image_type = 0;
		}
		image_alpha = 0.4;
	break;
	
	case 11: //세이브 포인트 지정
	break;
	
	case 12: //바운스 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_ind = 13;
			custom_image_type = 0;
		}
		image_angle = global.ed_arg[1];
		image_alpha = 0.4;
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,90,"deg");
		scroll_param_set(2,"속력",24,640,2,0,"");
		scroll_param_set(3,"이미지 회전 방향",-50,50,2,10,"");
	break;
	
	case 13: //카메라 효과
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		
		scroll_param_set(0,"줌 정도 설정",55,115,2,100,"");
		scroll_param_set(1,"프레임당 천천히 줌되는 비율 (값이 클수록 빠르게 변화합니다)",-20,20,2,10,"");
		scroll_param_set(6,"포커스 활성화 (카메라 시점이 '카메라 효과'가 배치된 위치로 고정됨)",-1,1,2,0,"");
	break;
	
	case 14: //배경 투명도 변화
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		scroll_param_set(0,"배경 투명도 변화 (값이 클수록 빠르게 변화합니다)",-50,50,2,0,"");
	break;
	
	case 15: //회전하는 탄막 자동 생성기
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_ind = 0;
			custom_image_type = 0;
		}
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		image_alpha = 0.4;
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"첫 발사 탄막 각도",0,359,2,0,"deg");
		scroll_param_set(2,"속력",24,640,2,0,"");
		scroll_param_set(3,"회전 방향",-50,50,2,10,"deg");
		scroll_param_set(4,"프레임당 탄막 생성 속도",1,720,2,0,"fps");
		scroll_param_set(5,"지속 시간 (60fps = 1초)",1,3600,2,0,"");
	break;
	
	case 16: //물 이펙트
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_ind = 0;
			custom_image_type = 1;
		}
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		image_angle = global.ed_arg[1];
		image_alpha = 0.4;
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,90,"deg");
		scroll_param_set(2,"물방울 높이",0,64,2,0,"");
		scroll_param_set(3,"물 파장 길이",0,64,2,0,"");
		scroll_param_set(6,"물방울 제거",-1,1,2,0,"");
	break;
	
	case 17: //흔들림 효과
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}

		scroll_param_set(0,"화면 흔들림 정도",1,64,2,0,"");
		scroll_param_set(1,"화면 흔들림 방향",0,2,2,0,"");
	break;
	
	case 18: //맵 이동 속도 조절
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}

		scroll_param_set(0,"x축 속도",-64,64,2,0,"");
		scroll_param_set(1,"y축 속도",-64,64,2,0,"");
		scroll_param_set(6,"부드럽게 속도 변화",-1,1,2,0,"");
	break;
	
	case 19: //지정 위치 이동 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			custom_image_ind = 0;
			custom_image_type = 0;
			selected_projectile_type = 0;
		}
		image_angle = global.ed_arg[1]-180;
		image_alpha = 0.4;
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,0,"deg");
		scroll_param_set(2,"이동 속력",0,1280,2,0,"");
		scroll_param_set(3,"이동할 위치 (x축)",-2048,2048,2,0,"");
		scroll_param_set(4,"이동할 위치 (y축)",-1920,1920,2,0,"");
		scroll_param_set(5,"지속 시간 (60fps = 1초, 0fps = 무한 지속)",0,3600,2,0,"");
	break;
	
	case 20: //이펙트 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			custom_image_ind = 0;
			custom_image_type = 0;
			selected_projectile_type = 0;
		}
		image_angle = global.ed_arg[1];
		image_alpha = 0.5;
		image_blend = #7da7d9;
		scroll_param_set(0,"크기",1,1024,2,100,"");
		scroll_param_set(1,"각도",0,359,2,0,"deg");
		scroll_param_set(2,"이동 속력",0,1280,2,0,"");
		scroll_param_set(3,"지속 시간 (60fps = 1초, 0fps = 무한 지속)",0,3600,2,0,"");
	break;
	
	case 21: //화면 플래시 효과
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		image_alpha = 1;
		scroll_param_set(0,"플래시 밝기",1,100,2,100,"");
	break;
	
	case 22: //비효과
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		image_alpha = 1;
		scroll_param_set(6,"비 이펙트",-1,1,2,0,"");
	break;
	
	case 23: //특수 카메라 효과
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		image_alpha = 1;
		scroll_param_set(0,"효과 방향",0,(global.ed_arg[6] == 1) ? 3 : 5,2,0,"");
		scroll_param_set(6,"설정된 효과 종류",-1,1,2,0,"");
	break;
}


