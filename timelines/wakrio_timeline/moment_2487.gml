

for(var i = -10; i <= 10; i++)
{
	create_explo_circle(room_width*0.5+i*128,room_height*0.5,1+abs(i)*5,10,0.8,0,2.5/(1+abs(i*0.3)),0,0,0,0)
}

var scale = 3
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,360,0,0,scale)
_misile_.direction = 0
_misile_.image_angle = 0
_misile_.speed = (64+4)*scale/5

var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,360,0,0,scale)
_misile_.direction = 180
_misile_.image_angle = 180
_misile_.speed = (64+4)*scale/5

global.wakrio_effect3 = 2
global.w_alpha = 1
