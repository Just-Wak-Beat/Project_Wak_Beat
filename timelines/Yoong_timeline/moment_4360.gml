
for(var i = -5; i <= 5; i++)
{
var scale = 1
var _misile_ = create_square_misile(room_width*0.3+i*68*scale,global.c_y-abs(i)*64,5,20/scale,0,0,scale)
_misile_.direction = 270
_misile_.image_angle = 270
_misile_.speed = 68*scale/5
}