
for(var i = 0; i < 360; i += 30)
{
var scale = 1
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = i
_misile_.image_angle = i+90
_misile_.speed = (64+4)*scale/5
}

heart_hitbox.image_xscale *= 0.8
heart_hitbox.image_yscale *= 0.8
heart_hitbox.w_alpha = 1