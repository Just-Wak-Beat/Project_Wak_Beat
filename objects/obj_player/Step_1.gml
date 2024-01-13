/// @description Insert description here
// You can write your code in this editor



if (global.b_hp != global.hp || global.crossed_obstacle_num != global.b_crossed_obstacle_num)
{
	if (global.hp != 0)
	{
		global.rank_display_r_alpha = 1;
	}
	global.b_hp = global.hp;
	global.b_crossed_obstacle_num = global.crossed_obstacle_num;
}




if (global.minimum_rank > 0 && global.minimum_rank < global.total_damaged)
{
	global.total_damaged = global.minimum_rank;
}


//점수 계산
if (image_xscale > 0 && global.n_progress > 0 && !instance_exists(obj_stage_clear))
{
	var tco = global.crossed_obstacle_num; //지나간 장애물 갯수
	var db1 = global.dash_cross_bonus; //지나간 장애물 갯수에 대한 보너스 점수
	var db2 = global.dash_cross_bonus_maxhp; //풀피일때 지나간 장애물 갯수에 대한 보너스 점수
	var obs = global.crossed_obstacle_num; //지나간 장애물 갯수
	var tdn = global.total_death_point; //총 죽은 횟수
	var tdm = global.total_damaged; //총 데미지 받은 횟수
	global.n_score_displaying = fix_num_inside((15-tdm)*10000+tco*(100+db2*100+db1*200)-tdn*5000,100,200000);
	if (tco > 15)
	{
		global.n_score_displaying = fix_num_inside(global.n_score_displaying,100,140000)
	}
	
	global.n_rank_display = convert_score_to_rank(global.n_score_displaying,0);
}