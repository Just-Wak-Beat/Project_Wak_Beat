/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])

var xx_w = camera_get_view_width(view_camera[0])
var yy_h = camera_get_view_height(view_camera[0])

global.c_x = xx-global.real_shake_x
global.c_y = yy-global.real_shake_y

global.c_w = xx+xx_w-global.real_shake_x
global.c_h = yy+yy_h-global.real_shake_y



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
var max_player_pos = global.n_progress/global.music_duration
draw_sprite_ext(spr_player,global.player_skin*7,xx+xx_w*0.29+font_size*32+font_size*(1433.6*max_player_pos),yy+font_size*80,font_size*0.5,font_size*0.5,0,c_white,progress_alpha_sec*0.9)

//progress bar icon
if global.low_graphics = false
{
draw_sprite_ext(spr_W,global.artifact_type,xx+xx_w*0.3+progress_icon_alpha*1430*font_size,yy+font_size*81*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,global.artifact_type,xx+xx_w*0.3+progress_icon_alpha*1436*font_size,yy+font_size*81*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,global.artifact_type,xx+xx_w*0.3+progress_icon_alpha*1433*font_size,yy+font_size*78*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
draw_sprite_ext(spr_W,global.artifact_type,xx+xx_w*0.3+progress_icon_alpha*1433*font_size,yy+font_size*84*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha*0.15)
}
draw_sprite_ext(spr_W,global.artifact_type,xx+xx_w*0.3+progress_icon_alpha*1433*font_size,yy+font_size*81*progress_icon_alpha,0.13*font_size,0.13*font_size,0,c_white,progress_icon_alpha)
}

//check point
draw_text_k_scale(xx+xx_w*0.5,yy+font_size*(140+global.savepoint_text_alpha*32),string(global.checkpoint_text),64,-1,global.savepoint_text_alpha*0.8,c_white,0,0,normal_font,font_size/2*(global.mobile_mode*0.5+1)*global.font_ratio_resolution_xx,font_size/2*(global.mobile_mode*0.5+1),0)


//music title
if global.t_selected_difficulty == 0
{
draw_text_k_scale(xx+xx_w-music_title_alpha*128*font_size,yy+yy_h-640*font_size,"Hardcore",64,-1,music_title_alpha,#bf1a5c,0,1,normal_font,font_size*global.font_ratio_resolution_xx*0.6,font_size*0.6,0)
}
draw_text_k_scale(xx+xx_w-music_title_alpha*128*font_size,yy+yy_h-600*font_size,global.n_music_title,64,-1,music_title_alpha,$FFBACDDB,0,1,normal_font,font_size*2*global.font_ratio_resolution_xx,font_size*2,0)

//music credit
var col = global.map_color
if col = c_black
{
col = c_white
}
draw_text_k_scale(xx+xx_w-music_title_alpha*128*font_size,yy+yy_h-350*font_size,"by",64*font_size,-1,music_title_alpha,col,0,1,light_font,font_size*0.7*global.font_ratio_resolution_xx,font_size*0.7,0)
draw_text_k_scale(xx+xx_w-music_title_alpha*128*font_size,yy+yy_h-256*font_size,string(global.n_music_artist),64*font_size,-1,music_title_alpha,col,0,1,light_font,font_size*0.85*global.font_ratio_resolution_xx,font_size*0.85,0)

draw_sprite_ext(spr_illustrationCG,global.player_skin*3+global.random_illustration,xx+music_title_alpha*430*font_size,yy+yy_h,font_size*2,font_size*2,0,c_white,music_title_alpha)



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
			if abs(global.map_speed_y) > 0
			{
			var save_ = instance_create_depth(0,0,player.depth+1,obj_savepoint)
			save_.n_savepoint_position = global.savepoint_position[i]
			save_.n_color = global.savepoint_color[i]
			save_.image_angle = 90
			}
			else
			{
			var save_ = instance_create_depth(room_width,0,player.depth+1,obj_savepoint)
			save_.n_savepoint_position = global.savepoint_position[i]
			save_.n_color = global.savepoint_color[i]
			}
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
	draw_sprite_ext(spr_clock,1,xx+xx_w*0.5,yy+yy_h*0.5+i*font_size*global.clock_alpha_1,clock_scale*0.5,clock_scale*0.5,0,c_white,clock_alpha*0.02)
	draw_sprite_ext(spr_clock,1,xx+xx_w*0.5+i*font_size*global.clock_alpha_1,yy+yy_h*0.5,clock_scale*0.5,clock_scale*0.5,0,c_white,clock_alpha*0.02)

	draw_sprite_ext(spr_rewind_clock,0,xx+xx_w*0.5,yy+yy_h*0.5+i*font_size*global.clock_alpha_1,clock_scale,clock_scale,0,c_white,clock_alpha*0.02)
	draw_sprite_ext(spr_rewind_clock,0,xx+xx_w*0.5+i*font_size*global.clock_alpha_1,yy+yy_h*0.5,clock_scale,clock_scale,0,c_white,clock_alpha*0.02)

	draw_sprite_ext(spr_clock,0,xx+xx_w*0.5,yy+yy_h*0.5+i*font_size*global.clock_alpha_1,clock_scale*0.5,clock_scale*0.5,global.rewind*13,c_white,clock_alpha*0.02)
	draw_sprite_ext(spr_clock,0,xx+xx_w*0.5+i*font_size*global.clock_alpha_1,yy+yy_h*0.5,clock_scale*0.5,clock_scale*0.5,global.rewind*13,c_white,clock_alpha*0.02)
	}
draw_sprite_ext(spr_clock,1,xx+xx_w*0.5,yy+yy_h*0.5,clock_scale*0.5,clock_scale*0.5,0,c_white,clock_alpha)

draw_sprite_ext(spr_rewind_clock,0,xx+xx_w*0.5,yy+yy_h*0.5,clock_scale,clock_scale,0,c_white,clock_alpha*0.5)

draw_sprite_ext(spr_clock,0,xx+xx_w*0.5,yy+yy_h*0.5,clock_scale*0.5,clock_scale*0.5,global.rewind*13,c_white,clock_alpha)



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




if global.select_map != 0 && abs(player.image_xscale) < 0.1
{
	for(var i = 0; i < global.total_map; i++)
	{
	var dis___ = 1/abs(global.select_map-2 - i)-0.2
	var dis_alpha = dis___*global.ui_alpha
	var dis_real = (1 - abs(global.select_map-2 - i)/6)
	
		if dis_alpha > 0
		{
		var selected_me = 0
		var locked_now = 0
			if global.artifact_owned[global.requirement_type[i]] < global.requirement_number[i]
			{
			locked_now = 1
				if round(global.t_select_map-2 - i) = 0
				{
				selected_me = 1
				draw_set_color(global.map_color)
				}
				else
				{
				draw_set_color(#68646f)
				}
			}
			else
			{
				if round(global.t_select_map-2 - i) = 0
				{
				selected_me = 1
				draw_set_color(global.map_color)
				}
				else
				{
				draw_set_color($FFCCCCCC)
				}
			}
	
			draw_set_alpha(dis_alpha)
			var xx_ = global.c_w+2-1920-selected_me*192+(abs(global.select_map-2 - i)*32)
			var yy_ = global.c_y+yy_h*0.72+256*(i-global.select_map)
			draw_rectangle(global.c_w,yy_-128+(abs(global.select_map-2 - i)*16),xx_,global.c_y+yy_h*0.72+128+256*(i-global.select_map)-(abs(global.select_map-2 - i)*16),false)

			//옆에 살짝 큰 사각형
			if selected_me = 0 && dis_alpha*3 > 0
			{
			draw_set_color(global.map_color)
			draw_set_alpha(dis_alpha*3)
			draw_rectangle(xx_+192*dis_real,yy_-128+(abs(global.select_map-2 - i)*16),xx_,global.c_y+yy_h*0.72+128+256*(i-global.select_map)-(abs(global.select_map-2 - i)*16),false)
			draw_set_alpha(dis_alpha)
			}
			
			//title
			if selected_me = 0
			{
				if locked_now = 0 && dis_alpha > 0.1
				{
				draw_text_k_scale(xx_+96*dis_real,yy_-64,global.n_rank[i],64,-1,dis_alpha,c_white,0,0,normal_font,dis_real,dis_real,0)
				
				if global.n_favorite[i] = 1
				{
				draw_sprite_ext(spr_heart,0,xx_+96*dis_real,yy_+64*dis_real,0.1*dis_real,0.1*dis_real,0,c_white,dis_alpha)
				}
				

				draw_text_k_scale(xx_+256*dis_real,yy_-90*dis_real,global.stage_map_name[i],64,-1,dis_alpha,global.map_color,0,-1,normal_font,dis_real*global.font_ratio_resolution_xx,dis_real,0)
				draw_text_k_scale(xx_+256*dis_real,yy_+35*dis_real,global.stage_map_artist[i],64,-1,dis_alpha,global.map_color,0,-1,light_font,0.5*dis_real*global.font_ratio_resolution_xx,0.5*dis_real,0)
				draw_text_k_scale(global.c_w-55*dis_real,yy_-47*dis_real,string(global.stage_map_difficulty[i]),64,-1,dis_alpha,global.map_color,0,1,normal_font,0.75*dis_real,0.75*dis_real,0)
				draw_text_k_scale(global.c_w-55*dis_real,yy_-108*dis_real,string(global.stage_bpm[i])+"BPM",64,-1,dis_alpha,global.map_color,0,1,normal_font,0.5*dis_real,0.5*dis_real,0)
					
					for(var k = 0; k <= global.detailed_difficulty[i]; k++)
					{
					draw_rectangle(global.c_w-(320-k*40)*dis_real,yy_+(64+(abs(global.select_map-2 - i)*16))*dis_real,global.c_w-(320+32-k*40)*dis_real,yy_+(32+(abs(global.select_map-2 - i)*16))*dis_real,false)
					}
				
					for(var k = 7; k > global.detailed_difficulty[i]; k--)
					{
					draw_rectangle(global.c_w-(320-k*40)*dis_real,yy_+(64+(abs(global.select_map-2 - i)*16))*dis_real,global.c_w-(320+32-k*40)*dis_real,yy_+(32+(abs(global.select_map-2 - i)*16))*dis_real,true)
					}
				}
			}
			else
			{
				if dis_alpha > 0.1
				{
					if locked_now = 0
					{
					draw_text_k_scale(xx_+256,yy_-118,global.stage_map_name[i],64,-1,dis_alpha,c_white,0,-1,normal_font,global.font_ratio_resolution_xx,1,0)
					draw_text_k_scale(xx_+256,yy_+3,global.stage_map_artist[i],64,-1,dis_alpha,c_white,0,-1,light_font,0.6*global.font_ratio_resolution_xx,0.6,0)
					draw_text_k_scale(global.c_w-55*dis_real,yy_-47*dis_real,string(global.stage_map_difficulty[i]),64,-1,dis_alpha,c_white,0,1,normal_font,0.75*global.font_ratio_resolution_xx,0.75,0)
					draw_text_k_scale(global.c_w-55*dis_real,yy_-108*dis_real,string(global.stage_bpm[i])+"BPM",64,-1,dis_alpha,c_white,0,1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
					
						if global.n_favorite[i] = 1
						{
						draw_sprite_ext(spr_heart,0,xx_+160,yy_,0.2*global.fav_anime,0.2*global.fav_anime,0,c_white,1)
						
							if global.fav_anime <= 0.9 && audio_is_playing(favorite_sfx)
							{
								repeat(choose(2,3))
								{
								var effect_ = instance_create_depth(xx_+160+irandom_range(-global.fav_anime*32,global.fav_anime*32),yy_+irandom_range(-32+global.fav_anime,global.fav_anime*16),obj_album_ui.depth-15,movement_effect)
								effect_.sprite_index = spr_circle
								effect_.image_xscale = 0.01
								effect_.image_yscale = 0.01
								effect_.direction = 90
								effect_.speed = 16-global.fav_anime*10
								effect_.image_blend = c_white
								}
							}
						}
					
					
						for(var k = 0; k <= global.detailed_difficulty[i]; k++)
						{
						draw_rectangle(global.c_w-320+k*40,yy_+(84+(abs(global.select_map-2 - i)*16))*dis_real,global.c_w-320-32+k*40,yy_+(52+(abs(global.select_map-2 - i)*16))*dis_real,false)
						}
				
						for(var k = 7; k > global.detailed_difficulty[i]; k--)
						{
						draw_rectangle(global.c_w-320+k*40,yy_+(84+(abs(global.select_map-2 - i)*16))*dis_real,global.c_w-320-32+k*40,yy_+(52+(abs(global.select_map-2 - i)*16))*dis_real,true)
						}
					}
				}
			}
	
			//outline
			draw_set_color(global.map_color)
			for(var ii = 0; ii <= 6; ii++)
			{
			draw_rectangle(global.c_w-ii,yy_+ii-128+(abs(global.select_map-2 - i)*16),xx_+ii,global.c_y-ii+yy_h*0.72+128+256*(i-global.select_map)-(abs(global.select_map-2 - i)*16),true)
			}
			
			
			
			if locked_now = 1
			{
				if selected_me = 0
				{
				draw_sprite_ext(spr_lock,0,xx_+112*dis_real,yy_,global.font_ratio_resolution_xx*0.25*dis_real,0.25*dis_real,0,c_white,global.ui_alpha*dis_real)
				draw_text_k_scale(xx_+246*dis_real,yy_-64*dis_real,"해금 조건",64,-1,dis_alpha,global.map_color,0,-1,normal_font,0.5*dis_real*global.font_ratio_resolution_xx,0.5*dis_real,0)
				
				draw_sprite_ext(spr_W,global.requirement_type[i],xx_+276*dis_real,yy_+32*dis_real,global.font_ratio_resolution_xx*0.15*dis_real,0.15*dis_real,20,c_white,global.ui_alpha*dis_real)
				draw_text_k_scale(xx_+296*dis_real,yy_+32*dis_real,"x"+string(global.requirement_number[i]),64,-1,dis_alpha,c_white,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
				}
				else
				{
				draw_sprite_ext(spr_lock,0,xx_+1080,yy_,global.font_ratio_resolution_xx*0.25*dis_real,0.25*dis_real,0,c_white,global.ui_alpha*dis_real)
				draw_text_k_scale(xx_+1156,yy_-64,"해금 조건",64,-1,dis_alpha,c_white,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
				
				draw_sprite_ext(spr_W,global.requirement_type[i],xx_+1236,yy_+32,global.font_ratio_resolution_xx*0.15,0.15,20,c_white,global.ui_alpha*dis_real)
				draw_text_k_scale(xx_+1256,yy_+32,"x"+string(global.requirement_number[i]),64,-1,dis_alpha,c_white,0,-1,normal_font,0.5*global.font_ratio_resolution_xx,0.5,0)
				}
			}
		}
	}
	
	if gamestart != 2
	{
	var color__bg = merge_color(global.map_color,c_black,0.7)
	var col_cal = merge_color(color__bg,c_white,global.background_w_alpha)
	draw_set_color(col_cal)
	draw_set_alpha(1)
	draw_line_width(global.c_w-3070-gamestart_anime*2300,global.c_y,global.c_w-3070-gamestart_anime*2300,global.c_y+yy_h,2000)
	
	var scale = (2.8+gamestart_anime*5)*0.5
	draw_sprite_ext(circle_x2048,1,global.c_w-640,global.c_y+yy_h*0.47,scale,scale,0,col_cal,1)
	
	//var xx__ = global.c_w-640
	//var yy__ = global.c_y+yy_h*0.47
	//draw_set_alpha(1)
	//draw_set_color(merge_color(global.map_color,c_white,global.background_w_alpha*10))
	//var scale = 2.7+gamestart_anime*5
	//for(var i = -6; i <= 6; i++)
	//{
	//draw_circle(xx__,yy__+i,1024*0.5*scale,true)
	//draw_circle(xx__+i,yy__,1024*0.5*scale,true)
	//draw_circle(xx__+i,yy__+i,1024*0.5*scale,true)
	//draw_circle(xx__-i,yy__-i,1024*0.5*scale,true)
	//}
	draw_sprite_ext(circle_x2048,0,global.c_w-640,global.c_y+yy_h*0.47,scale,scale,0,merge_color(global.map_color,c_white,global.background_w_alpha*10),1)
	}
	
	var changed_music = 0
	if gamestart = 0
	{
		if global.mobile_mode = 0
		{
			if (keyboard_check_pressed(vk_down)|| mouse_wheel_down())
			{
			changed_music = 1
			global.t_select_map ++
			}
	
			if (keyboard_check_pressed(vk_up) || mouse_wheel_up())
			{
			changed_music = 1
			global.t_select_map --
			}
			
			if global.t_select_map <= 1
			{
			global.t_select_map = global.total_map+1
			}
	
			if global.t_select_map > global.total_map+1
			{
			global.t_select_map = 2
			}
		}
		else
		{
			if global.scroll_activated != -1
			{
				global.scroll_n_m_xx = device_mouse_x(global.scroll_activated)
				global.scroll_n_m_yy = device_mouse_y(global.scroll_activated)
			
				global.t_select_map += (global.joystick_yy - global.scroll_n_m_yy)/1080
				global.reload_n_map_list_value = (global.joystick_xx - global.scroll_n_m_xx)/512
				global.joystick_xx += (global.scroll_n_m_xx - global.joystick_xx)*0.2
				global.joystick_yy += (global.scroll_n_m_yy - global.joystick_yy)*0.2
				global.select_map += (global.t_select_map - global.select_map)*0.3
			}
			else
			{
				var y_plusment = (global.joystick_yy - global.scroll_n_m_yy)/1080
				if abs(y_plusment) > 0.01
				{
					global.t_select_map += y_plusment
					global.joystick_yy += (global.scroll_n_m_yy - global.joystick_yy)*0.3
				}
				else
				{
					global.t_select_map = round(global.t_select_map)
				}
				
				if abs(y_plusment) > 1
				{
					global.clicking_timer = 10
				}
				
				global.reload_n_map_list_value = (global.scroll_n_m_xx - global.joystick_xx)/512
				if abs(global.reload_n_map_list_value) > 0.5
				{
					global.n_map_list += sign(global.reload_n_map_list_value)
					global.reload_n_map_list_value = sign(global.reload_n_map_list_value)
					global.joystick_xx = global.scroll_n_m_xx
					global.clicking_timer = 10
					event_user(1)
					scrolling_map = -4
				}
				global.joystick_xx += (global.scroll_n_m_xx - global.joystick_xx)*0.2
			}
			
			
			if scrolling_map != round(global.t_select_map)
			{
			scrolling_map = round(global.t_select_map)
			changed_music = 1
			}
			
			
			if global.t_select_map <= 1
			{
			global.t_select_map = 2
			}
	
			if global.t_select_map > global.total_map+1
			{
			global.t_select_map = global.total_map+1
			}
		}

	
		n_stage = round(global.t_select_map-2)
		
		if n_stage < 0
		{
		n_stage = 0
		}
		
		
		
		var go_play = false
		if global.select_difficulty < 0.1 && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+300) > 80
		{
			if global.mobile_mode = 1
			{
				if global.clicking_timer <= 4 && mouse_check_button_released(mb_left) && mouse_x >= xx+xx_w*0.5
				{
					go_play = true
				}
			}
			else
			{
				if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || (mouse_check_button_pressed(mb_left) && mouse_x >= xx+xx_w*0.5)
				{
					go_play = true
				}
			}
		}
		
		//스테이지 선택완료 - 난이도 선택 (게임 시작)
		if global.sync_setting_alpha < 0.1 && global.artifact_owned[global.requirement_type[n_stage]] >= global.requirement_number[n_stage] && go_play
		{
			if global.real_stage_map_difficulty[n_stage] == "Tutorial"
			{
				gamestart = 1;
				global.t_selected_difficulty = 1;
				audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
			}
			else if string_pos("(Hardcore)", global.stage_map_difficulty[n_stage]) != 0
			{
				gamestart = 1;
				global.t_selected_difficulty = 0;
				audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2)
			}
			else
			{
				gamestart = 1.1
				global.selected_difficulty = 0.5
				global.t_select_difficulty = 1
				audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
			}
		}
	
	
		//음악 재로드 (음악 선택중 나오는 미리듣기)
		if changed_music = 1
		{
			play_highlight = 1
			obj_album_ui.y = room_height
			obj_album_ui.image_xscale = 0
			obj_album_ui.image_yscale = 0
			obj_album_ui.image_angle = 0
			load_stage(global.stage_map_name[n_stage],global.stage_map_artist[n_stage],global.stage_map_audio_name[n_stage],global.stage_map_color[n_stage],global.stage_map_duration[n_stage],global.stage_bpm[n_stage])
		}
		
		var x_plusment = (global.joystick_xx - global.scroll_n_m_xx)/512
		var __added_fav_list = keyboard_check_pressed(vk_shift) || (obj_album_ui.clicked_ == 1 && mouse_x < xx+xx_w*0.5 && x_plusment < 0.3)
		
		if __added_fav_list && global.n_map_list != 2 && global.artifact_owned[global.requirement_type[n_stage]] >= global.requirement_number[n_stage]
		{
			obj_album_ui.clicked_ = 0;
			global.fav_anime = 0
			audio_play_sound(favorite_sfx,0,false,global.master_volume*global.sfx_volume*2)

			if global.n_map_list != 1
			{
				//좋아요 누른 곡 따로 분류
				add_favorite_music(global.n_map_list);
		
				global.real_n_favorite[n_stage] *= -1
			}
			else
			{
				global.real_n_favorite[global.fav_map_id[n_stage]] *= -1
				load_musicList(global.n_map_list)
				load_stage(global.stage_map_name[n_stage],global.stage_map_artist[n_stage],global.stage_map_audio_name[n_stage],global.stage_map_color[n_stage],global.stage_map_duration[n_stage],global.stage_bpm[n_stage])
			}
			global.n_favorite[n_stage] *= -1
			save_and_load_data(0,0)
		}
	}
	
	
//alpha text
draw_text_k_scale(xx+32,global.c_h-140,"Just Wak and Beats ("+string(global.version)+")",64,-1,floor(global.ui_alpha),c_white,0,-1,normal_font,0.5,0.5,0)
var __string__ = (global.mobile_mode == 1) ? program_directory : "Presented by ABER"
draw_text_k_scale(xx+32,global.c_h-100,__string__,64,-1,floor(global.ui_alpha)*0.6,c_white,0,-1,normal_font,0.4,0.4,0)
draw_text_k_scale(xx+32,global.c_h-100,"Now loading...",64,-1,1 - global.ui_alpha,c_white,0,-1,normal_font,0.5,0.5,0)


	if global.n_sync > 0 && global.dev_mode > 0
	{
	draw_text_k_scale(xx+32,global.c_y+100,"Music Sync : "+string(global.n_sync),64,-1,0,c_white,0,-1,normal_font,0.5,0.5,0)
	}


	if global.mobile_mode = 1
	{
	draw_text_k_scale(xx+32,global.c_h-32,"Resolution ("+string(display_get_height())+"x"+string(display_get_width())+" / "+string(window_get_height())+"x"+string(window_get_width())+" / "+string(global.font_ratio_resolution_xx)+") ",64,-1,global.ui_alpha,c_white,0,-1,normal_font,0.4,0.4,0)
	}
}

if global.rank_display_alpha > 0
{
var font_size____ = 0.5*(1+global.mobile_mode*0.3)*(1+global.rank_display_r_alpha*0.5)
draw_text_k_scale(xx+xx_w-108,global.c_y+32,"현재 랭크\n"+string(global.n_rank_display),70,-1,global.rank_display_alpha,merge_color(c_white,#bf1a5c,global.rank_display_r_alpha),0,0,normal_font,font_size____*global.font_ratio_resolution_xx,font_size____,0)
}




if gamestart >= 2 && global.sync_setting_alpha >= 0.01 && global.n_progress > 1
{
var fontsize2 = 0.65*(1+global.mobile_mode*0.3)
var fontsize3 = 0.52*(1+global.mobile_mode*0.3)


draw_set_alpha(global.sync_setting_alpha*0.93+(global.back_to_game/120)*0.07)
draw_set_color(c_black)
draw_line_width(global.c_x,global.c_y,global.c_w,global.c_h,room_width)

var text__ = (global.mobile_mode == 0) ? "Space를 눌러/홀드하여 창 닫기 혹은 매인메뉴로 돌아가기" : "화면을 터치/홀드하여 창 닫기 혹은 매인메뉴로 돌아가기"
draw_text_k_scale(xx+xx_w*0.5,yy+yy_h*0.5-36,text__,64,-1,global.sync_setting_alpha,c_white,0,0,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

	if (global.n_setting_button = 9999 || global.n_setting_button = -4) && keyboard_check(vk_space)
	{
	global.back_to_game++
	global.n_setting_button = 9999
	}
	
	if keyboard_check_released(vk_space)
	{
		if global.back_to_game <= 120
		{
		global.back_to_game = 0
		global.sync_setting = 0
		global.cannot_control = 0
		instance_destroy(obj_button)
		save_and_load_data(0,0)
		global.n_setting_button = -4
		}
	global.back_to_game = 0
	}
	
draw_set_alpha(global.back_to_game/60)
draw_line_width(xx,yy+yy_h*0.5,xx+xx_w*(global.back_to_game/120),yy+yy_h*0.5,font_size*96)


draw_text_k_scale(xx+64,yy+yy_h*(0.69-global.mobile_mode*0.03),"마스터 볼륨",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+64,yy+yy_h*(0.79-global.mobile_mode*0.03),"효과음 볼륨",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+64,yy+yy_h*(0.89-global.mobile_mode*0.03),"음악 볼륨",64,-1,global.sync_setting_alpha,c_white,0,-1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)

draw_text_k_scale(xx+xx_w-64,yy+yy_h*(0.85-global.mobile_mode*0.03),"사용자 지정 오프셋",64,-1,global.sync_setting_alpha,c_white,0,1,normal_font,fontsize2*global.font_ratio_resolution_xx,fontsize2,0)
draw_text_k_scale(xx+xx_w-64,yy+yy_h*0.885,"(음악 싱크가 맞지 않는다면 사용해보세요)",64,-1,global.sync_setting_alpha,c_white,0,1,light_font,fontsize3*global.font_ratio_resolution_xx,fontsize3,0)
}



draw_set_color(c_white)
draw_set_alpha(global.w_alpha)
draw_line_width(0,0,room_width,room_height,5000)



//조이스틱
if global.joystick_alpha > 0.01
{
var joystick_size_real = global.joystick_size*global.camera_sx
var joystick_size__ = joystick_size_real/512
draw_sprite_ext(spr_joystick,0,global.joystick_xx,global.joystick_yy,joystick_size__*global.font_ratio_resolution_xx,joystick_size__,0,c_white,global.joystick_alpha*0.1)


	if global.joystick_activated != -1
	{
	var rad__ = joystick_size_real*0.5
	global.joystick_n_xx = device_mouse_x(global.joystick_activated)
	global.joystick_n_yy = device_mouse_y(global.joystick_activated)
	
	global.joystick_dir = point_direction(global.joystick_xx,global.joystick_yy,global.joystick_n_xx,global.joystick_n_yy)
		if point_distance(global.joystick_xx,global.joystick_yy,global.joystick_n_xx,global.joystick_n_yy) > rad__
		{
		global.joystick_n_xx = global.joystick_xx+lengthdir_x(rad__,global.joystick_dir)
		global.joystick_n_yy = global.joystick_yy+lengthdir_y(rad__,global.joystick_dir)
		}
	}
	else
	{
	global.joystick_n_xx += (global.joystick_xx - global.joystick_n_xx)*0.2
	global.joystick_n_yy += (global.joystick_yy - global.joystick_n_yy)*0.2
	}
	

draw_sprite_ext(spr_circle,0,global.joystick_n_xx,global.joystick_n_yy,joystick_size__*0.35*global.font_ratio_resolution_xx*0.5,joystick_size__*0.35*0.5,0,c_white,global.joystick_alpha*0.15)
}






