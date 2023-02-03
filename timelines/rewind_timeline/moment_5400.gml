clock_hitbox.t_angle -= 90
clock_hitbox.w_alpha = 1

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 0
_misile_.image_angle = 90
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 90
_misile_.image_angle = 180
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 180
_misile_.image_angle = 270
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 270
_misile_.image_angle = 360
_misile_.speed = (64+4)*scale/5