global.w_alpha = 1
global.map_color = #c09fb4
clock_hitbox.automatic_angle = -2 if(global.t_selected_difficulty == 0){clock_hitbox_3.automatic_angle = -0.2}



for(var i = 1; i <= 13; i++)
{
var ins = variable_instance_get(id,"gear_hitbox"+string(i))

	if instance_exists(ins)
	{
	create_explo_circle(ins.x,ins.y,0,10,0,0,ins.image_xscale,0,0,0)
	}
}

