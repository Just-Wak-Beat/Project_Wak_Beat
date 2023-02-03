global.w_alpha = 1
global.map_color = #9ed5cb


for(var i = 0; i < 360; i += 30)
{
var scale = 1
var _misile_ = create_square_misile(global.c_x,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = i-60
_misile_.image_angle = i+90-60
_misile_.speed = (64+4)*scale/5
}



for(var i = -360; i < 0; i += 30)
{
var scale = 1
var _misile_ = create_square_misile(global.c_w,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = i-60
_misile_.image_angle = i+90-60
_misile_.speed = (64+4)*scale/5
}