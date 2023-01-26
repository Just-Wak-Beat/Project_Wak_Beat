var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y+32,global.c_h-32),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 24
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10


create_laser(room_width*0.5,global.c_y,60,26,4,2,4,180)

create_laser(room_width*0.5-192,global.c_y,65,26,4,2,2,180)
create_laser(room_width*0.5+192,global.c_y,65,26,4,2,2,180)

create_laser(room_width*0.5-288,global.c_y,70,26,4,2,1,180)
create_laser(room_width*0.5+288,global.c_y,70,26,4,2,1,180)

create_laser(room_width*0.5-320,global.c_y,75,26,4,2,1,180)
create_laser(room_width*0.5+320,global.c_y,75,26,4,2,1,180)


var _laser_ = create_laser(room_width*0.5,room_height*0.5,75,900,4,2,1,-0.5)
_laser_.image_angle = 270
var _laser_ = create_laser(room_width*0.5,room_height*0.5,75,900,4,2,1,-0.5)
_laser_.image_angle = 90

var wakrio_ = instance_create_depth(room_width*0.5,-room_height,player.depth-10,hitbox_8)
wakrio_.t_x = room_width*0.5
wakrio_.t_y = -room_height

