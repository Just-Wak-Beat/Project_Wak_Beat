/// @description Insert description here
// You can write your code in this editor





if (global.timeline_stop == 1)
{
	draw_sprite_ext(spr_editor_mode_hitbox,0,x,y,1+editor_selected*0.5,1+editor_selected*0.5,(editor_selected == 1) ? global.selected_animation : 0,c_white,0.5+editor_selected*0.5);
	
	if (global.editor_hitbox == 1 && editor_selected == 1)
	{
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

	
		draw_text_k_scale(x,y+64,"x : "+string(floor(x))+"\ny : "+string(floor(y))+"\ntarget opacity : "+string(ed_arg0)+"\nrain effect : "+string(tmp_str)+string(tmp_str2),64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	}
}