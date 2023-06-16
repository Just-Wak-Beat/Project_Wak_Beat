function send_one(argument0, argument1) 
{
	var type = argument0;
	var val_name = argument1;
	var real_val = variable_instance_get(my_instance_id, val_name);
	
	buffer_seek(one_buffer, buffer_seek_start, 0);
	buffer_write(one_buffer, buffer_u8, DATA.ONE_DATA);
	
	buffer_write(one_buffer, buffer_u8, my_ID);
	buffer_write(one_buffer, buffer_u8, type);
	buffer_write(one_buffer, buffer_string, val_name);
	buffer_write(one_buffer, type, real_val);
	
	network_send_packet(0 , one_buffer, buffer_get_size(one_buffer));
}