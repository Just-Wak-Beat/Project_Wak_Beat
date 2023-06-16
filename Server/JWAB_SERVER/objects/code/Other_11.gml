/// @description Insert description here
// You can write your code in this editor
my_instance_id = instance_create_depth(0, 0, -100, obj_nope);
with(my_instance_id) 
{
	name = global.name;
	playerID = 0;
	soc = 0;
	instance_change(obj_client_info, true);
}
if (is_server) 
{
	ds_list_add(clients, -1);
}