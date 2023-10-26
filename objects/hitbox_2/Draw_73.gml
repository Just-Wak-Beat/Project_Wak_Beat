/// @description Insert description here
// You can write your code in this editor




if (global.timeline_stop == 1)
{
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_line_width(x,y,x+lengthdir_x(320,direction),y+lengthdir_y(320,direction),3);
	
	if (global.editor_hitbox == 1)
	{
		draw_sprite_ext(spr_editor_mode_hitbox,0,x,y,1+editor_selected*0.5,1+editor_selected*0.5,(editor_selected == 1) ? global.selected_animation : 0,c_white,0.5+editor_selected*0.5);
	}
}
