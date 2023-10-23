/// @description Insert description here
// You can write your code in this editor

if global.low_graphics = false
{
w_alpha += (-0.01 - w_alpha)*0.15
}
else
{
w_alpha = 0
}


timer ++

if timer = 120
{
t_angle += 180
w_alpha = 1
}

if timer > 120 && timer <= 170
{
image_xscale += (1.1 - image_xscale)*0.3
image_yscale += (1.1 - image_yscale)*0.3
image_angle += (t_angle - image_angle)*0.1
}

if timer > 170
{
image_xscale += (1 - image_xscale)*0.3
image_yscale += (1 - image_yscale)*0.3
image_angle += (t_angle - image_angle)*0.5
}

if timer = 180
{
attack_t_dir = 16
w_alpha = 1
	for(var i = 0; i < 360; i += 16)
	{
	var attack_ef = instance_create_depth(x,y,depth+1,hitbox_2)
	attack_ef.direction = i
	attack_ef.speed = 20
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.4
	attack_ef.image_yscale = 0.4
	attack_ef.w_alpha = 10
	}
}

if timer > 180
{
image_xscale = 1
image_yscale = 1
image_angle = t_angle

	if timer%2 = 0
	{
	var attack_ef = instance_create_depth(x,y+attack_n_dir,depth+1,hitbox_2)
	attack_ef.direction = image_angle
	attack_ef.speed = 20
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.4
	attack_ef.image_yscale = 0.4
	attack_ef.w_alpha = 10
	}
}

if timer > 320
{
timer = 0
attack_n_dir = 0
}

if (attack_n_dir > 64 && sign(attack_t_dir) = 1) || (attack_n_dir < -64 && sign(attack_t_dir) = -1)
{
attack_t_dir *= -1
}



attack_n_dir += attack_t_dir



