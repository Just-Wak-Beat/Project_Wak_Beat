for(var i = 0; i <= 32; i ++)
{
var scale = 1
var xx = global.c_x+i*128*scale
	if abs(xx - room_width*0.5) > 400
	{
	var _misile_ = create_square_misile(xx,global.c_y,5,20/scale,0,0,scale)
	_misile_.direction = 270
	_misile_.image_angle = 270
	_misile_.speed = (64+4)*scale/5
	}
}