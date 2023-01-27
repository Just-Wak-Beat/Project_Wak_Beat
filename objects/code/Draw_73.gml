/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])

var xx_w = camera_get_view_width(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])

global.c_x = xx
global.c_y = yy

global.c_w = xx+xx_w
global.c_h = yy+yy_h



var font_size = global.camera_sx

if global.n_playing_tutorial != 1
{
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
var max_player_pos = global.n_progress/global.music_duration
draw_line_width(xx+xx_w*0.29+font_size*32+font_size*((1433.6*max_player_pos)-14),yy+font_size*80,xx+font_size*32+xx_w*0.29+font_size*((1433.6*global.n_progress/global.music_duration)+14),yy+font_size*80,28*font_size)

//progress bar icon
draw_sprite_ext(spr_W,0,xx+xx_w*0.3+progress_icon_alpha*1430*font_size,yy+font_size*81*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,0,xx+xx_w*0.3+progress_icon_alpha*1436*font_size,yy+font_size*81*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,0,xx+xx_w*0.3+progress_icon_alpha*1433*font_size,yy+font_size*78*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,0,xx+xx_w*0.3+progress_icon_alpha*1433*font_size,yy+font_size*84*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,0,xx+xx_w*0.3+progress_icon_alpha*1433*font_size,yy+font_size*81*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha)
}

//check point
draw_text_k_scale(xx+xx_w*0.5,yy+font_size*(140+global.savepoint_text_alpha*32),string(global.checkpoint_text),64,-1,global.savepoint_text_alpha*0.8,c_white,0,0,normal_font,font_size/2,font_size/2,0)


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
		save_.n_color = global.savepoint_color[i]
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




if global.select_map != 0
{
global.background_color = $FF343434
	for(var i = 0; i < global.total_map; i++)
	{
	var dis___ = 1/abs(global.select_map-2 - i)-0.2
	draw_set_alpha(dis___)
	
		if dis___ > 0
		{
		var selected_me = 0
			if (global.t_select_map-2 - i) = 0
			{
			selected_me = 1
			draw_set_color(global.map_color)
			}
			else
			{
			draw_set_color($FFCCCCCC)
			}
	

			var xx_ = global.c_w+2-1920-selected_me*192+(abs(global.select_map-2 - i)*32)
			var yy_ = global.c_y+yy_h*0.72+256*(i-global.select_map)
			draw_rectangle(global.c_w,yy_-128+(abs(global.select_map-2 - i)*16),xx_,global.c_y+yy_h*0.72+128+256*(i-global.select_map)-(abs(global.select_map-2 - i)*16),false)
			
			//title
			if selected_me = 0
			{
			var dis_real = (1 - abs(global.select_map-2 - i)/6)
			draw_text_k_scale(xx_+256,yy_-64,global.stage_map_name[i],64,-1,dis___,global.map_color,0,-1,normal_font,1*dis_real,1*dis_real,0)
			draw_text_k_scale(xx_+256,yy_+32,global.stage_map_artist[i],64,-1,dis___,global.map_color,0,-1,light_font,0.5*dis_real,0.5*dis_real,0)
			draw_text_k_scale(global.c_w-64,yy_-32,string(global.stage_map_difficulty[i]),64,-1,dis___,global.map_color,0,1,normal_font,0.75*dis_real,0.75*dis_real,0)
			}
			else
			{
			draw_text_k_scale(xx_+256,yy_-96,global.stage_map_name[i],64,-1,dis___,c_white,0,-1,normal_font,1,1,0)
			draw_text_k_scale(xx_+256,yy_,global.stage_map_artist[i],64,-1,dis___,c_white,0,-1,light_font,0.6,0.6,0)
			draw_text_k_scale(global.c_w-64,yy_-32,string(global.stage_map_difficulty[i]),64,-1,dis___,c_white,0,1,normal_font,0.75,0.75,0)
			}
	
			//outline
			draw_set_color(global.map_color)
			for(var ii = 0; ii <= 6; ii++)
			{
			draw_rectangle(global.c_w-ii,yy_+ii-128+(abs(global.select_map-2 - i)*16),xx_+ii,global.c_y-ii+yy_h*0.72+128+256*(i-global.select_map)-(abs(global.select_map-2 - i)*16),true)
			}
		}
	}
	
	if gamestart != 2
	{
	draw_set_color(#373b40)
	draw_set_alpha(1)
	draw_line_width(global.c_w-3070-gamestart_anime*2300,global.c_y,global.c_w-3070-gamestart_anime*2300,global.c_y+yy_h,2000)
	
	draw_sprite_ext(circle_x1024,1,global.c_w-640,global.c_y+yy_h*0.47,2.8+gamestart_anime*5,3+gamestart_anime*5,0,#373b40,1)
	draw_sprite_ext(circle_x1024,0,global.c_w-640,global.c_y+yy_h*0.47,2.8+gamestart_anime*5,3+gamestart_anime*5,0,global.map_color,1)
	}
	
	var changed_music = 0
	if gamestart = 0
	{
		if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_right) || mouse_wheel_down())
		{
		changed_music = 1
		global.t_select_map ++
		}
	
		if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_left) || mouse_wheel_up())
		{
		changed_music = 1
		global.t_select_map --
		}
	
		if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left))
		{
		gamestart = 1
		audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
		}
	
		if global.t_select_map <= 1
		{
		global.t_select_map = 2
		}
	
		if global.t_select_map > global.total_map+1
		{
		global.t_select_map = global.total_map+1
		}
	
		n_stage = global.t_select_map-2
	
		if changed_music = 1
		{
		play_highlight = 1
		obj_album_ui.y = room_height
		obj_album_ui.image_xscale = 0
		obj_album_ui.image_yscale = 0
		load_stage(global.stage_map_name[n_stage],global.stage_map_artist[n_stage],global.stage_map_audio_name[n_stage],global.stage_map_color[n_stage],global.stage_map_duration[n_stage],global.stage_bpm[n_stage])
		}
	}
	
	
//alpha text
draw_text_k_scale(xx+32,global.c_h-64,"Just Wak and Beats (Beta 1.0)",64,-1,1,c_white,0,-1,normal_font,0.5,0.5,0)
}






draw_set_color(c_white)
draw_set_alpha(global.w_alpha)
draw_line_width(0,0,room_width,room_height,5000)