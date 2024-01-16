/// @description 맵 정보 초기화 (리와인드)
// You can write your code in this editor

global.dashed = 0;
global.start_point = 0;
global.restart_stage = 0;
global.respawn_point_xx = room_width*0.5;
global.respawn_point_yy = room_height*0.5;
global.total_died_here = 0;
global.total_damaged = 0;
global.crossed_obstacle_num = 0;
global.crossed_obstacle_num_with_maxhp = 0;
global.total_death_point = 0;
global.check_died = 0;
global.n_progress = 0;


obj_camera.v_x = obj_camera.tv_x;
obj_camera.v_y = obj_camera.tv_y;


//맵 색 설정
obj_camera.alarm[2] = 5;