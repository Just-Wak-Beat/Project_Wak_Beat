while(true)
{
	var random_xx = irandom_range(0,27)*132;
	var random_yy = irandom_range(0,15)*132;
	
	if ((abs(random_xx-1848) > 660 || abs(random_yy-1056) >= 660) && instance_position(random_xx,random_yy,hitbox_9) == noone)
	{
		create_explo_square(global.c_x+random_xx,global.c_y+random_yy,60,8888,0,0,2);
		break;
	}
}

master_bpm_timer = (3600/global.bpm)+global.music_sync_offset*3*60
global.yuha_effect1 = 2
global.w_alpha = 10
global.map_color = #5595ff