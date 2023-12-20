/// @description Insert description here
// You can write your code in this editor





if (global.timeline_stop == 1)
{
	var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio;
	draw_sprite_ext(spr_editor_mode_hitbox,0,x,y,1+editor_selected*0.5,1+editor_selected*0.5,(editor_selected == 1) ? global.selected_animation : 0,c_white,0.5+editor_selected*0.5);
	
	if (global.editor_hitbox == 1 && editor_selected == 1)
	{
		var str_tmp = "";
		if (m_data_arg4 == 0)
		{
			str_tmp = "배경 투명도 변화 : "+string(ed_arg0);
		}
		else if (m_data_arg4 == 1)
		{
			str_tmp = "플래시 밝기 : "+string(round((m_data_arg0*12/100)));
		}
		else if (m_data_arg4 == 2)
		{
			str_tmp = "비 효과 : "+string((m_data_arg5 == 1) ? "활성화됨" : "비활성화됨");
		}
		else if (m_data_arg4 == 3)
		{
			if (m_data_arg5 == 1)
			{
				var tmp_val = round((m_data_arg0*12/100)*3);
				var str_tmp2 = "효과 없에기";
				if (tmp_val == 1)
				{
					str_tmp2 = "x,y축 모두 흔들림";
				}
				else if (tmp_val == 2)
				{
					str_tmp2 = "y축으로만 흔들림";
				}
				else if (tmp_val == 3)
				{
					str_tmp2 = "x,y축 모두 흔들림";
				}
				str_tmp = "화면 흔들림 효과 : "+string(str_tmp2);
			}
			else
			{
				var tmp_val = round((m_data_arg0*12/100)*5);
				var str_tmp2 = "효과 없에기";
				if (tmp_val == 1)
				{
					str_tmp2 = "원형";
				}
				else if (tmp_val == 2)
				{
					str_tmp2 = "상단";
				}
				else if (tmp_val == 3)
				{
					str_tmp2 = "우측";
				}
				else if (tmp_val == 4)
				{
					str_tmp2 = "하단";
				}
				else if (tmp_val == 5)
				{
					str_tmp2 = "좌측";
				}
				str_tmp = "블랙아웃 효과 : "+string(str_tmp2);
			}
		}

	
		draw_text_k_scale(x,y+64,string(str_tmp),64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	}
}