/// @description Insert description here
// You can write your code in this editor




if (global.timeline_stop == 1)
{
	var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio
	draw_text_k_scale(x,y-64,"잡다한 화면 효과 모음",64,-1,1,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
	
	draw_sprite_ext(spr_various_effect,0,x,y,image_xscale,image_yscale,image_angle,global.player_color,image_alpha)
	draw_sprite_ext(spr_various_effect,1,x,y,image_xscale,image_yscale,image_angle,global.player_color,image_alpha)
}