if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 2160
	global.savepoint_color[0] = c_black
}
global.artifact_type = 0
global.map_color = $FF1650FF
global.t_bg_color = 1
global.t_bg_color_alpha = 1
global.camera_slow_zoom = 0.00025
global.n_camera_zoom = 0.7
instance_destroy(hitbox_parents)


var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y,global.c_h),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 24
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10