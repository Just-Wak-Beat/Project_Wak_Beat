/// @description Insert description here
// You can write your code in this editor
if global.dev_mode = 1
{
instance_create_depth(global.c_w+128,irandom_range(global.c_y,global.c_h),obj_player.depth-1,obj_stage_clear)
}
