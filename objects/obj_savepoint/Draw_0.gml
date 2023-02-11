/// @description Insert description here
// You can write your code in this editor

if image_angle = 0
{
	for(var i = -5; i < 32; i++)
	{
	draw_sprite_ext(spr_end,0,x,i*132,1,1,0,global.map_color,0.5)
	}
}
else
{
	for(var i = -5; i < 32; i++)
	{
	draw_sprite_ext(spr_end,0,i*132,y,1,1,90,global.map_color,0.5)
	}
}