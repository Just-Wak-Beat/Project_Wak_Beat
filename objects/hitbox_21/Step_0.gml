/// @description Insert description here
// You can write your code in this editor


x -= global.map_speed;
y += global.map_speed_y;

if (global.timeline_stop != 1)
{
	image_alpha = 1;
	if (m_data_arg5 != 0)
	{
		timer ++;
	}
	if (m_data_arg2 != 0)
	{
		x += (room_width*0.5+m_data_arg3 - x)*0.0001*(1+m_data_arg2);
		y += (room_height*0.5+m_data_arg4 - y)*0.0001*(1+m_data_arg2);
	}
	
	if (timer > m_data_arg5)
	{
		instance_destroy()
	}
}
else
{
	image_alpha = 0.35;
}


if global.low_graphics = false
{
	w_alpha += (-0.01 - w_alpha)*0.15
	circle_w_alpha += (-0.01 - circle_w_alpha)*0.1
	circle_ef_xscale -= 0.1;
}
else
{
	w_alpha = 0;
	circle_w_alpha = 0;
}




