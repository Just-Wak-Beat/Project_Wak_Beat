var tmp_c_x = (room_width - 3584)*0.5
var tmp_c_w = (room_width + 3584)*0.5
var tmp_c_y = (room_height - 2016)*0.5
var tmp_c_h = (room_height + 2016)*0.5

create_laser(tmp_c_x,tmp_c_y,60,673,10,2,5,180)
create_laser(tmp_c_w,tmp_c_y,60,673,10,2,5,180)

create_laser(tmp_c_w,tmp_c_y,60,673,10,2,5,90)
create_laser(tmp_c_w,tmp_c_h,60,673,10,2,5,90)

camera_focus_on(-4,-4,1)