
for(var i = 0; i <= 256; i += 4)
{
var scale = 1
var _misile_ = create_square_misile(global.c_x+8+48*i,global.c_y,5,20/scale,0,0,scale)
_misile_.direction = 270
_misile_.speed = (64+4)*scale/5
}

