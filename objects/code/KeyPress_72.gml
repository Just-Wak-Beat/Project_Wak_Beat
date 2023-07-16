/// @description Insert description here
// You can write your code in this editor
if global.dev_mode = 1
{
var save_ = instance_create_depth(room_width,0,obj_player.depth+1,obj_savepoint)
save_.n_savepoint_position = global.savepoint_position[1]
save_.n_color = global.savepoint_color[1]
}