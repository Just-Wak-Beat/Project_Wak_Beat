/// @description Insert description here
// You can write your code in this editor
server_ip = "127.0.0.1";
server_port = 12520; 
is_server = false;
index = 0;
cli_num = 0
randomize()
enum DATA 
{
	INIT_DATA,
	CHAT,
	ONE_DATA,
	MUCH_DATA,
	ADD_CLI,
	REMOVE_CLI
}
info_buffer = buffer_create(2, buffer_grow, 1);
dis_buffer = buffer_create(2, buffer_grow, 1);
one_buffer = buffer_create(2, buffer_grow, 1);
much_buffer = buffer_create(2, buffer_grow, 1);
my_ID = 0;
my_instance_id = 0;
clients = ds_list_create();
list_names = ds_list_create();
list_vals = ds_list_create();
list_types = ds_list_create();