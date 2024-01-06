/// @description Insert description here
// You can write your code in this editor




if (global.timeline_stop == 1)
{
	draw_sprite_ext(spr_editor_mode_hitbox,0,x,y,1+editor_selected*0.5,1+editor_selected*0.5,(editor_selected == 1) ? global.selected_animation : 0,c_white,0.5+editor_selected*0.5);
	
	if (global.editor_hitbox == 1 && editor_selected == 1)
	{
		var xx = x-room_width*0.5;
		var yy = y-room_height*0.5;
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(x,y,m_data_arg3+room_width*0.5,m_data_arg4+room_height*0.5,3);
		
		var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio;
		draw_text_k_scale(x,y+64,"Size : "+string(image_xscale)+"\nx : "+string(floor(xx))+"\ny : "+string(floor(yy))+"\n이동할 x좌표 : "+string(floor(m_data_arg3))+"\n이동할 y좌표 : "+string(floor(m_data_arg4))+"\n이동 속도 : "+string(m_data_arg2)+"\n"+string(m_data_arg5)+"프레임 이후 삭제",64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	}
}
