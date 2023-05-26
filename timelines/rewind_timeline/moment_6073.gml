for(var i = 1; i <= 13; i++)
{
var ins = variable_instance_get(id,"gear_hitbox"+string(i))
ins.w_alpha = 1
	if i%2 = 0
	{
	ins.t_angle += 90
	}
	else
	{
	ins.t_angle -= 90
	}
}



clock_hitbox.w_alpha = 1
view_shake(0.1,3,0,0)