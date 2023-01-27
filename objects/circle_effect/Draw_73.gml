/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(1)
draw_set_color(global.map_color)
for(var i = -4; i <= 4; i++)
{
draw_circle(x,y+i,1433.6+image_xscale*512,true)
draw_circle(x+i,y,1433.6+image_xscale*512,true)
draw_circle(x+i,y+i,1433.6+image_xscale*512,true)
draw_circle(x-i,y-i,1433.6+image_xscale*512,true)
}