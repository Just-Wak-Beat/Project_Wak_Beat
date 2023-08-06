var laser___ = create_laser(room_width*0.5,room_height*0.5,60,250,3,2,1,0.7)
laser___.image_angle = 0

var laser___ = create_laser(room_width*0.5,room_height*0.5,60,250,3,2,1,0.7)
laser___.image_angle = 180

if (global.t_selected_difficulty != 1)
{
	var laser___ = create_laser(room_width*0.5,room_height*0.5,60,250,3,2,1,0.7)
	laser___.image_angle = 270

	var laser___ = create_laser(room_width*0.5,room_height*0.5,60,250,3,2,1,0.7)
	laser___.image_angle = 90
}

global.n_camera_zoom = 0.8


if (global.total_died_here > 0)
{
	spike_ef = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-10,hitbox_8)
	spike_ef.t_x = room_width*0.5;
	spike_ef.t_y = room_height*0.5;
	spike_ef.image_xscale = 0;
	spike_ef.image_yscale = 0;
	spike_ef.sprite_index = spr_circle_spike
}