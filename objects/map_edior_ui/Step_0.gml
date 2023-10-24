/// @description Insert description here
// You can write your code in this editor
depth = code.depth-80;
x = mouse_x;
y = mouse_y;

scroll_y += (t_scroll_y - scroll_y)*0.1;

if (keyboard_check_pressed(vk_enter))
{
	audio_play_sound(setting_scroll_sfx,0,false,global.master_volume*global.sfx_volume*32)
	activated *= -1;
}

t_scroll_y = (activated == 1) ? 0 : -640;

//[ "이동 탄막", "스파이크 폭발 탄막", "레이저 탄막", "눈꽃 탄막", "지렁이 탄막", "화살표 레이저 탄막", "원형 폭발 탄막"
//"맵 밖에서 튀어나오는 탄막", "탄막색 변경" , "배경색 변경" , "비 이펙트" , "세이브 포인트 지정", 
//"카메라 - 화면 크기 설정", "카메라 - 천천히 줌 인", "카메라 - 천천히 줌 아웃", "카메라 - 화면 흔들림", 
//"회전하는 탄막 자동 생성기", "Unknown", "타임라인 플레이/일시정지" ];

switch(global.editor_selected_type)
{
	case 0: //이동 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		sprite_index = spr_square;
		image_angle = global.ed_arg[1]-180;
		image_alpha = 0.4;
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "속력";
		global.ed_arg_name[6] = "이펙트 활성화 유무";
	break;
	
	case 1: //스파이크 폭발 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		sprite_index = spr_circle_spike;
		image_alpha = 0.4;
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "처음 날아오는 위치\n(x축)";
		global.ed_arg_name[2] = "처음 날아오는 위치\n(y축)";
		global.ed_arg_name[3] = "n프레임 이후 활성화\n(60프레임 = 1초)";
	break;
	
	case 2: //레이저 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = 999;
		sprite_index = spr_square_laser;
		image_alpha = 0.4;
		image_angle = global.ed_arg[1];
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "활성화 이후 회전 속력";
		global.ed_arg_name[3] = "n프레임 이후 활성화\n(60프레임 = 1초)";
		global.ed_arg_name[5] = "지속시간";
	break;
	
	case 3: //눈꽃 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		sprite_index = spr_snow;
		image_angle = global.ed_arg[1];
		image_alpha = 0.4;
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[5] = floor(global.ed_arg[5]);
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "좌우 반복 움직임 속력\n(각도에 따라 이동이 다름)";
		global.ed_arg_name[3] = "n프레임 이후 활성화\n(60프레임 = 1초)";
		global.ed_arg_name[4] = "중력";
		global.ed_arg_name[5] = "지속시간";
	break;
	
	case 4: //지렁이 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		sprite_index = spr_triangle;
		image_angle = global.ed_arg[1];
		image_alpha = 0.4;
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[2] = "속력";
		global.ed_arg_name[3] = "몸통 갯수";
		global.ed_arg_name[4] = "좌우 회전 속도";
	break;
	
	case 5: //화살표 레이저 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		sprite_index = spr_arrow;
		image_angle = global.ed_arg[1]-135;
		image_alpha = 0.4;
		global.ed_arg[2] = floor(global.ed_arg[2]);
		if (global.ed_arg[2] < 32)
		{
			global.ed_arg[2] = 32;
		}
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";	
		global.ed_arg_name[2] = "속력";
		global.ed_arg_name[3] = "n프레임 이후 생성\n(60프레임 = 1초)";
		global.ed_arg_name[6] = "이펙트 활성화 유무";
	break;
	
	case 6: //원형 폭발 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		sprite_index = spr_circle_dot_outline;
		image_angle = global.ed_arg[1];
		image_alpha = 1;
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[5] = floor(global.ed_arg[5]);
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "각도";
		global.ed_arg_name[3] = "n프레임 이후 활성화\n(60프레임 = 1초)";
		global.ed_arg_name[5] = "지속시간";
	break;
	
	case 7: //맵 밖에서 튀어나오는 탄막
		image_xscale = global.ed_arg[0];
		image_yscale = image_xscale;
		sprite_index = spr_spike_cylinder;
		image_angle = global.ed_arg[1];
		global.ed_arg[1] = floor(global.ed_arg[1]);

		image_alpha = 0.4;
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg_name[0] = "크기";
		global.ed_arg_name[1] = "튀어나오는 각도";
		global.ed_arg_name[2] = "속력";
		global.ed_arg_name[3] = "n프레임 이후 활성화\n(60프레임 = 1초)";
		global.ed_arg_name[5] = "튀어나온 이후 이동 방향";
		global.ed_arg_name[6] = "빠른 이동 활성화";
	break;
	
	case 8: //탄막색 변경
		sprite_index = spr_circle;
		image_xscale = 0.3;
		image_yscale = image_xscale;
		image_blend = make_color_rgb(global.ed_arg[2],global.ed_arg[3],global.ed_arg[4]);
		global.ed_arg[2] = floor(global.ed_arg[2]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[4] = floor(global.ed_arg[4]);
		global.ed_arg_name[2] = "R";
		global.ed_arg_name[3] = "G";
		global.ed_arg_name[4] = "B";
		global.ed_arg_name[6] = "이펙트 활성화 유무";
	break;
	
	case 9: //배경색 변경
		sprite_index = spr_circle;
		image_xscale = 0.3;
		image_yscale = image_xscale;
		image_blend = make_color_rgb(global.ed_arg[2],global.ed_arg[3],global.ed_arg[4]);
		global.ed_arg[2] = floor(global.ed_arg[2]);
		global.ed_arg[3] = floor(global.ed_arg[3]);
		global.ed_arg[4] = floor(global.ed_arg[4]);
		global.ed_arg_name[2] = "R";
		global.ed_arg_name[3] = "G";
		global.ed_arg_name[4] = "B";
		global.ed_arg_name[5] = "배경색 투명도";
		global.ed_arg_name[6] = "이펙트 활성화 유무";
	break;
	
	case 10: //비 이펙트
		global.ed_arg_name[6] = "이펙트 활성화 유무";
	break;
	
	case 11: //세이브 포인트 지정
	break;
	
	case 12: //카메라 - 화면 크기 설정
	break;
	
	case 13: //카메라 - 천천히 줌 인
	break;
	
	case 14: //카메라 - 천천히 줌 아웃
	break;
	
	case 15: //카메라 - 화면 흔들림
	break;
	
	case 16: //회전하는 탄막 자동 생성기
	break;
	
	case 17: //
	break;
	
	case 18: //타임라인 플레이/일시정지
	break;
}


