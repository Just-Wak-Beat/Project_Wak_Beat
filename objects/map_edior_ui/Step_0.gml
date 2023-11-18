/// @description Insert description here
// You can write your code in this editor
depth = code.depth-80;
x = mouse_x;
y = mouse_y;

scroll_y += (t_scroll_y - scroll_y)*0.1;



if (keyboard_check_pressed(vk_enter))
{
	show_message_log("(우측 상단의 '플레이 버튼'을 통해 일시정지 해제)");
	audio_play_sound(setting_scroll_sfx,0,false,global.master_volume*global.sfx_volume*32)
	activated *= -1;
	if (global.timeline_stop != 1)
	{
		global.b_n_progress = global.n_progress;
		global.timeline_stop = 1;
		instance_destroy(hitbox_parents);
		audio_stop_sound(global.n_music_id);
		global.master_remix_effect = 0
		global.t_bg_color = 0;
		global.t_bg_color_alpha = 0;
		global.background_color = c_black;
		global.map_speed = 0;
		global.map_speed_y = 0;
		global.t_map_speed = 0;
		global.t_map_speed_y = 0;
	}
}

t_scroll_y = (activated == 1) ? 0 : -640;

if (global.editor_hitbox == 1)
{
	global.selected_animation++;
}
else
{
	global.selected_animation = 0;
}

//[ "이동 탄막", "스파이크 폭발 탄막", "레이저 탄막", "눈꽃 탄막", "지렁이 탄막", "화살표 레이저 탄막", "원형 폭발 탄막"
//"맵 밖에서 튀어나오는 탄막", "탄막색 변경" , "배경색 변경" , "비 이펙트" , "세이브 포인트 지정", 
//"카메라 - 화면 크기 설정", "카메라 - 천천히 줌 인", "카메라 - 천천히 줌 아웃", "카메라 - 화면 흔들림", 
//"회전하는 탄막 자동 생성기", "Unknown", "타임라인 플레이/일시정지" ];
if (custom_image_type == 0)
{
	var tmp_spr__ = global.custom_proj_center_spr[custom_image_ind];
	if (sprite_exists(tmp_spr__))
	{
		sprite_index = tmp_spr__;
	}
}
else if (custom_image_type == 1)
{
	var tmp_spr__ = global.custom_proj_top_spr[custom_image_ind];
	if (sprite_exists(tmp_spr__))
	{
		sprite_index = tmp_spr__;
	}
}

switch(global.editor_selected_type)
{
	case 0: //이동 탄막
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[2] = floor(global.ed_arg[2]);
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
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "속력";
		global.ed_arg_name[6] = "이펙트 활성화";
	break;
	
	case 1: //스파이크 폭발 탄막
		global.ed_arg[3] = floor(global.ed_arg[3]);
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			custom_image_ind = 4;
			custom_image_type = 0;
			selected_projectile_type = 0;
		}
		image_alpha = 0.4;
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "처음 날아오는 위치\n(x축)";
		global.ed_arg_name[2] = "처음 날아오는 위치\n(y축)";
		global.ed_arg_name[3] = "n프레임 이후 활성화\n(60프레임 = 1초)";
	break;
	
	case 2: //레이저 탄막
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[2] = floor(global.ed_arg[2]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[5] = floor(global.ed_arg[5]);
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
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "활성화 이후 회전 속력";
		global.ed_arg_name[3] = "n프레임 이후 활성화\n(60프레임 = 1초)";
		global.ed_arg_name[5] = "지속시간\n(60프레임 = 1초";
	break;
	
	case 3: //눈꽃 탄막
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[5] = floor(global.ed_arg[5]);
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
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "좌우 반복 움직임 속력\n(각도에 따라 이동이 다름)";
		global.ed_arg_name[3] = "n프레임 이후 활성화\n(60프레임 = 1초)";
		global.ed_arg_name[4] = "중력";
		global.ed_arg_name[5] = "지속시간\n(60프레임 = 1초";
	break;
	
	case 4: //지렁이 탄막
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[2] = floor(global.ed_arg[2]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
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
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "속력";
		global.ed_arg_name[3] = "몸통 갯수";
		global.ed_arg_name[4] = "좌우 회전 속도";
	break;
	
	case 5: //화살표 레이저 탄막
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[2] = floor(global.ed_arg[2]);
		if (global.ed_arg[2] < 32)
		{
			global.ed_arg[2] = 32;
		}
		global.ed_arg[3] = floor(global.ed_arg[3]);
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		sprite_index = spr_arrow;
		if (selected_projectile_type == 1)
		{
			custom_image_type = 2;
			selected_projectile_type = 0;
		}
		image_angle = global.ed_arg[1]-135;
		image_alpha = 0.4;
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";	
		global.ed_arg_name[2] = "속력";
		global.ed_arg_name[3] = "n프레임 이후 생성\n(60프레임 = 1초)";
		global.ed_arg_name[6] = "이펙트 활성화";
	break;
	
	case 6: //원형 폭발 탄막
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[5] = floor(global.ed_arg[5]);
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		sprite_index = spr_circle_dot_outline;
		if (selected_projectile_type == 1)
		{
			custom_image_ind = 1;
			custom_image_type = 0;
			selected_projectile_type = 0;
		}
		image_angle = global.ed_arg[1];
		image_alpha = 1;
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[3] = "n프레임 이후 활성화\n(60프레임 = 1초)";
		global.ed_arg_name[5] = "지속시간\n(60프레임 = 1초";
	break;
	
	case 7: //맵 밖에서 튀어나오는 탄막
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[2] = floor(global.ed_arg[2]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[5] = floor(global.ed_arg[5]);
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_ind = 0;
			custom_image_type = 1;
		}
		image_angle = round(global.ed_arg[1]/90)*90;
		image_alpha = 0.4;
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "튀어나오는 각도";
		global.ed_arg_name[2] = "속력";
		global.ed_arg_name[3] = "n프레임 이후 활성화\n(60프레임 = 1초)";
		global.ed_arg_name[5] = "튀어나온 이후 이동 방향";
		global.ed_arg_name[6] = "빠른 애니메이션";
	break;
	
	case 8: //탄막색 변경
		global.ed_arg[2] = floor(global.ed_arg[2]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[4] = floor(global.ed_arg[4]);
		sprite_index = spr_circle;
		image_xscale = 0.3;
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		image_blend = make_color_rgb(global.ed_arg[2],global.ed_arg[3],global.ed_arg[4]);
		global.ed_arg_name[2] = "R";
		global.ed_arg_name[3] = "G";
		global.ed_arg_name[4] = "B";
		global.ed_arg_name[6] = "이펙트 활성화";
	break;
	
	case 9: //배경색 변경
		global.ed_arg[2] = floor(global.ed_arg[2]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[4] = floor(global.ed_arg[4]);
		sprite_index = spr_circle;
		image_xscale = 0.3;
		image_yscale = image_xscale;
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		image_blend = merge_color(c_black,make_color_rgb(global.ed_arg[2],global.ed_arg[3],global.ed_arg[4]),fix_num(global.ed_arg[5]/1200));
		global.ed_arg_name[2] = "R";
		global.ed_arg_name[3] = "G";
		global.ed_arg_name[4] = "B";
		global.ed_arg_name[5] = "배경색 투명도";
		global.ed_arg_name[6] = "이펙트 활성화";
	break;
	
	case 10: //미사일 탄막
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[2] = floor(global.ed_arg[2]);
		global.ed_arg[5] = floor(global.ed_arg[5]);
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "속력";
		global.ed_arg_name[5] = "생성된 탄막들의 지속 시간\n(60프레임 = 1초)";
		
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
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[5] = floor(global.ed_arg[5]);
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
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "속력";
		global.ed_arg_name[3] = "이미지 회전 방향";
	break;
	
	case 13: //카메라 효과
		if (abs(global.ed_arg[1]-180) <= 1)
		{
			global.ed_arg[1] = 180;
		}
		
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		global.ed_arg_name[0] = "줌 정도 설정";
		global.ed_arg_name[1] = "천천히 줌되는 비율";
		global.ed_arg_name[2] = "화면 흔들림 정도";
		global.ed_arg_name[3] = "화면 흔들림 방향";
		global.ed_arg_name[6] = "포커스 활성화\n(카메라 시점이 '카메라 효과'가 배치된 위치로 고정됨)";
	break;
	
	case 14: //잡다한 효과 모음
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_type = 2;
		}
		global.ed_arg_name[0] = "배경 투명도 변화\n(값이 클수록 빠르게 변화합니다)";
		global.ed_arg_name[2] = "비 효과";
		if (global.ed_arg[6] == 1)
		{
			global.ed_arg_name[5] = "플래시 효과 밝기 정도";
		}
		else
		{
			global.ed_arg_name[5] = "";
			with(obj_button)
			{
				if (button_id == 105)
				{
					instance_destroy();
				}
			}
		}
		global.ed_arg_name[6] = "플래시 효과 활성화"
	break;
	
	case 15: //회전하는 탄막 자동 생성기
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_ind = 0;
			custom_image_type = 0;
		}
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[5] = floor(global.ed_arg[5]);
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		image_alpha = 0.4;
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "첫 발사 탄막 각도";
		global.ed_arg_name[2] = "탄막 속력";
		global.ed_arg_name[3] = "회전 방향";
		global.ed_arg_name[4] = "탄막 생성 속도";
		global.ed_arg_name[5] = "지속 시간\n(60프레임 = 1초)";
	break;
	
	case 16: //물 이펙트
		if (selected_projectile_type == 1)
		{
			selected_projectile_type = 0;
			custom_image_ind = 0;
			custom_image_type = 1;
		}
		global.ed_arg[1] = floor(global.ed_arg[1]);
		global.ed_arg[2] = floor(global.ed_arg[2]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		image_angle = round(global.ed_arg[1]/90)*90;
		image_alpha = 0.4;
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "물방울 높이";
		global.ed_arg_name[3] = "물 파장 길이";
		global.ed_arg_name[6] = "물방울 제거";
	break;
	
	case 17: //
	break;
	
	case 18: //타임라인 플레이/일시정지
	break;
}


