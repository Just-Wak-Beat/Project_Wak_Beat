
if (global.t_selected_difficulty == 0)
{
	for(var i = 0; i < 4; i++)
	{
		var _laser = create_laser(room_width*0.5,room_height*0.5,60,260,4,2,1,0.5)
		_laser.image_angle = i*90;
	}
}


for(var i = -5; i <= 5; i++)
{
var scale = 1
var _misile_ = create_square_misile(room_width*0.5+i*68*scale,global.c_y-abs(i)*64,5,20/scale,0,0,scale)
_misile_.direction = 270
_misile_.image_angle = 270
_misile_.speed = 68*scale/5
}