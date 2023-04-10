var scale = 1
var _misile_ = create_circle_misile(global.c_x,irandom_range(global.c_y+128,global.c_h-128),20.8*scale,15,0,0,scale*0.3)
_misile_.direction = 0
_misile_.image_angle = 0
_misile_.speed = 132*scale/5

global.t_map_speed = 12
global.map_speed = 12