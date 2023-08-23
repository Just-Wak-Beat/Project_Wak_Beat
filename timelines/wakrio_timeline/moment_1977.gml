var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y+32,global.c_h-32),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 24
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10
global.check_died = 0

for(var i = -8; i <= 8; i++)
{
	create_laser(room_width*0.5+i*70,global.c_y,60+abs(i)*5,26,1,2,1,180)
}

create_arrow_laser(room_width*0.5,room_height*0.5,obj_player.depth-9,0.8,45,64,true,2,60)
create_arrow_laser(room_width*0.5,room_height*0.5,obj_player.depth-9,0.8,135,64,true,2,60)


var wakrio_ = instance_create_depth(room_width*0.5,-room_height,obj_player.depth-10,hitbox_8)
wakrio_.t_x = room_width*0.5
wakrio_.t_y = -room_height


global.wakrio_effect2 = 0
global.w_alpha = 1
global.map_color = $FFEEFF6D
global.background_color = #00111b


