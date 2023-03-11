/// @description Insert description here
// You can write your code in this editor

if gamestart = 0 || gamestart = 4
{
gamestart = 4
global.sync_setting++
	if global.sync_setting > 1
	{
	global.sync_setting = 0
	gamestart = 0
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
	
	//화면 리로드
	//var buttom_ui = instance_create_depth(xx+256,yy+yy_h*0.715,obj_button)
	//buttom_ui.button_id = 0
	}
}