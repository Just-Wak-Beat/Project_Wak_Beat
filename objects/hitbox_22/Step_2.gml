/// @description Insert description here
// You can write your code in this editor

if (color_changing < 0)
{
	color_changing = 0;
	t_col_changing = 1;
}
else if (color_changing > 765)
{
	color_changing = 765;
	t_col_changing = -1;
}
color_changing += t_col_changing;
image_blend = make_color_rgb(fix_num_inside(color_changing-510,0,255),fix_num_inside(color_changing-255,0,255),fix_num_inside(color_changing,0,255));

if (play_animation == 0)
{
	line_alpha += (0.6 - line_alpha)*0.3;
	scale -= (10/des_timer);
	line_angle -= (270/des_timer);
	if (scale <= 0)
	{
		w_alpha = 100;
		play_animation = 1;
		line_alpha = 1;
		
		if (!place_meeting(x,y,obj_player))
		{
			global.hp = 0;
		}
	}
}
else
{
	image_alpha += (-0.1 - image_alpha)*0.3
	w_alpha += (-0.1 - w_alpha)*0.1;
	line_alpha += (-0.1 - line_alpha)*0.1;
	scale += (1.05 - scale)*0.1;
	line_width += (0 - line_width)*0.1
	
	if (w_alpha <= 0 && line_alpha <= 0)
	{
		instance_destroy();
	}
}