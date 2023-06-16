/// @description Insert description here
// You can write your code in this editor

if (global.n_scroll < 0)
{
	global.n_scroll = 0;
}

if (global.n_scroll > 16384)
{
	global.n_scroll = 16384;
}

draw_text_k_scale(32,32,"- Server log",64,-1,1,c_white,0,-1,font0,0.4,0.4,0)
for(var i = 0; i < 28; i++)
{
	draw_text_k_scale(32,128+i*16,global.server_log[floor(global.n_scroll/64)+i],64,-1,1,c_white,0,-1,font0,0.4,0.4,0)
}

if (global.chat_alpha > 0)
{
	draw_set_alpha(global.chat_alpha)
	draw_set_color(c_white)
	draw_line_width(24,680,256,680,3)
	
	draw_text_k_scale(32,690,global.n_chat,64,-1,global.chat_alpha,c_white,0,-1,font0,0.4,0.4,0)
	draw_text_k_scale(32+string_width(global.n_chat)/2.5,690,"|",64,-1,global.chat_alpha*sign(sin(blank_timer/60)),c_white,0,-1,font0,0.4,0.4,0)
}

global.chat_alpha += (global.chat_activated - global.chat_alpha)*0.1

if (keyboard_check_pressed(vk_enter) || (keyboard_check_pressed(vk_space) && global.chat_activated != 1))
{
	if (global.chat_activated == 1)
	{
		add_log(global.n_chat);
	}
	
	global.chat_activated *= -1;
	keyboard_string = "";
	blank_timer = 0;
}

if (global.chat_activated == 1)
{
	global.n_chat = keyboard_string;
	blank_timer += pi;
}