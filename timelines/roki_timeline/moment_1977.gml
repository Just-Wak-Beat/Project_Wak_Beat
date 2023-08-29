square2.w_alpha = 10

for(var i = 0; i < 360; i += 90)
{
	var tmp = create_projectile_spin(global.c_w-640,room_height*0.5,spr_square,0.5,80,-9.5,0,10,30)
	tmp.image_angle = i
}

var tmp = create_laser(global.c_w-640,room_height*0.5,1,80,1,0,1,-0.9)
tmp.image_angle = 180

var tmp = create_laser(global.c_w-640,room_height*0.5,1,80,1,0,1,-0.9)
tmp.image_angle = 0

camera_focus_on(square2.x,square2.y,0.8)