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
///@param spr_type
///@param spr_ind
function editor_mode_create_projectile(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10,argument11)
{
	var tmp_spr___ = -4;
	if (argument10 == 0)
	{
		tmp_spr___ = global.custom_proj_center_spr[real(argument11)];
	}
	else
	{
		tmp_spr___ = global.custom_proj_top_spr[real(argument11)];
	}
	
	if (!sprite_exists(tmp_spr___))
	{
		tmp_spr___ = global.custom_proj_top_spr[0];
	}
	
	switch(argument0)
	{
		case 0: //이동 탄막
			var tmp_ins = create_projectile(argument1,argument2,argument3,(argument4-180)/18,0,0,0,0,tmp_spr___)
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
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
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
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
			tmp_ins.sprite_index = tmp_spr___;
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
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
		break;
	
		case 3: //눈꽃 탄막
			var tmp_ins = create_explo_circle(argument1,argument2,floor(1+argument6),floor(argument8),0,0,argument3,argument5,0,0,30)
			tmp_ins.direction = argument4;
			tmp_ins.image_angle = argument4;
			tmp_ins.sprite_index = tmp_spr___;
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
			
			tmp_ins.ed_arg4 = argument7/255;
		break;
	
		case 4: //지렁이 탄막
			var tmp_ins = create_worm(argument1,argument2,obj_player.depth-1,argument6,tmp_spr___,argument3,(tmp_spr___ == spr_triangle) ? spr_triangle_empty : tmp_spr___,argument5,argument7/64,argument4-270);
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
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
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
		break;
	
		case 6: //원형 폭발 탄막
			var tmp_ins = create_explo_circle(argument1,argument2,floor(1+argument6),floor(argument8),0,0,argument3,0,0,0,0)
			tmp_ins.image_angle = argument4;
			tmp_ins.direction = argument4;
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = 0;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = 0;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
			tmp_ins.sprite_index = tmp_spr___;
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
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
			tmp_ins.sprite_index = tmp_spr___;
		break;
	
		case 8: //탄막색 변경
			if (instance_number(hitbox_hitbox_color) == 0)
			{
				var tmp_ins = instance_create_depth(argument1,argument2,depth,hitbox_hitbox_color)
				tmp_ins.projectile_type = argument0;
				tmp_ins.m_data_arg0 = argument3;
				tmp_ins.m_data_arg1 = argument4;
				tmp_ins.m_data_arg2 = argument5;
				tmp_ins.m_data_arg3 = argument6;
				tmp_ins.m_data_arg4 = argument7;
				tmp_ins.m_data_arg5 = argument8;
				tmp_ins.m_data_arg6 = argument9;
				tmp_ins.m_data_arg7 = argument10;
				tmp_ins.m_data_arg8 = argument11;
			}
			else
			{
				show_message_log("배경색 변경은 같은 타임라인에 1개만 지정 가능합니다");
			}
		break;
	
		case 9: //배경색 변경
			if (instance_number(hitbox_bg_color) == 0)
			{
				var tmp_ins = instance_create_depth(argument1,argument2,depth,hitbox_bg_color)
				tmp_ins.projectile_type = argument0;
				tmp_ins.m_data_arg0 = argument3;
				tmp_ins.m_data_arg1 = argument4;
				tmp_ins.m_data_arg2 = argument5;
				tmp_ins.m_data_arg3 = argument6;
				tmp_ins.m_data_arg4 = argument7;
				tmp_ins.m_data_arg5 = argument8;
				tmp_ins.m_data_arg6 = argument9;
				tmp_ins.m_data_arg7 = argument10;
				tmp_ins.m_data_arg8 = argument11;
			}
			else
			{
				show_message_log("배경색 변경은 같은 타임라인에 1개만 지정 가능합니다");
			}
		break;
	
		case 10: //미사일 탄막
			var tmp_ins = create_square_misile(argument1,argument2,0,argument8,0,0,argument3)
			tmp_ins.direction = argument4;
			tmp_ins.image_angle = argument4;
			tmp_ins.saved_speed = floor(argument5/255*64);
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3; //크기 
			tmp_ins.m_data_arg1 = argument4; //각도
			tmp_ins.m_data_arg2 = argument5; //속도
			tmp_ins.m_data_arg3 = argument6; 
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8; //삭제 타이밍
			tmp_ins.m_data_arg6 = argument9;
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
			tmp_ins.sprite_index = tmp_spr___;
		break;
	
		case 11: //세이브 포인트 지정
			if (global.save_point_num < 5)
			{
				if (instance_number(hitbox_savepoint) == 0)
				{
					var tmp_ins = instance_create_depth(argument1,argument2,depth,hitbox_savepoint)
					tmp_ins.projectile_type = argument0;
					tmp_ins.m_data_arg0 = global.save_point_num;
					tmp_ins.m_data_arg1 = 0;
					tmp_ins.m_data_arg2 = 0;
					tmp_ins.m_data_arg3 = 0;
					tmp_ins.m_data_arg4 = 0;
					tmp_ins.m_data_arg5 = 0;
					tmp_ins.m_data_arg6 = 0;
					tmp_ins.m_data_arg7 = 0;
					tmp_ins.m_data_arg8 = 0;
				
					if (argument4 == 1)
					{
						global.savepoint_position[global.save_point_num] = global.n_progress;
						var tmp_directory = string(global.custom_map_file_dir[global.n_map_id])+"\\map_data.ini";
						ini_open(tmp_directory);
							global.save_point_num++;
							ini_write_real("map_data","savepoint"+string(global.save_point_num-1),global.n_progress);
							ini_write_real("map_data","savepoint_num",global.save_point_num);
						ini_close();
					}
				}
				else
				{
					show_message_log("세이브 포인트는 같은 타임라인에 1개만 지정 가능합니다");
				}
			}
			else
			{
				show_message_log("세이브 포인트는 최대 6개까지만 지정 가능합니다");
			}
		break;
	
		case 12: //바운스 탄막
			var tmp_ins = create_bounce_ball(argument1,argument2,argument3,floor(argument5/4),argument4,floor((argument6-128)/255*15))
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
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
			tmp_ins.sprite_index = tmp_spr___;
		break;
	
		case 13: //카메라 효과
			if (instance_number(hitbox_camera_zoom) == 0)
			{
				var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_camera_zoom)
				tmp_ins.projectile_type = argument0;
				tmp_ins.m_data_arg0 = argument3;
				tmp_ins.m_data_arg1 = argument4;
				tmp_ins.m_data_arg2 = argument5;
				tmp_ins.m_data_arg3 = argument6;
				tmp_ins.m_data_arg4 = 0;
				tmp_ins.m_data_arg5 = 0;
				tmp_ins.m_data_arg6 = argument9;
				tmp_ins.m_data_arg7 = argument10;
				tmp_ins.m_data_arg8 = argument11;
			}
			else
			{
				show_message_log("카메라 효과는 같은 타임라인에 1개만 지정 가능합니다");
			}
		break;
	
		case 14: //잡다한 화면 효과
			if (instance_number(hitbox_vaious_effects) == 0)
			{
				var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_vaious_effects)
				tmp_ins.projectile_type = argument0;
				tmp_ins.m_data_arg0 = argument3;
				tmp_ins.m_data_arg1 = 0;
				tmp_ins.m_data_arg2 = argument5;
				tmp_ins.m_data_arg3 = 0;
				tmp_ins.m_data_arg4 = 0;
				tmp_ins.m_data_arg5 = argument8;
				tmp_ins.m_data_arg6 = argument9;
				tmp_ins.m_data_arg7 = argument10;
				tmp_ins.m_data_arg8 = argument11;
			
				tmp_ins.ed_arg0 = (argument3-10)/10;
				tmp_ins.ed_arg5 = argument8/255;
			}
			else
			{
				show_message_log("잡다한 화면 효과는 같은 타임라인에 1개만 지정 가능합니다");
			}
		break;
	
		case 15: //회전하는 탄막 자동 생성기
			var tmp_ins = create_projectile_spin(argument1,argument2,tmp_spr___,argument3,argument8,argument6,0,argument5,argument7)
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
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
			
			tmp_ins.ed_arg2 = floor((argument5)/4);
			tmp_ins.ed_arg3 = (argument6-128)/16;
			tmp_ins.ed_arg4 = fix_to_zero(floor((1-(argument7/255))*60));
			tmp_ins.ed_arg5 = 1+floor(argument8);
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
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = argument11;
			tmp_ins.sprite_index = tmp_spr___;
		break;
	
		case 17: //
		break;
	
		case 18: //타임라인 플레이/일시정지
		break;
	}
}