function send_all(argument0) 
{
	buffer = argument0;
	
	if(first.is_server == false) {
		network_send_packet(first.server , buffer, buffer_get_size(buffer));
	}
	else {
		for(var i = 0; i < ds_list_size(first.clients); i++) {
			var soc = first.clients[| i];
			if (soc < 0) continue;
			network_send_packet(soc , buffer, buffer_get_size(buffer));
		}
	}
}