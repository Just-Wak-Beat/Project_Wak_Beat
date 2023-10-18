var jururu_ = instance_create_depth(room_width*0.5,room_height,obj_player.depth,hitbox_7)
jururu_.t_x = room_width*0.5
jururu_.t_y = room_height*2

global.t_bg_color = 0.15
global.t_bg_color_alpha = 0.15

if (global.total_died_here == 0)
{
	set_hitbox_color($FF7D5EEE,1,room_width*0.5,global.c_h);
}
