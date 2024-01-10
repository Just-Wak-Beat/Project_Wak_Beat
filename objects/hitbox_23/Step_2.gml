/// @description Insert description here
// You can write your code in this editor

if (global.timeline_stop != 1 && m_data_arg4 != 0)
{
	//크기 / 앵글 / 속도 / 범위 / 탄막 갯수
	var radius = m_data_arg3;
	for(var i = 0; i <= radius; i += radius/m_data_arg4)
	{
		create_projectile(x,y,image_xscale,sign_nonzero(image_angle),lengthdir_y(m_data_arg2,image_angle+i-radius*0.5),lengthdir_x(m_data_arg2,image_angle+i-radius*0.5),0,0,sprite_index);
		if (radius == 0)
		{
			break;
		}
	}
	instance_destroy();
}