/// @description Insert description here
// You can write your code in this editor


var _w_alpha = (w_alpha > 1) ? 1 : w_alpha
var color_ = merge_color(global.map_color,c_white,_w_alpha)
draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,color_,image_alpha)
