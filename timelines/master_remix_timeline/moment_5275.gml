var angle = master_hitbox.image_angle
var _ins__ = create_projectile(master_hitbox.x,master_hitbox.y,master_hitbox.image_xscale,0,lengthdir_x(40,135+angle),lengthdir_y(40,135+angle),0,0,spr_triangle_half)
_ins__.image_index = 0
_ins__.image_angle = angle
		
var _ins__ = create_projectile(master_hitbox.x,master_hitbox.y,master_hitbox.image_xscale,0,lengthdir_x(40,angle),lengthdir_y(40,angle),0,0,spr_triangle_half)
_ins__.image_index = 1
_ins__.image_angle = angle
		
var _ins__ = create_projectile(master_hitbox.x,master_hitbox.y,master_hitbox.image_xscale,0,lengthdir_x(40,225+angle),lengthdir_y(40,225+angle),0,0,spr_triangle_half)
_ins__.image_index = 2
_ins__.image_angle = angle
		
master_hitbox.image_xscale *= 1.2
master_hitbox.image_yscale *= 1.2
master_hitbox.w_alpha = 2

var start_angle = 45
for(var i = 0; i < 4; i++)
{
	create_worm(master_hitbox.x,master_hitbox.y,player.depth+15,5,spr_triangle,0.2,spr_triangle_empty,10,-4,start_angle+i*90)
}
master_bpm_timer = 0
global.w_alpha = 1