

var scale = irandom_range(20,30)/10
var falling_light = instance_create_depth(global.c_w+irandom_range(-128,128),global.c_y-1600,depth+choose(-10,10),hitbox_14)
falling_light.image_blend = #39282e
falling_light.t_y = global.c_y+irandom_range(-128,720)
falling_light.light_color = #FFF568
falling_light.image_xscale = scale
falling_light.image_yscale = scale

global.t_bg_color = 0.5