/// @description Insert description here
// You can write your code in this editor



global.w_alpha = 0.6
var t_ins1 = code.spike_ef;
var t_ins2 = code.pipe_ef;
t_ins2.image_xscale *= 1.01;
t_ins2.image_yscale *= 0.7;
t_ins1.direction += 180;


var tmp_angle = direction+180
t_ins1.x -= lengthdir_x(-160,tmp_angle);
t_ins1.y -= lengthdir_y(-160,tmp_angle);
t_ins2.x -= lengthdir_x(-160,tmp_angle);
t_ins2.y -= lengthdir_y(-160,tmp_angle);