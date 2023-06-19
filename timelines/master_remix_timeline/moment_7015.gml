global.master_remix_effect4 = -5
global.master_remix_effect5 = 0

var start_angle = 0
for(var i = 0; i < 4; i += 0.5)
{
	create_worm(master_hitbox.x,master_hitbox.y,player.depth+15,5,spr_triangle,0.2,spr_triangle_empty,10,-4,start_angle+i*90)
}


for(var i = 0; i < 360; i += 15)
{
	var attack_ef = instance_create_depth(master_hitbox.x,master_hitbox.y,depth+1,hitbox_6)
	attack_ef.direction = i+8.5
	attack_ef.speed = 18
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.05
	attack_ef.image_yscale = 0.05
	attack_ef.w_alpha = 10
}