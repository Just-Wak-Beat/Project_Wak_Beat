for(var i = 1; i <= 13; i++)
{
var ins = variable_instance_get(id,"gear_hitbox"+string(i))
ins.w_alpha = 1
	if i%2 = 0
	{
	ins.t_angle -= 90
	}
	else
	{
	ins.t_angle += 90
	}
}


clock_hitbox.t_angle -= 90
clock_hitbox.w_alpha = 1



var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 0+45
_misile_.image_angle = 90
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 90+45
_misile_.image_angle = 180
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 180+45
_misile_.image_angle = 270
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 270+45
_misile_.image_angle = 360
_misile_.speed = (64+4)*scale/5