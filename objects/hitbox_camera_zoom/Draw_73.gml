/// @description Insert description here
// You can write your code in this editor





if (global.timeline_stop == 1)
{
	draw_sprite_ext(spr_editor_mode_hitbox,0,x,y,1+editor_selected*0.5,1+editor_selected*0.5,(editor_selected == 1) ? global.selected_animation : 0,c_white,0.5+editor_selected*0.5);
	
	if (global.editor_hitbox == 1 && editor_selected == 1)
	{
		var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio;
		
		if (m_data_arg7 != -999)
		{
			var tmp_str2 = "비활성화됨"
			if (m_data_arg6 == 1)
			{
				tmp_str2 = "활성화됨"
			}
		
			draw_text_k_scale(x,y+64,"x : "+string(floor(x))+"\ny : "+string(floor(y))+"\n카메라 줌 : "+string(m_data_arg0)+"\n1프레임당 "+string(m_data_arg1)+"씩 확대\n카메라 포커스 : "+string(tmp_str2),64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		}
		else
		{
			var tmp_str = "\n화면 흔들림 방향 : x,y축"
			if (m_data_arg1 == 1)
			{
				tmp_str = "\n화면 흔들림 방향 : x축"
			}
			else if (m_data_arg1 == 2)
			{
				tmp_str = "\n화면 흔들림 방향 : y축"
			}
			
			draw_text_k_scale(x,y+64,"화면 흔들림 정도 : "+string(m_data_arg0)+string(tmp_str),64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
		}
	}
}