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





draw_set_color(c_white)
draw_set_alpha(global.w_alpha)
draw_line_width(0,0,room_width,room_height,5000)