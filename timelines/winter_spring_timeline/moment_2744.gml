var xx = camera_get_view_x(view_camera[0])
var xx_w = camera_get_view_width(view_camera[0])

create_laser(xx,global.c_y,60,26,32,32,32,180)
create_laser(xx_w,global.c_y,60,26,32,32,32,180)

global.w_alpha = 1
global.t_bg_color = 1
global.t_bg_color_alpha = 0