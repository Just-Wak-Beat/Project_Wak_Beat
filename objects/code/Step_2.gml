/// @description Insert description here
// You can write your code in this editor




if global.fukurou_snow_effect > 0
{
global.fukurou_snow_effect++
	if global.fukurou_snow_effect > 10
	{
	create_explo_circle(irandom_range(global.c_x,global.c_w),global.c_y,irandom_range(1,30),7200,0,0,0.05,2,4,0)
	global.fukurou_snow_effect = 1
	}
}