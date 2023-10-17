for(var i = 1; i <= 13; i++)
{
var ins = variable_instance_get(id,"gear_hitbox"+string(i))
ins.w_alpha = 1
	if i%2 = 0
	{
	ins.t_angle += 90
	}
	else
	{
	ins.t_angle -= 90
	}
}


clock_hitbox.automatic_angle = 2 if(global.t_selected_difficulty == 0){clock_hitbox_3.automatic_angle = 0.2}
global.background_color = clock_hitbox.saved_color

clock_hitbox.t_angle += 30
clock_hitbox.image_xscale += 0.5 clock_hitbox.image_yscale += 0.5 clock_hitbox_2.image_xscale += 0.5 clock_hitbox_2.image_yscale += 0.5
if(global.t_selected_difficulty == 0)
{
clock_hitbox_3.image_xscale += 0.5 
clock_hitbox_3.image_yscale += 0.5
clock_hitbox_3.t_angle += 10
clock_hitbox_3.w_alpha = 1
}
clock_hitbox.w_alpha = 1
clock_hitbox.automatic_angle = -2 if(global.t_selected_difficulty == 0){clock_hitbox_3.automatic_angle = -0.2}
view_shake(0.1,3,0,0)
global.w_alpha = 1
set_hitbox_color(#edcb8e,1,room_width*0.5,room_height*0.5);


global.camera_slow_zoom = -0.0005

global.n_camera_zoom = 1



for(var i = 1; i <= 13; i++)
{
var ins = variable_instance_get(id,"gear_hitbox"+string(i))

	if instance_exists(ins)
	{
	create_explo_circle(ins.x,ins.y,0,10,0,0,ins.image_xscale,0,0,0)
	}
}



