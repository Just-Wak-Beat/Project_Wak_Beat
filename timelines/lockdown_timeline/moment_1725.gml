master_bpm_timer = (3600/global.bpm)+global.music_sync_offset*2*60;
global.lockdown_effect4 = 1;
//for(var i = -60; i <= 60; i += 60)
//{
//	var tmp_angle = pipe_ef.direction+60+i;
//	var laser_tmp = create_laser(spike_ef.x,spike_ef.y,9999,9999,1,2,2.5,tmp_angle-90);
//	laser_tmp.auto_angle = pipe_ef;
//	laser_tmp.auto_angle_plusment = i;
//	laser_tmp.alarm[2] = 1;
//}