global.w_alpha = 1
global.t_w_alpha = 1
global.t_map_speed = 0
global.map_speed = 0
global.blackout_effect = 0
instance_destroy(hitbox_14)

var scale = 2
var falling_light = instance_create_depth(global.c_x+320,global.c_y-1600,depth+choose(-10,10),hitbox_14)
falling_light.image_blend = #39282e
falling_light.t_y = global.c_y+480
falling_light.light_color = #FFF568
falling_light.image_xscale = scale
falling_light.image_yscale = scale


var scale = 2
var falling_light = instance_create_depth(global.c_w-320,global.c_y-1600,depth+choose(-10,10),hitbox_14)
falling_light.image_blend = #39282e
falling_light.t_y = global.c_y+480
falling_light.light_color = #FFF568
falling_light.image_xscale = scale
falling_light.image_yscale = scale