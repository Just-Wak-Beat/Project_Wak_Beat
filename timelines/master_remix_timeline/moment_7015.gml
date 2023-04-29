global.master_remix_effect4 = -5
global.master_remix_effect5 = 0

var start_angle = 0
for(var i = 0; i < 4; i += 0.5)
{
	create_worm(master_hitbox.x,master_hitbox.y,player.depth+15,5,spr_triangle,0.2,spr_triangle_empty,10,-4,start_angle+i*90)
}
