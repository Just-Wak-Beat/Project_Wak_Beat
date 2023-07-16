global.map_color = #ae3c30
global.w_alpha = 1
instance_destroy(hitbox_3)

create_laser(global.c_w-520,global.c_h,1,338,10,2,40,0)
create_worm(room_width*0.3,global.c_y-700,obj_player.depth-15,5,spr_circle_outline,3,spr_circle_outline,20,-2,270)
var _ins = create_projectile_spin(room_width*0.3,global.c_y,spr_circle_spike,0.5,200,5,0.01,13)
_ins.image_angle = -90
global.master_remix_effect3 = 0
global.master_remix_effect5 = 0