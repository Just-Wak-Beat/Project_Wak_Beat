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
	var camera_zoom_num = 0, camera_shake_num = 0;
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
			var tmp_ins = create_projectile(argument1,argument2,argument3,argument4,0,0,0,0,tmp_spr___)
			tmp_ins.speed_ = argument5;
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
			tmp_ins.saved_alpha = 1;
		break;
	
		case 1: //스파이크 폭발 탄막
			var tmp_ins = create_spike_circle(room_width*0.5+argument4,room_height*0.5+argument5,argument1,argument2,argument6,0,0,argument3);
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
			var tmp_ins = create_laser(argument1,argument2,argument6,argument7,0,0,argument3,argument5)
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
			var tmp_ins = create_explo_circle(argument1,argument2,argument6,argument7,0,0,argument3,argument5,0,0,30)
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
			tmp_ins.ed_arg4 = argument7;
		break;
	
		case 4: //지렁이 탄막
			var tmp_ins = create_worm(argument1,argument2,obj_player.depth-1,argument6,tmp_spr___,argument3,(tmp_spr___ == spr_triangle) ? spr_triangle_empty : tmp_spr___,argument5,argument7,argument4);
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
			var tmp_ins = create_explo_circle(argument1,argument2,argument5,argument6,0,0,argument3,0,0,0,0)
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
	
		case 7: //맵 밖에서 튀어나오는 탄막
			var tmp_ins = create_cylinder(argument1,argument2,obj_player.depth-1,argument3,argument6,argument5,argument7,argument4,argument9);
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
			var tmp_ins = create_square_misile(argument1,argument2,0,argument6,0,0,argument3)
			tmp_ins.direction = argument4;
			tmp_ins.image_angle = argument4;
			tmp_ins.saved_speed = argument5;
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3; //크기 
			tmp_ins.m_data_arg1 = argument4; //각도
			tmp_ins.m_data_arg2 = argument5; //속도
			tmp_ins.m_data_arg3 = argument6; //삭제 타이밍
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
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
			var tmp_ins = create_bounce_ball(argument1,argument2,argument3,argument5,argument4,argument6)
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
			tmp_ins.m_data_arg7 = 0;
			tmp_ins.m_data_arg8 = argument11;
			tmp_ins.sprite_index = tmp_spr___;
		break;
	
		case 13: //카메라 효과
			with(hitbox_camera_zoom)
			{
				if (other.object_index == hitbox_camera_zoom)
				{
					if (other.m_data_arg7 == -999)
					{
						camera_shake_num++;
					}
					else
					{
						camera_zoom_num++;
					}
				}
			}
		
			if (camera_zoom_num == 0)
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
	
		case 14: //배경 투명도
			var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_vaious_effects)
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = 0;
			
			tmp_ins.ed_arg0 = (argument3-10)/10;
			tmp_ins.ed_arg5 = argument8/255;
		break;
	
		case 15: //회전하는 탄막 자동 생성기
			var tmp_ins = create_projectile_spin(argument1,argument2,tmp_spr___,argument3,argument7,argument6,0,argument5,argument7)
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
			tmp_ins.image_angle = argument4;
			tmp_ins.ed_arg1 = argument4;
			tmp_ins.ed_arg2 = argument5;
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
		
		case 17: //카메라 지진 효과
			with(hitbox_camera_zoom)
			{
				if (other.object_index == hitbox_camera_zoom)
				{
					if (other.m_data_arg7 == -999)
					{
						camera_shake_num++;
					}
					else
					{
						camera_zoom_num++;
					}
				}
			}
		
			if (camera_shake_num == 0)
			{
				var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_camera_zoom)
				tmp_ins.projectile_type = argument0;
				tmp_ins.m_data_arg0 = argument3;
				tmp_ins.m_data_arg1 = argument4;
				tmp_ins.m_data_arg2 = argument5;
				tmp_ins.m_data_arg3 = argument6;
				tmp_ins.m_data_arg4 = argument7;
				tmp_ins.m_data_arg5 = argument8;
				tmp_ins.m_data_arg6 = argument9;
				tmp_ins.m_data_arg7 = -999;
				tmp_ins.m_data_arg8 = argument11;
			}
			else
			{
				show_message_log("카메라 지진 효과는 같은 타임라인에 1개만 지정 가능합니다");
			}
		break;
	
		case 18: 
			if (instance_number(hitbox_set_map_speed) == 0)
			{
				var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_set_map_speed)
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
				show_message_log("맵 이동 효과는 같은 타임라인에 1개만 지정 가능합니다");
			}
		break;
		
		case 19: //지정 위치 이동 탄막
			var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_21)
			tmp_ins.image_angle = argument4;
			tmp_ins.image_xscale = argument3;
			tmp_ins.image_yscale = argument3;
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
		
		case 20: //이펙트 탄막
			var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_2)
			tmp_ins.image_alpha = 0.5;
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
			tmp_ins.saved_alpha = 0.5;
			tmp_ins.w_alpha = 0;
			tmp_ins.keep_spin_angle = 0;
			tmp_ins.image_xscale = argument3;
			tmp_ins.image_yscale = argument3;
			tmp_ins.sprite_index = tmp_spr___;
			tmp_ins.image_angle = argument4;
		break;
		
		case 21: //카메라 플래시 효과
			var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_vaious_effects)
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = 1;
		break;
		
		case 22: //비 효과
			var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_vaious_effects)
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = 2;
		break;
		
		case 23: //화면 효과
			var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_vaious_effects)
			tmp_ins.projectile_type = argument0;
			tmp_ins.m_data_arg0 = argument3;
			tmp_ins.m_data_arg1 = argument4;
			tmp_ins.m_data_arg2 = argument5;
			tmp_ins.m_data_arg3 = argument6;
			tmp_ins.m_data_arg4 = argument7;
			tmp_ins.m_data_arg5 = argument8;
			tmp_ins.m_data_arg6 = argument9;
			tmp_ins.m_data_arg7 = argument10;
			tmp_ins.m_data_arg8 = 3;
		break;
		
		case 24: //세이프존 탄막
			var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_22)
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
			tmp_ins.image_xscale = argument3;
			tmp_ins.image_yscale = argument3;
			tmp_ins.image_angle = argument4-45;
			tmp_ins.des_timer = argument5;
		break;
		
		case 25: //산탄형 탄막
			var tmp_ins = instance_create_depth(argument1,argument2,obj_player.depth+15,hitbox_23)
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
			tmp_ins.image_xscale = argument3;
			tmp_ins.image_yscale = argument3;
			tmp_ins.image_angle = argument4;
			tmp_ins.des_timer = argument5;
			tmp_ins.sprite_index = tmp_spr___;
		break;
	}
}