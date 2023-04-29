var start_angle = 0
for(var i = 0; i < 4; i++)
{
	create_worm(master_hitbox.x,master_hitbox.y,player.depth+15,5,spr_triangle,0.2,spr_triangle_empty,10,-4,start_angle+i*90)
}
