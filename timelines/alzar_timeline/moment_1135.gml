global.t_bg_color_alpha = 1



korea_univ_hitbox.t_scale = 0
yonsei_hitbox.t_scale = 1.5
yonsei_hitbox.sprite_index = spr_seoul_univ
yonsei_hitbox.t_angle = 360
yonsei_hitbox.w_alpha = 1



for(var i = 0; i < 360; i += 15)
{
var attack_ef = instance_create_depth(room_width*0.5,room_height*0.5,depth-100,hitbox_6)
attack_ef.direction = i
attack_ef.speed = 32
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.2
attack_ef.image_yscale = 0.2
attack_ef.w_alpha = 10
}
