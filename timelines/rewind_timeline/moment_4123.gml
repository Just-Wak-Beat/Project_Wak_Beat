/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B65B35E
/// @DnDArgument : "code" "global.w_alpha = 1$(13_10)global.map_color = $FFDB83BF$(13_10)global.t_bg_color_alpha = 0$(13_10)heart_hitbox.t_scale = 1$(13_10)heart_hitbox.w_alpha = 1$(13_10)heart_hitbox.sprite_index = spr_heart$(13_10)$(13_10)$(13_10)$(13_10)var scale = 1$(13_10)for(var i = 0; i < 360; i += 30)$(13_10){$(13_10)var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)$(13_10)_misile_.direction = i$(13_10)_misile_.image_angle = i+90$(13_10)_misile_.speed = (64+4)*scale/5$(13_10)}"
global.w_alpha = 1
global.map_color = $FFDB83BF
global.t_bg_color_alpha = 0
heart_hitbox.t_scale = 1
heart_hitbox.w_alpha = 1
heart_hitbox.sprite_index = spr_heart



var scale = 1
for(var i = 0; i < 360; i += 30)
{
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = i
_misile_.image_angle = i+90
_misile_.speed = (64+4)*scale/5
}