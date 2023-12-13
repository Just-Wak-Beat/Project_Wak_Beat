/// @description Insert description here
// You can write your code in this editor




if (global.timeline_stop == 1)
{
	var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio
	draw_text_k_scale(x,y-64,"카메라 효과",64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	var tmp_str = "x,y축"
	if (floor((m_data_arg3)/255*2) == 1)
	{
		tmp_str = "x축"
	}
	else if (floor((m_data_arg3)/255*2) == 2)
	{
		tmp_str = "y축"
	}
	
	var tmp_str2 = "false"
	if (m_data_arg4 == 1)
	{
		tmp_str2 = "true"
	}

	
	draw_text_k_scale(x,y+64,"zoom : "+string(0.5+m_data_arg0/20)+"\nslowly zoom : "+string(abs(abs((m_data_arg1-180)/1000) - 1)*sign(m_data_arg1-180))+"\nview shake : "+string(floor((m_data_arg2)/255*25))+"\nshake dir : "+string(tmp_str)+"\nfocus : "+string(tmp_str2),64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	draw_sprite_ext(spr_camera_zoom,0,x,y,image_xscale,image_yscale,image_angle,global.player_color,image_alpha)
}