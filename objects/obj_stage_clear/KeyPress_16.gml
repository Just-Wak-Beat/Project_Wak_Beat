/// @description Insert description here
// You can write your code in this editor
if global.dev_mode = 1
{
	global.artifact_type ++
	if global.artifact_type > 7
	{
		global.artifact_type = 0
	}
}