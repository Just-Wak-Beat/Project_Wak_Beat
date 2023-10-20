/// @description Insert description here
// You can write your code in this editor


var tmp_val = fix_num(global.t_bg_color_alpha);
draw_set_color(merge_color(c_black,global.background_color,tmp_val))
draw_set_alpha(1)
draw_line_width(0,0,room_width,room_height,7000)


if (instance_exists(code) && global.gomem_mashup_effect_arrow_alpha > 1)
{
	var arrow_col = (merge_color(global.map_color,c_white,global.gomem_mashup_effect_arrow_alpha-1))
	
	for(var i = -1; i <= 1; i++)
	{
		draw_sprite_ext(spr_square_half,0,room_width*0.5+i*256,room_height*0.5,global.gomem_mashup_effect_arrow_alpha*0.3,global.gomem_mashup_effect_arrow_alpha*0.3,45+180*(global.gomem_mashup_effect_dir),arrow_col,0.4*(global.gomem_mashup_effect_arrow_alpha-1))
	}
}



