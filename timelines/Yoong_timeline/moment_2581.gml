
if !instance_exists(hitbox_7)
{
wakgood_shouting = instance_create_depth(room_width*0.5,global.c_h-256,player.depth-999,hitbox_7)
wakgood_shouting.t_x = room_width*0.5
wakgood_shouting.t_y = global.c_h-256
wakgood_shouting.image_index = 2
wakgood_shouting.image_xscale = 4
wakgood_shouting.image_yscale = 4
wakgood_shouting.scale_down = 0.999
}
