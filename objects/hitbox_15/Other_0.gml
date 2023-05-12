/// @description Insert description here
// You can write your code in this editor

if des_time == 0
{
des_time = 1
}

if my_id = 0 && des_time > 2
{
	for(var i = 1; i < body_num; i++)
	{
		var target = id_num[i];
		instance_destroy(target)
	}
	
	instance_destroy()
}