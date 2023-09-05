/// @description Insert description here
// You can write your code in this editor

if global.hp > 0 && code.gamestart = 2
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y+6,image_xscale,image_yscale,image_angle,c_black,image_alpha*0.2)
	shader_reset()
	
	if invincibility_cooltime > 0 && show_invincibility = 1
	{
		draw_sprite_ext(spr_circle,0,x,y,0.1,0.1,image_angle,c_white,sign(invincibility_cooltime)*0.2)
	}


	draw_sprite_ext(sprite_index,(global.player_skin*7),x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha*0.3)
	draw_sprite_ext(sprite_index,(global.player_skin*7)+6,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	
	if (show_player_pos > 0)
	{
		show_player_pos--;
		player_pos_w_alpha += (-0.01 - player_pos_w_alpha)*0.1;
		if (show_player_pos%60 == 0)
		{
			player_pos_w_alpha = 1;
		}
		
		var tmp_player_pos_w_alpha = player_pos_w_alpha;
		tmp_player_pos_w_alpha = (tmp_player_pos_w_alpha < 0) ? 0 : tmp_player_pos_w_alpha;

		var tmp_scale = (1+player_pos_w_alpha*0.5)*0.12;
		draw_sprite_ext(spr_square_half,0,x,y-96*global.converted_view_ratio,global.converted_view_ratio*global.font_ratio_resolution_xx*tmp_scale,global.converted_view_ratio*tmp_scale,135,merge_color(c_white,global.player_color,tmp_player_pos_w_alpha),player_pos_alpha)
		draw_text_k_scale(x,y-160*global.converted_view_ratio,"You",64,-1,player_pos_alpha,c_white,0,0,normal_font,0.55*global.font_ratio_resolution_xx*global.converted_view_ratio,0.55*global.converted_view_ratio,0)
	}
	else
	{
		player_pos_alpha += (-0.01 - player_pos_alpha)*0.1
	}

	if (kirakira_alpha > 0)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,merge_color(image_blend,#df1a62,0.8),kirakira_alpha)
	}
	else
	{
		draw_self()
	}
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
	shader_reset()

	if invincibility_cooltime > 0 && show_invincibility = 1
	{
		draw_circular_bar(x,y,invincibility_cooltime,90,c_white,53,0.98,6)
	}
	
	if (global.dash_cooltime > 0)
	{
		draw_circular_bar(x,y,global.dash_cooltime,40-n_max_map_speed*0.2,global.player_color,60,0.9,3)
	}
}