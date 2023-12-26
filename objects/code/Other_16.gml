/// @description 미리듣기 음악 재로드
// You can write your code in this editor
if instance_exists(obj_album_ui)
{
	play_highlight = 1
	obj_album_ui.y = room_height
	obj_album_ui.image_xscale = 0
	obj_album_ui.image_yscale = 0
	obj_album_ui.image_angle = 0
	load_stage(global.stage_map_name[n_stage],global.stage_map_artist[n_stage],global.stage_map_audio_name[n_stage],global.stage_map_color[n_stage],global.stage_map_duration[n_stage],global.stage_bpm[n_stage])
	merge_color_new(global.map_color,c_black,0.9)
}
else
{
	alarm[2] = 1
}

