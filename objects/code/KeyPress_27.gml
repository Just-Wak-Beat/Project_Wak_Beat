/// @description Insert description here
// You can write your code in this editor

if gamestart = 0 || gamestart = 4
{
gamestart = 4
global.sync_setting++
global.back_to_game = 0
	if global.sync_setting > 1
	{
	global.sync_setting = 0
	gamestart = 0
	instance_destroy(obj_button)
	save_and_load_data(0,0)
	}
	
	if global.sync_setting = 1
	{
	var yy = camera_get_view_y(view_camera[0])
	var yy_h = camera_get_view_height(view_camera[0])
	var xx = camera_get_view_x(view_camera[0])
	var xx_w = camera_get_view_width(view_camera[0])

	//화면 리로드
	var buttom_ui = instance_create_depth(xx+100,yy+yy_h*0.79,depth,obj_button)
	buttom_ui.button_id = 0
	
	//해상도
	var buttom_ui = instance_create_depth(xx+100,yy+yy_h*0.94,depth,obj_button)
	buttom_ui.button_id = 1
	
	//마스터 볼륨
	var buttom_ui = instance_create_depth(xx+xx_w*0.5,yy+yy_h*0.15,depth,obj_button)
	buttom_ui.button_id = 2
	buttom_ui.sprite_index = spr_square
	
	//효과음 볼륨
	var buttom_ui = instance_create_depth(xx+xx_w*0.5,yy+yy_h*0.25,depth,obj_button)
	buttom_ui.button_id = 3
	buttom_ui.sprite_index = spr_square
	
	//배경음악 볼륨
	var buttom_ui = instance_create_depth(xx+xx_w*0.5,yy+yy_h*0.35,depth,obj_button)
	buttom_ui.button_id = 4
	buttom_ui.sprite_index = spr_square
	
	//오프셋
	var buttom_ui = instance_create_depth(xx+xx_w-320,yy+yy_h*0.95,depth,obj_button)
	buttom_ui.button_id = 5
	buttom_ui.sprite_index = spr_square
	buttom_ui.alarm[11] = 1
	}
}


if gamestart = 2 && global.n_progress > 1 && global.cannot_control = 0
{
global.sync_setting++
global.back_to_game = 0
	if global.sync_setting > 1
	{
	global.sync_setting = 0
	global.cannot_control = 0
	instance_destroy(obj_button)
	save_and_load_data(0,0)
	}
	
	if global.sync_setting = 1
	{
	global.cannot_control = 1
	var yy = camera_get_view_y(view_camera[0])
	var yy_h = camera_get_view_height(view_camera[0])
	var xx = camera_get_view_x(view_camera[0])
	var xx_w = camera_get_view_width(view_camera[0])
		
	//마스터 볼륨
	var buttom_ui = instance_create_depth(xx+320,yy+yy_h*0.75,depth,obj_button)
	buttom_ui.button_id = 2
	buttom_ui.sprite_index = spr_square
	buttom_ui.alarm[11] = 1
	
	//효과음 볼륨
	var buttom_ui = instance_create_depth(xx+320,yy+yy_h*0.85,depth,obj_button)
	buttom_ui.button_id = 3
	buttom_ui.sprite_index = spr_square
	buttom_ui.alarm[11] = 1
	
	//배경음악 볼륨
	var buttom_ui = instance_create_depth(xx+320,yy+yy_h*0.95,depth,obj_button)
	buttom_ui.button_id = 4
	buttom_ui.sprite_index = spr_square
	buttom_ui.alarm[11] = 1
	
	//오프셋
	var buttom_ui = instance_create_depth(xx+xx_w-320,yy+yy_h*0.95,depth,obj_button)
	buttom_ui.button_id = 5
	buttom_ui.sprite_index = spr_square
	buttom_ui.alarm[11] = 1
	}
}