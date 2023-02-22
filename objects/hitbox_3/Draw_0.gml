/// @description Insert description here
// You can write your code in this editor


var col = global.map_color
if col = c_black && image_alpha < 1
{
col = c_white
}
if global.quake_effect = 1
{
col = $FF0000A4
depth = hitbox_7.depth-100
}
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,col,image_alpha)
if w_alpha > 0
{
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
}