// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param val
///@param x
///@param y
///@param param0
///@param param1
///@param param2
///@param param3
///@param param4
///@param param5
///@param param6
function editor_mode_create_projectile(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9)
{
	switch(argument0)
	{
		case 0: //이동 탄막
			var tmp_ins = create_projectile(argument1,argument2,argument3,(argument4-180)/18,0,0,0,0,spr_square)
			tmp_ins.speed_ = argument5;
			tmp_ins.image_angle = argument4-180;
			tmp_ins.direction = argument4-180;
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
		break;
	
		case 1: //스파이크 폭발 탄막
			var tmp_ins = create_spike_circle(argument1+(argument4-180)*50,argument2+(argument5-128)*50,argument1,argument2,floor(1+argument6),0,0,argument3);
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
		break;
	
		case 2: //레이저 탄막
			var tmp_ins = create_laser(argument1,argument2,floor(1+argument6),floor(argument8),0,0,argument3,(argument5-128)/130)
			tmp_ins.image_angle = argument4;
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
		break;
	
		case 3: //눈꽃 탄막
			var tmp_ins = create_explo_circle(argument1,argument2,floor(1+argument6),floor(argument8),0,0,argument3,argument5,0,0,30)
			tmp_ins.gravity = argument7/255;
			tmp_ins.direction = argument4;
			tmp_ins.image_angle = argument4;
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
		break;
	
		case 4: //지렁이 탄막
			var tmp_ins = create_worm(argument1,argument2,obj_player.depth-1,argument6,spr_triangle,argument3,spr_triangle_empty,argument5,argument7/64,argument4-270);
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
		break;
	
		case 5: //화살표 레이저 탄막
			var tmp_ins = create_arrow_laser(argument1,argument2,obj_player.depth-1,argument3,argument4,argument5,argument9,0,argument6);
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
		break;
	
		case 6: //원형 폭발 탄막
			var tmp_ins = create_explo_circle(argument1,argument2,floor(1+argument6),floor(argument8),0,0,argument3,0,0,0,0)
			tmp_ins.image_angle = argument4;
			tmp_ins.direction = argument4;
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
		break;
	
		case 7: //맵 밖에서 튀어나오는 탄막
			var tmp_ins = create_cylinder(argument1,argument2,obj_player.depth-1,argument3,floor(1+argument6),argument5,floor((argument8/1200)*359),round(argument4/90)*90,argument9);
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
		break;
	
		case 8: //탄막색 변경
			set_hitbox_color(make_color_rgb(argument5,argument6,argument7),argument9,argument1,argument2)
		break;
	
		case 9: //배경색 변경
			var tmp_color = merge_color(c_black,make_color_rgb(argument5,argument6,argument7),fix_num(argument8/1200));
			if (argument9 == 1)
			{
				set_bg_color_with_effect(tmp_color,argument1,argument2,argument8);
				global.t_bg_color = argument8;
			}
			else
			{
				global.background_color = tmp_color;
				global.t_bg_color_alpha = argument8;
				global.t_bg_color = argument8;
			}
		break;
	
		case 10: //비 이펙트
			if (argument9 == 1)
			{
				global.master_remix_effect = 1;
			}
			else
			{
				global.master_remix_effect = 0;
			}
		break;
	
		case 11: //세이브 포인트 지정
		break;
	
		case 12: //카메라 - 화면 크기 설정
		break;
	
		case 13: //카메라 - 천천히 줌 인
		break;
	
		case 14: //카메라 - 천천히 줌 아웃
		break;
	
		case 15: //회전하는 탄막 자동 생성기
		break;
	
		case 16: //물 이펙트
			var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_20)
			tmp_ins.image_angle = round(argument4/90)*90;
			tmp_ins.ed_arg1 = argument4;
			tmp_ins.ed_arg2 = (argument5/60);
			tmp_ins.ed_arg3 = argument6;
			tmp_ins.ed_arg6 = argument9;
			tmp_ins.image_xscale = argument3;
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
		break;
	
		case 17: //
		break;
	
		case 18: //타임라인 플레이/일시정지
		break;
	}
}