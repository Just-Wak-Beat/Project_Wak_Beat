var laser___ = create_laser(room_width*0.5,room_height*0.5,60,400,3,2,1,-0.7)
laser___.image_angle = 0

var laser___ = create_laser(room_width*0.5,room_height*0.5,60,400,3,2,1,-0.7)
laser___.image_angle = 180

if (global.t_selected_difficulty != 1)
{
	var laser___ = create_laser(room_width*0.5,room_height*0.5,60,400,3,2,1,-0.7)
	laser___.image_angle = 270

	var laser___ = create_laser(room_width*0.5,room_height*0.5,60,400,3,2,1,-0.7)
	laser___.image_angle = 90
}

global.n_camera_zoom = 0.8

global.lockdown_effect1 = 2