/// @description Insert description here
// You can write your code in this editor


var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])

var xx_w = camera_get_view_width(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])


var font_size = global.camera_sx


//progress bar
draw_set_color(global.map_color)
draw_set_alpha(progress_alpha*0.1*progress_alpha)
draw_line_width(xx+xx_w*0.3,yy+font_size*80,xx+xx_w*0.3+progress_icon_alpha*1401*font_size,yy+font_size*80,64*font_size)


//n_progress bar
draw_set_color(c_black)
draw_set_alpha(progress_alpha*0.25*progress_alpha)
draw_line_width(xx+xx_w*0.3+font_size*32,yy+font_size*80,xx+xx_w*0.3+progress_icon_alpha*1401*font_size,yy+font_size*80,16*font_size)


//icon background (progress bar)
draw_set_color(global.map_color)
draw_set_alpha(progress_alpha_sec*0.5)
draw_line_width(xx+xx_w*0.7-font_size*35,yy+font_size*80,xx+xx_w*0.7+font_size*32,yy+font_size*80,64*font_size)

//n_progress player (progress bar)
draw_set_color(global.player_color)
draw_set_alpha(progress_alpha_sec*0.9)
draw_line_width(xx+xx_w*0.3+font_size*32+font_size*((1433.6*global.n_progress/global.music_duration)-14),yy+font_size*80,xx+font_size*32+xx_w*0.3+font_size*((1433.6*global.n_progress/global.music_duration)+14),yy+font_size*80,28*font_size)


//progress bar icon
draw_sprite_ext(spr_W,0,xx+xx_w*0.3+progress_icon_alpha*1430*font_size,yy+font_size*81*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,0,xx+xx_w*0.3+progress_icon_alpha*1436*font_size,yy+font_size*81*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,0,xx+xx_w*0.3+progress_icon_alpha*1433*font_size,yy+font_size*78*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,0,xx+xx_w*0.3+progress_icon_alpha*1433*font_size,yy+font_size*84*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,0,xx+xx_w*0.3+progress_icon_alpha*1433*font_size,yy+font_size*81*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha)

//music title
draw_text_k_scale(xx+xx_w-music_title_alpha*128*font_size,yy+yy_h-512*font_size,global.n_music_title,64,-1,music_title_alpha,$FFBACDDB,0,1,normal_font,font_size*2,font_size*2,0)

//music credit
draw_text_k_scale(xx+xx_w-music_title_alpha*128*font_size,yy+yy_h-350*font_size,"by",64*font_size,-1,music_title_alpha,global.map_color,0,1,light_font,font_size*0.7,font_size*0.7,0)
draw_text_k_scale(xx+xx_w-music_title_alpha*128*font_size,yy+yy_h-256*font_size,string(global.n_music_artist),64*font_size,-1,music_title_alpha,global.map_color,0,1,light_font,font_size*0.85,font_size*0.85,0)


for(var i = 0; i <= 5; i++)
{
	if global.savepoint_position[i] != -4
	{
	var _xx_ = xx+xx_w*0.3+font_size*32+1433.6*font_size*(global.savepoint_position[i]/global.music_duration)
	
	draw_set_color(global.map_color)
	draw_set_alpha(progress_alpha_sec*0.9)
	draw_line_width(_xx_,yy+font_size*50,_xx_,yy+font_size*70,4*font_size)
	draw_line_width(_xx_,yy+font_size*90,_xx_,yy+font_size*110,4*font_size)
	
		if global.n_progress = global.savepoint_position[i] && !audio_is_playing(cleared_sfx)
		{
		var save_ = instance_create_depth(room_width,0,player.depth+1,obj_savepoint)
		save_.n_savepoint_position = global.savepoint_position[i]
		}
	}
}


if global.clock_alpha_1 > 0
{
var clock_scale = (2 - global.clock_alpha_1)*font_size*4
var clock_alpha = global.clock_alpha_2*global.clock_alpha_1

	if clock_scale <= 0
	{
	clock_scale = 0
	}

	for(var i = -15; i <= 15; i++)
	{
	draw_sprite_ext(spr_rewind_clock,5,xx+xx_w*0.5,yy+yy_h*0.5+i*font_size*global.clock_alpha_1,clock_scale,clock_scale,0,c_white,clock_alpha*0.02)
	draw_sprite_ext(spr_rewind_clock,5,xx+xx_w*0.5+i*font_size*global.clock_alpha_1,yy+yy_h*0.5,clock_scale,clock_scale,0,c_white,clock_alpha*0.02)

	draw_sprite_ext(spr_rewind_clock,4,xx+xx_w*0.5,yy+yy_h*0.5+i*font_size*global.clock_alpha_1,clock_scale,clock_scale,0,c_white,clock_alpha*0.02)
	draw_sprite_ext(spr_rewind_clock,4,xx+xx_w*0.5+i*font_size*global.clock_alpha_1,yy+yy_h*0.5,clock_scale,clock_scale,0,c_white,clock_alpha*0.02)

	draw_sprite_ext(spr_rewind_clock,3,xx+xx_w*0.5,yy+yy_h*0.5+i*font_size*global.clock_alpha_1,clock_scale,clock_scale,global.rewind*13,c_white,clock_alpha*0.02)
	draw_sprite_ext(spr_rewind_clock,3,xx+xx_w*0.5+i*font_size*global.clock_alpha_1,yy+yy_h*0.5,clock_scale,clock_scale,global.rewind*13,c_white,clock_alpha*0.02)
	}
draw_sprite_ext(spr_rewind_clock,5,xx+xx_w*0.5,yy+yy_h*0.5,clock_scale,clock_scale,0,c_white,clock_alpha)

draw_sprite_ext(spr_rewind_clock,4,xx+xx_w*0.5,yy+yy_h*0.5,clock_scale,clock_scale,0,c_white,clock_alpha*0.5)

draw_sprite_ext(spr_rewind_clock,3,xx+xx_w*0.5,yy+yy_h*0.5,clock_scale,clock_scale,global.rewind*13,c_white,clock_alpha)



draw_set_color(c_white)
	for(var i = 0; i < 16; i++)
	{
		for(var ii = -16; ii < 16; ii++)
		{
		draw_set_alpha((global.rewind*0.001+clock_alpha/(1+i))*0.02)
		draw_line_width(xx,yy+global.rewind_effect_line_pos[i]-global.rewind_effect_line_angle+ii,xx+xx_w,yy+global.rewind_effect_line_pos[i]+global.rewind_effect_line_angle+ii,(i*4)*font_size)
		}
	}
}








draw_set_color(c_white)
draw_set_alpha(global.w_alpha)
draw_line_width(0,0,room_width,room_height,5000)