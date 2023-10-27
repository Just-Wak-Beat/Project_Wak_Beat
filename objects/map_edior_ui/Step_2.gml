/// @description Insert description here
// You can write your code in this editor




if (instance_number(obj_button) <= 1)
{
	for(var i = 0; i < 7; i++)
	{
		if (global.ed_arg_name[i] != "")
		{
			var buttom_ui = instance_create_depth(0,0,depth,obj_button);
			buttom_ui.button_id = 100+i;
			buttom_ui.sprite_index = (i == 6) ? spr_spuare_outline_full_mask : spr_square;
		}
	}
}




if (global.timeline_stop == 1 && (global.b_n_progress != floor(global.n_progress)))
{
	instance_destroy(hitbox_parents);
	global.b_n_progress = floor(global.n_progress);
	with(code)
	{
		event_user(11);
	}
}