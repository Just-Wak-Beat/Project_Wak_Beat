/// @description Insert description here
// You can write your code in this editor
timer = (global.bpm/3600)*5000
image_blend = $FFE6FFE2
color_sec = $FF4AB539
image_speed = 0
outside_timer = 0
effect_rad = 0
global.t_bg_color = -0.01
global.result_rank = global.n_rank_display;
w_alpha = 0
direction = point_direction(x,y,obj_player.x,obj_player.y)+irandom_range(-45,45)
t_speed = 0
t_angle = 0
image_xscale = 0.2
image_yscale = 0.2
touched = 0
rank_alpha = 1
once_in = 0
timer_del = 0
char_ef_alpha = 0
char_ef = 0


rings_alpha = 1
can_play_animation = 0;
play_unlock_animation = 0;

rainbow_ef_alpha = 0
rainbow_ef = 0
rainbow_ef_angle = 0
unlocked_char_index = 0


if (global.play_custom_map != 1 && global.n_map_list != 2)
{
	var tmp_val = global.real_obtainable_type[global.n_map_id];
	var tmp_artifact_type = (tmp_val >= 9) ? tmp_val-9 : tmp_val;
	if (tmp_artifact_type == 8)
	{
		global.artifact_type = irandom_range(1,6);
	}
	else
	{
		global.artifact_type = tmp_artifact_type;
	}
	image_index = (sprite_index == spr_player) ? global.artifact_type*7 : global.artifact_type;
}






if (global.n_artifact[global.n_map_id] != "완료" || global.selected_difficulty == 0 || global.play_custom_map == 1)
{
	if (global.play_custom_map == 1)
	{
		global.artifact_owned[8]++;
	}
	else
	{
		global.artifact_owned[global.artifact_type]++;
	}
	
	for(var i = 0; i <= 11; i++)
	{
		if (global.artifact_owned[i] > 999)
		{
			global.artifact_owned[i] = 999;
		}
	}
}

//파트너 해금
var player_unlocked = 0;
if (global.streamer == 0 && global.tutorial_now != 1 && global.play_custom_map != 1)
{
	for(var i = 0; i < sprite_get_number(spr_illustrationCG); i++)
	{
		var tmp_require_num = global.unlocked_player_skin_require_num[i];
		if (is_real(tmp_require_num))
		{
			if (global.unlocked_player_skin[i] < 1 && tmp_require_num <= global.artifact_owned[global.unlocked_player_skin_require_type[i]])
			{
				global.unlocked_player_skin[i] = 3;
				play_unlock_animation = 1;
				
				player_unlocked = 1;
		
				if (global.artifact_type == floor(i/4))
				{
					unlocked_char_index = i;
				}
			}
		}
		else
		{
			if (tmp_require_num == "아무 곡이나 대쉬를 사용하지 않고\nS랭크 이상으로 클리어 (튜토리얼 제외)")
			{
				if (global.unlocked_player_skin[2] < 1 && global.dashed == 0 && global.n_score_displaying >= 130000)
				{
					global.unlocked_player_skin[2] = 3;
					play_unlock_animation = 1;
					player_unlocked = 1;
					unlocked_char_index = 2;
				}
			}
			else if (tmp_require_num == "'왁굳향100% 첨가'곡을\nA+랭크 이상으로 클리어")
			{
				if (global.unlocked_player_skin[3] < 1 && global.n_score_displaying >= 120000 && global.n_music_title == "왁굳향100% 첨가")
				{
					global.unlocked_player_skin[3] = 3;
					play_unlock_animation = 1;
					player_unlocked = 1;
					unlocked_char_index = 3;
				}
			}
			else if (tmp_require_num == "'로키 ROKI'곡을\nA+랭크 이상으로 클리어")
			{
				if (global.unlocked_player_skin[11] < 1 && global.n_score_displaying >= 120000 && global.n_music_title == "로키 ROKI (Cover by 비챤 VIichan)")
				{
					global.unlocked_player_skin[11] = 3;
					play_unlock_animation = 1;
					player_unlocked = 1;
					unlocked_char_index = 11;
				}
			}
		}
	}
}



if (player_unlocked == 1 && global.guide_showed[0] == 0)
{
	show_guide("파트너 해금!");
	global.guide_showed[0] = 1;
}


spin_rad = 0
for(var i = 6; i < 32; i++)
{
	xx[i] = lengthdir_x(66,spin_rad)
	yy[i] = lengthdir_y(66,spin_rad)

	xx2[i] = lengthdir_x(82,spin_rad)
	yy2[i] = lengthdir_y(82,spin_rad)

	xx3[i] = lengthdir_x(82,spin_rad)
	yy3[i] = lengthdir_y(82,spin_rad)
}





if global.artifact_type = 1
{
	image_blend = #b879ef
	color_sec = #b79aef
}
else if global.artifact_type = 2
{
	image_blend = #aaa6a2
	color_sec = #77716a
}
else if global.artifact_type = 3
{
	image_blend = #84acdf
	color_sec = #6589b9
}
else if global.artifact_type = 4
{
	image_blend = #3b3157
	color_sec = #594a81
}
else if global.artifact_type = 5
{
	image_blend = #604055
	color_sec = #9b647b
}
else if global.artifact_type = 6
{
	image_blend = #e38e2a
	color_sec = #fe6f56
}
else if global.artifact_type = 7
{
	image_blend = #01bfa3
	color_sec = #44d2ac
}

if (global.play_custom_map == 1)
{
	global.artifact_type = 8;
	image_index = 9;
	image_blend = c_white
	color_sec = #44d2ac
}


if (instance_number(obj_stage_clear) > 1)
{
	instance_destroy();
}
