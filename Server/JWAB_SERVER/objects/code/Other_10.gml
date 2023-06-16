/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_enter)) 
{
	server = network_create_server(network_socket_tcp, server_port, 5);
		
	if (server < 0) 
	{
		add_log("Server opening failed");
	}
	else 
	{
		is_server = true;
		add_log("Server opening Success");
	}
}
else if (keyboard_check_pressed(vk_space)) 
{
	server = network_create_socket(network_socket_tcp);
	var res = network_connect(server, server_ip, server_port);
		
	if (res < 0) 
	{
		add_log("Client connecting failed");
	}
}
