global.t_map_speed = 5

global.t_bg_color_alpha = 0
global.t_bg_color = 1
global.background_color = $FF1A0E33
global.w_alpha = 1
global.camera_slow_zoom = 0
camera_focus_on(-4,-4,1)

var random_y = irandom_range(global.c_y+128,global.c_h-128)
var scale = 0.5
var _misile_ = create_square_misile(global.c_w+160,random_y,5,20/scale,0,0,scale)
_misile_.direction = 180
_misile_.image_angle = 180
_misile_.speed = (64+4)*scale/5

var random_y = irandom_range(global.c_y+128,global.c_h-128)
var scale = 0.2
var _misile_ = create_square_misile(global.c_w+160,random_y,5,20/scale,0,0,scale)
_misile_.direction = 180
_misile_.image_angle = 180
_misile_.speed = (64+4)*scale/5