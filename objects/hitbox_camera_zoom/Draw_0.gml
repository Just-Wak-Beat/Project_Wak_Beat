/// @description Insert description here
// You can write your code in this editor




if (global.timeline_stop == 1)
{
	var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio;
	draw_text_k_scale(x,y-64,(m_data_arg7 != -999) ? "카메라 효과" : "화면 흔들림 효과",64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	draw_sprite_ext(spr_camera_zoom,0,x,y,image_xscale,image_yscale,image_angle,global.player_color,image_alpha)
}