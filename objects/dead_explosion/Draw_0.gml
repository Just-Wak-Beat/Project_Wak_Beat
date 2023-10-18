/// @description Insert description here
// You can write your code in this editor


for(var ii = -10+global.mobile_mode*8; ii <= 10-global.mobile_mode*8; ii++)
{
	draw_set_color(c_white)
	draw_set_alpha(image_alpha*0.1*0.05)
	draw_circle(x+ii,y,image_xscale*96,false)
	draw_circle(x,y+ii,image_xscale*96,false)

	draw_set_alpha(image_alpha*0.05)
	draw_circle(x+ii,y,image_xscale*48*image_yscale,false)
	draw_circle(x,y+ii,image_xscale*48*image_yscale,false)


	draw_set_alpha(image_alpha*0.4*0.05)
	draw_circle(x,y,image_xscale*96,true)
	for(var i = -2; i <= 2; i++)
	{
		draw_circle(x+i,y,image_xscale*96,true)
		draw_circle(x,y+i,image_xscale*96,true)
		draw_circle(x-i,y-i,image_xscale*96,true)
		draw_circle(x+i,y+i,image_xscale*96,true)
	}
	
	for(var i = -2; i <= 2; i++)
	{
		draw_circle(x+i+ii,y,image_xscale*96,true)
		draw_circle(x+ii,y+i,image_xscale*96,true)
		draw_circle(x+ii-i,y-i,image_xscale*96,true)
		draw_circle(x+ii+i,y+i,image_xscale*96,true)
	}
	
	for(var i = -2; i <= 2; i++)
	{
		draw_circle(x+i,y+ii,image_xscale*96,true)
		draw_circle(x,y+i+ii,image_xscale*96,true)
		draw_circle(x-i,y-i+ii,image_xscale*96,true)
		draw_circle(x+i,y+i+ii,image_xscale*96,true)
	}
}