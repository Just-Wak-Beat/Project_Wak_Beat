/// @description Insert description here
// You can write your code in this editor
if (global.show_credit == 1)
{
	global.show_credit = 2
}

if (global.nickname != "")
{
	with(code)
	{
		if (object_index == code)
		{
			automaticLoadPlayerRanking(0);
		}
	}
}