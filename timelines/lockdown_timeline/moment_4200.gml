global.lockdown_effect1 = 0
global.lockdown_effect2 = 0
global.lockdown_effect3 = 0
global.lockdown_effect4 = 0
global.lockdown_effect5 = 0
global.lockdown_effect6 = 2;
lockdown_effect4_1 = 0
lockdown_effect5_1 = 0
lockdown_effect5_2 = 0
lockdown_effect5_3 = 0

with(hitbox_3)
{
	if (object_index == hitbox_3 && target_time == 9999)
	{
		instance_destroy()
	}
}
