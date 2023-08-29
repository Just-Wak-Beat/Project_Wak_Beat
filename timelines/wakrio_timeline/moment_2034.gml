global.wakrio_effect3 = 1
master_bpm_timer = 0

var scale = 3
var _misile_ = create_square_misile(global.c_x,global.c_y,5,650,0,0,scale)
_misile_.direction = 0
_misile_.image_angle = 0
_misile_.speed = (64+4)*scale/5

var _misile_ = create_square_misile(global.c_w,global.c_h,5,650,0,0,scale)
_misile_.direction = 180
_misile_.image_angle = 180
_misile_.speed = (64+4)*scale/5