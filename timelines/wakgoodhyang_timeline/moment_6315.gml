create_laser(irandom_range(global.c_x,global.c_w),global.c_y,40,70,1,2,5,180)

var random_x = irandom_range(global.c_x,global.c_x+420)
create_spike_circle(random_x,global.c_h,random_x,irandom_range(global.c_y+256,global.c_h-256),30,0,0,0.2)