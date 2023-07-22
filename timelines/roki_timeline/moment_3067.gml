create_explo_square(global.c_x+640,room_height*0.5,60,1,5,0,5)
create_explo_square(global.c_w-640,room_height*0.5,60,1,5,0,5)


var tmp = create_laser(global.c_w-640,room_height*0.5,60,20,1,0,1,-0.9)
tmp.image_angle = 180

var tmp = create_laser(global.c_w-640,room_height*0.5,60,20,1,0,1,-0.9)
tmp.image_angle = 0