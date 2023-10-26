/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var xx_w = camera_get_view_width(view_camera[0]);
var yy_h = camera_get_view_height(view_camera[0]);

if ((activated == 1 && mouse_y > yy+500 && mouse_y < yy+yy_h-200) || activated == -1)
{
	switch(global.editor_selected_type)
	{
		case 0: //이동 탄막
			var tmp_ins = create_projectile(mouse_x,mouse_y,image_xscale,(image_angle)/18,0,0,0,0,sprite_index)
			tmp_ins.speed_ = global.ed_arg[2];
			tmp_ins.image_angle = image_angle
			tmp_ins.direction = image_angle
		break;
	
		case 1: //스파이크 폭발 탄막
			var tmp_ins = create_spike_circle(mouse_x+(global.ed_arg[1]-180)*50,mouse_y+(global.ed_arg[2]-128)*50,mouse_x,mouse_y,floor(1+global.ed_arg[3]),0,0,image_xscale)
		break;
	
		case 2: //레이저 탄막
			var tmp_ins = create_laser(mouse_x,mouse_y,floor(1+global.ed_arg[3]),floor(global.ed_arg[5]),0,0,image_xscale,(global.ed_arg[2]-128)/130)
			tmp_ins.image_angle = image_angle;
		break;
	
		case 3: //눈꽃 탄막
			var tmp_ins = create_explo_circle(mouse_x,mouse_y,floor(1+global.ed_arg[3]),floor(global.ed_arg[5]),0,0,image_xscale,global.ed_arg[2],0,0,30)
			tmp_ins.gravity = global.ed_arg[4]/255;
			tmp_ins.direction = global.ed_arg[1];
			tmp_ins.image_angle = global.ed_arg[1];
		break;
	
		case 4: //지렁이 탄막
			var tmp_ins = create_worm(mouse_x,mouse_y,obj_player.depth-1,global.ed_arg[3],spr_triangle,image_xscale,spr_triangle_empty,global.ed_arg[2],global.ed_arg[4]/64,image_angle-270)
		break;
	
		case 5: //화살표 레이저 탄막
			var tmp_ins = create_arrow_laser(mouse_x,mouse_y,obj_player.depth-1,image_xscale,global.ed_arg[1],global.ed_arg[2],global.ed_arg[6],0,global.ed_arg[3])
		break;
	
		case 6: //원형 폭발 탄막
			var tmp_ins = create_explo_circle(mouse_x,mouse_y,floor(1+global.ed_arg[3]),floor(global.ed_arg[5]),0,0,image_xscale,0,0,0,0)
			tmp_ins.image_angle = global.ed_arg[1];
			tmp_ins.direction = global.ed_arg[1];
		break;
	
		case 7: //맵 밖에서 튀어나오는 탄막
			var tmp_ins = create_cylinder(mouse_x,mouse_y,obj_player.depth-1,image_xscale,floor(1+global.ed_arg[3]),global.ed_arg[2],global.ed_arg[5],floor(global.ed_arg[1]/4)*90,global.ed_arg_name[6])
		break;
	
		case 8: //탄막색 변경
			set_hitbox_color(image_blend,global.ed_arg[6],mouse_x,mouse_y)
		break;
	
		case 9: //배경색 변경
			if (global.ed_arg_name[6] == 1)
			{
				set_bg_color_with_effect(image_blend,mouse_x,mouse_y,global.ed_arg[5]);
				global.t_bg_color = global.ed_arg[5];
			}
			else
			{
				global.background_color = image_blend;
				global.t_bg_color_alpha = global.ed_arg[5];
				global.t_bg_color = global.ed_arg[5];
			}
		break;
	
		case 10: //비 이펙트
			if (global.ed_arg_name[6] == 1)
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
	
		case 15: //카메라 - 화면 흔들림
		break;
	
		case 16: //회전하는 탄막 자동 생성기
		break;
	
		case 17: //
		break;
	
		case 18: //타임라인 플레이/일시정지
		break;
	}
}

