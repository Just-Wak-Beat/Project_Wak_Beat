/// @description Insert description here
// You can write your code in this editor




if (global.timeline_stop != 1)
{
	time ++;
	if (time >= 1)
	{
		var tmp_ang = image_angle;
		for(var i = -ed_arg3; i <= ed_arg3; i++)
		{
			var tmp_ind = create_cylinder(x+lengthdir_x(image_xscale*160*i,image_angle),y+lengthdir_y(image_xscale*160*i,image_angle),depth+15,image_xscale,1+abs(i)*4,64,tmp_ang-90,round(ed_arg1/90)*90,false);
			tmp_ind.sprite_index = sprite_index;
		}
		
		if (ed_arg6 != 1)
		{
			repeat(irandom_range(8,12))
			{
				var attack_ef = instance_create_depth(x,y+128+irandom_range(-64,64),obj_player.depth+15,hitbox_2);
				attack_ef.sprite_index = spr_circle;
				attack_ef.keep_spin_angle = irandom_range(-2,2);
				attack_ef.image_xscale = 0.04;
				attack_ef.image_yscale = 0.04;
				attack_ef.w_alpha = 10;
				attack_ef.gravity = 1;
				attack_ef.vspeed = -ed_arg2*5+irandom_range(-5,5);
				attack_ef.hspeed = irandom_range(-25,25)/2;
				attack_ef.gravity_direction = image_angle+270
			}
		}
		
		instance_destroy();
	}
}