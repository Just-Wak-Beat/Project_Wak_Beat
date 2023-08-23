
for(var i = 0; i < 360; i += 15)
{
	var attack_ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,hitbox_2)
	attack_ef.direction = i
	attack_ef.speed = 32
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.4
	attack_ef.image_yscale = 0.4
	attack_ef.w_alpha = 10
}

for(var i = -10; i <= 10; i++)
{
	create_explo_circle(room_width*0.5+i*128,room_height*0.5,1+abs(i)*5,10,0.8,0,2.5/(1+abs(i*0.3)),0,0,0,0)
}

global.w_alpha = 1
