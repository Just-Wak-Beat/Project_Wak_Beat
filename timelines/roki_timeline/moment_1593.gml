square.image_angle = 0
square.image_xscale = 5
square.image_yscale = 5
square.t_scale = 5
square.w_alpha = 10
square.x = global.c_x+640
square.t_x = global.c_x+640

for(var i = 0; i < 360; i += 90)
{
	var tmp = create_projectile_spin(global.c_x+640,room_height*0.5,spr_square,0.5,200,9.5,0,10,15)
	tmp.image_angle = i
}



square2 = instance_create_depth(global.c_w-640,room_height*0.5,obj_player.depth-3,hitbox_11)
square2.sprite_index = spr_spuare_outline
square2.t_scale = 5
square2.shake_scale = 0
square2.shake_dir = 0
square2.t_angle = 0
square2.w_alpha = 10
square2.image_index = 0
square2.image_xscale = 0
square2.image_yscale = 0

for(var i = 0; i < 360; i += 90)
{
	var tmp = create_projectile_spin(global.c_w-640,room_height*0.5,spr_square,0.5,200,-9.5,0,10,15)
	tmp.image_angle = i
}


global.w_alpha = 1
set_hitbox_color(#8c70d6,1,room_width*0.5,room_height*0.5);
global.t_bg_color = 0.3
global.t_bg_color_alpha = 0.3