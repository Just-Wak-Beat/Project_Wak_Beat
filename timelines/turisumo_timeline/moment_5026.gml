
for(var i = -12; i <= 12; i++)
{
	create_cylinder(room_width*0.5-720+i*68,global.c_h-8*abs(15)*(1+abs(i)*0.5),depth+15,0.5,1,64,270,0,false)
	create_cylinder(room_width*0.5+720+i*68,global.c_h-8*abs(15)*(1+abs(i)*0.5),depth+15,0.5,1,64,270,0,false)
}

