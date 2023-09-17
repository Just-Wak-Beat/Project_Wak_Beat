/// @description Insert description here
// You can write your code in this editor
//create_worm(room_width*0.5,room_height*0.5,player.depth-15,5,spr_triangle,0.2,spr_triangle_empty,10,2,irandom_range(0,359))

//for(var i = -2; i <= 2; i++)
//{
//	create_cylinder(room_width*0.5+i*68,global.c_h-16*abs(12)*(1+abs(i)),obj_player.depth-15,0.5,60,64,270,0)
//}



create_bounce_ball(irandom_range(global.c_x,global.c_w),global.c_y,0.8,15,270+irandom_range(-30,30),5)