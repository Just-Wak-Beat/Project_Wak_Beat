/// @description Insert description here
// You can write your code in this editor

if global.hp > 0 && code.gamestart = 2
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y+6,image_xscale,image_yscale,image_angle,c_black,image_alpha*0.2)
	shader_reset()
	
	if invincibility_cooltime > 0 && show_invincibility = 1
	{
		draw_sprite_ext(spr_circle,0,x,y,0.1,0.1,image_angle,c_white,sign(invincibility_cooltime)*0.2)
	}


	draw_sprite_ext(sprite_index,(global.player_skin*7),x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha*0.3)
	draw_sprite_ext(sprite_index,(global.player_skin*7)+6,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	draw_self()

	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
	shader_reset()

	if invincibility_cooltime > 0 && show_invincibility = 1
	{
		draw_circular_bar(x,y,invincibility_cooltime,90,c_white,53,0.98,6)
	}
}