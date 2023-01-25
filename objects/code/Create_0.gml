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
global.n_music_id = wakgoodhyang;
global.n_music_instance = -4
global.map_color = $FFFF9838
music_title_alpha = 0

global.bpm = 172


global.player_color = $FF4AB539
global.n_progress = 0
global.music_duration = 6900 //x60된 값(프레임 값 보정) > origin = 115 sec 


global.camera_sx = -4
global.w_alpha = 0