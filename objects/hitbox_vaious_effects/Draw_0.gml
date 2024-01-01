/// @description Insert description here
// You can write your code in this editor




if (global.timeline_stop == 1)
{
	var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio;
	var text_tmp = [ "배경 투명도 변화", "화면 플래시 효과", "비 효과", "특수 카메라 효과 - "+string((m_data_arg6 == 1) ? "카메라 흔들림" : "블랙아웃") ];
	draw_text_k_scale(x,y-64,text_tmp[m_data_arg8],64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	draw_sprite_ext(spr_various_effect,m_data_arg8,x,y,image_xscale,image_yscale,image_angle,global.player_color,image_alpha)
}

