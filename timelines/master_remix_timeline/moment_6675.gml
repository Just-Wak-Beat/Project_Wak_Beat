master_bpm_timer = 0
global.master_remix_effect5 = 1
master_hitbox.image_xscale *= 1.2
master_hitbox.image_yscale *= 1.2
master_hitbox.w_alpha = 2
master_hitbox.t_y = room_height*0.5

var start_angle = 0
for(var i = 0; i < 4; i++)
{
	create_worm(master_hitbox.x,master_hitbox.y,obj_player.depth+15,8,spr_triangle,0.2,spr_triangle_empty,15,-4,start_angle+i*90)
}


for(var i = 0; i < 360; i += 15)
{
	var attack_ef = instance_create_depth(master_hitbox.x,master_hitbox.y,depth+1,hitbox_6)
	attack_ef.direction = i
	attack_ef.speed = 18
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.05
	attack_ef.image_yscale = 0.05
	attack_ef.w_alpha = 10
}

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

global.w_alpha = 1