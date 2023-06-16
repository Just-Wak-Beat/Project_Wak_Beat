/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var type = async_load[? "type"];

if (type == network_type_connect) 
{
	var socket = async_load[? "socket"];
	var cli_max = ds_list_size(clients)

	index = 0;
	buffer_seek(info_buffer, buffer_seek_start, 0);
	buffer_write(info_buffer, buffer_u8, DATA.INIT_DATA);
	buffer_write(info_buffer, buffer_u8, cli_max);
	buffer_write(info_buffer, buffer_u8, socket);
	
	for(var i = 0; i < cli_max; i++) 
	{
		with(obj_client_info) 
		{
			if (other.index == playerID) 
			{
				buffer_write(other.info_buffer, buffer_string, name);
				buffer_write(other.info_buffer, buffer_u8, soc);
			}
		}
		index++;
	}
	
	network_send_packet(socket, info_buffer, buffer_get_size(info_buffer));

	ds_list_add(clients, socket);
}

else if (type == network_type_disconnect) 
{
	var socket = async_load[? "socket"];//"id"쓰지 말것 무조건 0이 나온다.

	buffer_seek(dis_buffer, buffer_seek_start, 0);
	buffer_write(dis_buffer, buffer_u8, DATA.REMOVE_CLI);
	buffer_write(dis_buffer, buffer_u8, socket);
	
	with(obj_client_info) 
	{
		if (soc == socket) 
		{
			instance_destroy();
		}
	}
	
	var pos = ds_list_find_index(clients, socket);
	ds_list_delete(clients, pos);
	
	send_all(dis_buffer);
}

else if (type == network_type_data) 
{
	var buffer = async_load[? "buffer"];
	
	buffer_seek(buffer, buffer_seek_start, 0);
	
	var data = buffer_read(buffer, buffer_u8);
	
	switch(data) 
	{
		case DATA.INIT_DATA:
			my_ID = buffer_read(buffer, buffer_u8);
			var socket = buffer_read(buffer, buffer_u8);
			cli_num = my_ID;
			obj_client_info.playerID = my_ID;
			my_instance_id.soc = socket;
			add_log("New client connected");
			for(i = 0; i < my_ID; i++)
			{
				var obj = instance_create_depth(0, 0, -100, obj_nope);
				obj.playerID = i;
				with(obj) 
				{
					name = buffer_read(buffer, buffer_string);
					soc = buffer_read(buffer, buffer_u8);
					instance_change(obj_client_info, true);
				}
			}
			buffer_seek(info_buffer, buffer_seek_start, 0);
			buffer_write(info_buffer, buffer_u8, DATA.ADD_CLI);
			buffer_write(info_buffer, buffer_u8, my_ID);
			send_all(info_buffer);
			send_one(buffer_string, "name");
			send_one(buffer_u8, "soc");
		break;
		case DATA.CHAT:
			str = buffer_read(buffer, buffer_string);
			add_log(str);
		break;
		case DATA.ONE_DATA:
			var ID = buffer_read(buffer, buffer_u8);
			var type = buffer_read(buffer, buffer_u8);
			var val_name = buffer_read(buffer, buffer_string);
			var val = buffer_read(buffer, type);
			with(obj_client_info) 
			{
				if(playerID == ID) 
				{
					variable_instance_set(id, val_name, val);
				}
			}
		break;
		case DATA.MUCH_DATA:
			var ID = buffer_read(buffer, buffer_u8);
			var size = buffer_read(buffer, buffer_u8);
			for(var i = 0; i < size; i++) 
			{
				var type = buffer_read(buffer, buffer_u8);
				var val_name = buffer_read(buffer, buffer_string);
				var val = buffer_read(buffer, type);
				with(obj_client_info) 
				{
					if(playerID == ID) 
					{
						variable_instance_set(id, val_name, val);
					}
				}
			}
		break;
		case DATA.ADD_CLI:
			var some_ID = buffer_read(buffer, buffer_u8);
			if(my_ID != some_ID) 
			{
				var obj = instance_create_depth(0, 0, -100, obj_nope);
				with(obj) 
				{
					name = "";
					playerID = some_ID;
					soc = 0;
					instance_change(obj_client_info, true);
				}
				cli_num++;
			}
		break;
		case DATA.REMOVE_CLI:
			var socket = buffer_read(buffer, buffer_u8);
			with(obj_client_info) 
			{
			if (soc == socket) 
			{
				instance_destroy();
				}
			}
			add_log("Client disconnected");
			cli_num--;
		break;
	}
	if (is_server) 
	{
		send_all(buffer);
	}
}