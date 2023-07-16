
for(var i = 0; i <= 50; i++)
{
create_spike_circle(global.c_w,i*96,-4,-15,99999,0,0,0.25)
}



if !instance_exists(obj_stage_clear) && global.tutorial_n_stage = 2
{
instance_create_depth(global.c_w+128,room_height*0.5,obj_player.depth-1,obj_stage_clear)
}