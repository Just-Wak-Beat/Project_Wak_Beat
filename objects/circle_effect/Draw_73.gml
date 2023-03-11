/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(1)
var color__bg = merge_color(#373b40,global.map_color,0.2)
var col_cal = merge_color(color__bg,c_white,global.background_w_alpha)
var cal_2 = merge_color(col_cal,global.map_color,image_alpha)
draw_set_color(merge_color(cal_2,c_white,w_alpha))
for(var i = -4; i <= 4; i++)
{
draw_circle(x,y+i,1433.6+image_xscale*512,true)
draw_circle(x+i,y,1433.6+image_xscale*512,true)
draw_circle(x+i,y+i,1433.6+image_xscale*512,true)
draw_circle(x-i,y-i,1433.6+image_xscale*512,true)
}