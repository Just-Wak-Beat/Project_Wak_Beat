// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_log(argument0)
{
	for(var i = 511; i > 0; i--)
	{
		var temp = global.server_log[i-1];
		global.server_log[i] = temp;
	}
	
	global.server_log[0] = argument0;
}