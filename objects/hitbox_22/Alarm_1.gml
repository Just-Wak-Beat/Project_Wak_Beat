/// @description Insert description here
// You can write your code in this editor
if (global.map_editor != 1)
{
	var tmp_ins = global.in_safe_zone;
	if (!instance_exists(tmp_ins) || (instance_number(hitbox_22) > 1 && tmp_ins.w_alpha <= 10))
	{
		global.hp = 0;
		show_message_log(instance_exists(tmp_ins) ? tmp_ins.w_alpha : -4);
	}
}









