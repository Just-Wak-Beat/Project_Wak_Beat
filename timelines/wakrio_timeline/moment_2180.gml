var scale = 3
var _misile_ = create_square_misile(room_width*0.5+420,global.c_y,5,20/scale,0,0,scale)
_misile_.direction = 270
_misile_.image_angle = 270
_misile_.speed = (64+4)*scale/5

var _misile_ = create_square_misile(room_width*0.5-420,global.c_y,5,20/scale,0,0,scale)
_misile_.direction = 270
_misile_.image_angle = 270
_misile_.speed = (64+4)*scale/5


var _misile_ = create_square_misile(room_width*0.5+300,global.c_h,5,20/scale,0,0,scale)
_misile_.direction = 90
_misile_.image_angle = 90
_misile_.speed = (64+4)*scale/5

var _misile_ = create_square_misile(room_width*0.5-300,global.c_h,5,20/scale,0,0,scale)
_misile_.direction = 90
_misile_.image_angle = 90
_misile_.speed = (64+4)*scale/5