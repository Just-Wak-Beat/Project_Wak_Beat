
for(var i = 0; i < 360; i += 30)
{
var scale = 1
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = i-60
_misile_.image_angle = i+90-60
_misile_.speed = (64+4)*scale/5
}