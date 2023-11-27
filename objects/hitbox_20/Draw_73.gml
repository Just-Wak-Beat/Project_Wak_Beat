/// @description Insert description here
// You can write your code in this editor




if (global.timeline_stop == 1)
{
	if (ed_arg6 != 1)
	{
		var tmp_ang = image_angle;
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(x+lengthdir_x(ed_arg2*64,tmp_ang+90),y+lengthdir_y(ed_arg2*64,tmp_ang+90),x,y,3);
	}
	
	if (global.editor_hitbox == 1)
	{
		draw_sprite_ext(spr_editor_mode_hitbox,0,x,y,1+editor_selected*0.5,1+editor_selected*0.5,(editor_selected == 1) ? global.selected_animation : 0,c_white,0.5+editor_selected*0.5);
	}
	
	var fontsize2 = (0.45*(1+global.mobile_mode*0.3))*global.converted_view_ratio;
	draw_text_k_scale(x+32,y-64,"x : "+string(floor(x))+"\ny : "+string(floor(y)),64,-1,1,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
}