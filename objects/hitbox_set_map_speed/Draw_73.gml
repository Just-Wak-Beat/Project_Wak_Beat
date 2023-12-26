/// @description Insert description here
// You can write your code in this editor



if (global.timeline_stop == 1)
{
	draw_sprite_ext(spr_editor_mode_hitbox,0,x,y,1+editor_selected*0.5,1+editor_selected*0.5,(editor_selected == 1) ? global.selected_animation : 0,c_white,0.5+editor_selected*0.5);
	
	if (global.editor_hitbox == 1 && editor_selected == 1)
	{
		var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio;
		draw_text_k_scale(x,y+64,"x축 이동 속도 : "+string(m_data_arg0)+"\ny축 이동 속도 : "+string(m_data_arg0)+"\n부드럽게 속도 변화 : "+string((m_data_arg6 == 1) ? "활성화됨" : "비활성화됨"),64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	}
}