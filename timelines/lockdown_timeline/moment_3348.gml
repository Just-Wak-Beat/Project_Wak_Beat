for(var i = -10; i <= 10; i++)
{
	var ins_tmp = create_laser(room_width*0.5+i*64,global.c_h,60+abs(i)*5,12,6/(1+abs(i)*2),2,1,0);
	ins_tmp.depth = spike_ef.depth-34
}