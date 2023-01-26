/// @description Insert description here
// You can write your code in this editor

window_set_fullscreen(true)
window_set_size(1920,1080)
window_set_fullscreen(true)
window_set_size(1920,1080)
window_set_max_width(1920)
window_set_max_height(1080)
surface_resize(application_surface, display_get_width (), display_get_height ());


global.master_volume = 1
global.bgm_volume = 1
global.sfx_volume = 1

global.show_progress_bar = 0
progress_icon_alpha = 0
progress_alpha = 0
progress_alpha_sec = 0



global.show_music_title = 1

global.n_music_title = "왁굳향100% 첨가"
global.n_music_artist = "제이타지"
global.n_music_id = -4;
global.n_music_name = "wakgoodhyang"
global.n_music_instance = -4
global.map_color = $FFFF9838
music_title_alpha = 0

global.bpm = 172


global.player_color = $FF4AB539
global.n_progress = 0
global.music_duration = 6900 //x60된 값(프레임 값 보정) > origin = 115 sec

global.start_point = 0
for(var i = 0; i <= 5; i++)
{
global.savepoint_position[i] = -4
}
global.respawn_point_xx = -4
global.respawn_point_yy = -4


global.camera_sx = -4
global.w_alpha = 0


global.rewind = 0
global.clock_alpha_1 = 0
global.clock_alpha_2 = 0

global.c_w = -4
global.c_h = -4

global.c_x = -4
global.c_y = -4


global.rewind_effect_line_angle = 0
for(var i = 0; i < 16; i++)
{
global.rewind_effect_line_pos[i] = -4
}