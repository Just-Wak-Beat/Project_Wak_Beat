/// @description Insert description here
// You can write your code in this editor




if (global.timeline_stop == 1)
{
	var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio
	draw_text_k_scale(x,y-64,"잡다한 효과 모음",64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	var tmp_str = "false"
	if (m_data_arg2 >= 128)
	{
		tmp_str = "true"
	}
	
	var tmp_str2 = "\nflash effect : "+string(ed_arg5);
	if (m_data_arg6 != 1)
	{
		tmp_str2 = "\nflash effect : false"
	}

	
	draw_text_k_scale(x,y+64,"target opacity : "+string(ed_arg0)+"\nrain effect : "+string(tmp_str)+string(tmp_str2),64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	draw_sprite_ext(spr_various_effect,0,x,y,image_xscale,image_yscale,image_angle,global.player_color,image_alpha)
	draw_sprite_ext(spr_various_effect,1,x,y,image_xscale,image_yscale,image_angle,global.player_color,image_alpha)
}