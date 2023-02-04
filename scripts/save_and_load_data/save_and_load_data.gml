// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param save/load
///@param quicksave
function save_and_load_data(argument0,argument1)
{
ini_open_protect("JWAB_Beta.ini")

	if argument0 = 0
	{
		for(var i = 0; i <= global.total_map; i++)
		{
		//인게임 정보 (맵)
		ini_write_string("n_rank",string(i),global.n_rank[i]);
		ini_write_string("n_artifact",string(i),global.n_artifact[i]);
		}
		
		for(var i = 0; i <= 7; i++)
		{
		//아티펙트 보유 갯수
		ini_write_real("artifact_owned",string(i),global.artifact_owned[i]);
		}
	
	//환경설정
	ini_write_real("master_volume","none",global.master_volume);
	ini_write_real("bgm_volume","none",global.bgm_volume);
	ini_write_real("sfx_volume","none",global.sfx_volume);
	}
	else
	{
		for(var i = 0; i <= global.total_map; i++)
		{
		//인게임 정보 (맵)
		global.n_rank[i] = ini_read_string("n_rank",string(i),"--");
		global.n_artifact[i] = ini_read_string("n_artifact",string(i),"X");
		}
		
		for(var i = 0; i <= 7; i++)
		{
		//아티펙트 보유 갯수
		global.artifact_owned[i] = ini_read_real("artifact_owned",string(i),0);
		}

		
	//환경설정
	global.master_volume = ini_read_real("master_volume","none",1);
	global.bgm_volume = ini_read_real("bgm_volume","none",0.5);
	global.sfx_volume = ini_read_real("sfx_volume","none",1);
	}

ini_close_protect()
}