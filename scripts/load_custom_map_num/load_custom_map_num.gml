// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_custom_map_num()
{
var total_num = 0, i = 0;
	while(true)
	{
	i++
		if file_exists("custom_map_file_"+string(i)+".JWABMAP") //파일 이름은 1번부터 시작
		{
		total_num ++
		}
		else
		{
		break;
		}
	}
	
return total_num;
}