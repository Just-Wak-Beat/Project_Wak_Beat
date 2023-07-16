global.w_alpha = 10

global.t_bg_color = 1
obj_camera.v_x = 3584
obj_camera.v_y = 2016
obj_camera.tv_x = 3584
obj_camera.tv_y = 2016
camera_set_view_size(view_camera[0],floor(obj_camera.v_x),floor(obj_camera.v_y));
global.t_bg_color_alpha = 1

clock_hitbox.w_alpha = 1
clock_hitbox_2.w_alpha = 1
clock_hitbox.automatic_angle = 2 if(global.t_selected_difficulty == 0){clock_hitbox_3.automatic_angle = 0.2}

clock_hitbox.t_scale = 3.3
clock_hitbox_2.t_scale = 4

if (global.t_selected_difficulty == 0)
{
	clock_hitbox_3.t_scale = clock_hitbox.t_scale*1.01
}

global.map_color = #f5f4b0


for(var i = 1; i <= 13; i++)
{
var ins = variable_instance_get(id,"gear_hitbox"+string(i))

	if instance_exists(ins)
	{
		create_explo_circle(ins.x,ins.y,0,10,0,0,ins.image_xscale,0,0,0)
	}
}

view_shake(0.1,3,0,0)


var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 0+45
_misile_.image_angle = 90+45
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 90+45
_misile_.image_angle = 180+45
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 180+45
_misile_.image_angle = 270+45
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 270+45
_misile_.image_angle = 360+45
_misile_.speed = (64+4)*scale/5


gear_hitbox1 = instance_create_depth(global.c_x,global.c_y,obj_player.depth-1,hitbox_11)
gear_hitbox1.t_scale = 2
gear_hitbox1.shake_scale = 0
gear_hitbox1.shake_dir = 0
gear_hitbox1.t_angle = 0
gear_hitbox1.sprite_index = spr_gear
gear_hitbox1.image_index = 1
gear_hitbox1.w_alpha = 1


gear_hitbox2 = instance_create_depth(global.c_x,room_height*0.48,obj_player.depth-1,hitbox_11)
gear_hitbox2.t_scale = 1
gear_hitbox2.shake_scale = 0
gear_hitbox2.shake_dir = 0
gear_hitbox2.t_angle = 0
gear_hitbox2.sprite_index = spr_gear
gear_hitbox2.image_index = 1
gear_hitbox2.w_alpha = 1


gear_hitbox3 = instance_create_depth(global.c_x,room_height*0.8,obj_player.depth-1,hitbox_11)
gear_hitbox3.t_scale = 2.3
gear_hitbox3.shake_scale = 0
gear_hitbox3.shake_dir = 0
gear_hitbox3.t_angle = 0
gear_hitbox3.sprite_index = spr_gear
gear_hitbox3.image_index = 1
gear_hitbox3.w_alpha = 1


gear_hitbox4 = instance_create_depth(global.c_w,global.c_h+512,obj_player.depth-1,hitbox_11)
gear_hitbox4.t_scale = 2.3
gear_hitbox4.shake_scale = 0
gear_hitbox4.shake_dir = 0
gear_hitbox4.t_angle = 0
gear_hitbox4.sprite_index = spr_gear
gear_hitbox4.image_index = 1
gear_hitbox4.w_alpha = 1


gear_hitbox5 = instance_create_depth(global.c_w,global.c_h-512,obj_player.depth-1,hitbox_11)
gear_hitbox5.t_scale = 3
gear_hitbox5.shake_scale = 0
gear_hitbox5.shake_dir = 0
gear_hitbox5.t_angle = 0
gear_hitbox5.sprite_index = spr_gear
gear_hitbox5.image_index = 1
gear_hitbox5.w_alpha = 1


gear_hitbox6 = instance_create_depth(global.c_w,global.c_h-1500,obj_player.depth-1,hitbox_11)
gear_hitbox6.t_scale = 0.9
gear_hitbox6.shake_scale = 0
gear_hitbox6.shake_dir = 0
gear_hitbox6.t_angle = 0
gear_hitbox6.sprite_index = spr_gear
gear_hitbox6.image_index = 1
gear_hitbox6.w_alpha = 1


gear_hitbox7 = instance_create_depth(global.c_x+420,global.c_h-800,obj_player.depth-1,hitbox_11)
gear_hitbox7.t_scale = 1.1
gear_hitbox7.shake_scale = 0
gear_hitbox7.shake_dir = 0
gear_hitbox7.t_angle = 0
gear_hitbox7.sprite_index = spr_gear
gear_hitbox7.image_index = 1
gear_hitbox7.w_alpha = 1


gear_hitbox8 = instance_create_depth(global.c_w,global.c_y,obj_player.depth-1,hitbox_11)
gear_hitbox8.t_scale = 1.6
gear_hitbox8.shake_scale = 0
gear_hitbox8.shake_dir = 0
gear_hitbox8.t_angle = 0
gear_hitbox8.sprite_index = spr_gear
gear_hitbox8.image_index = 1
gear_hitbox8.w_alpha = 1

gear_hitbox9 = instance_create_depth(global.c_w-400,global.c_y+640,obj_player.depth-1,hitbox_11)
gear_hitbox9.t_scale = 1
gear_hitbox9.shake_scale = 0
gear_hitbox9.shake_dir = 0
gear_hitbox9.t_angle = 0
gear_hitbox9.sprite_index = spr_gear
gear_hitbox9.image_index = 1
gear_hitbox9.w_alpha = 1

gear_hitbox10 = instance_create_depth(global.c_x+500,global.c_y+640,obj_player.depth-1,hitbox_11)
gear_hitbox10.t_scale = 1.7
gear_hitbox10.shake_scale = 0
gear_hitbox10.shake_dir = 0
gear_hitbox10.t_angle = 0
gear_hitbox10.sprite_index = spr_gear
gear_hitbox10.image_index = 1
gear_hitbox10.w_alpha = 1

gear_hitbox11 = instance_create_depth(global.c_x+800,global.c_y,obj_player.depth-1,hitbox_11)
gear_hitbox11.t_scale = 1.7
gear_hitbox11.shake_scale = 0
gear_hitbox11.shake_dir = 0
gear_hitbox11.t_angle = 0
gear_hitbox11.sprite_index = spr_gear
gear_hitbox11.image_index = 1
gear_hitbox11.w_alpha = 1

gear_hitbox12 = instance_create_depth(global.c_x+900,global.c_h-200,obj_player.depth-1,hitbox_11)
gear_hitbox12.t_scale = 1.5
gear_hitbox12.shake_scale = 0
gear_hitbox12.shake_dir = 0
gear_hitbox12.t_angle = 0
gear_hitbox12.sprite_index = spr_gear
gear_hitbox12.image_index = 1
gear_hitbox12.w_alpha = 1

gear_hitbox13 = instance_create_depth(global.c_w-700,global.c_y+250,obj_player.depth-1,hitbox_11)
gear_hitbox13.t_scale = 1
gear_hitbox13.shake_scale = 0
gear_hitbox13.shake_dir = 0
gear_hitbox13.t_angle = 0
gear_hitbox13.sprite_index = spr_gear
gear_hitbox13.image_index = 1
gear_hitbox13.w_alpha = 1