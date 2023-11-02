/// @description Insert description here
// You can write your code in this editor



if (can_draw == 1)
{
	if (global.timeline_stop == 1)
	{
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_line_width(xstart,ystart,x,y,3);
	
		if (global.editor_hitbox == 1)
		{
			draw_sprite_ext(spr_editor_mode_hitbox,0,x,y,1+editor_selected*0.5,1+editor_selected*0.5,(editor_selected == 1) ? global.selected_animation : 0,c_white,0.5+editor_selected*0.5);
		}
	}
}