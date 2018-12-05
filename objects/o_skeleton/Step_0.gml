if state == "move"
{
	if keyboard_check(vk_right) and not place_meeting(x+4, y, o_wall)
	{
		x += 4;
		image_xscale = 1;
		sprite_index = s_skeleton_run;
		image_speed = 0.6;
	}

	if keyboard_check(vk_left)  and not place_meeting(x-4, y, o_wall)
	{
		x-= 4;
		image_xscale = -1;
		sprite_index = s_skeleton_run;
		image_speed = 0.6;
	}

	if not keyboard_check(vk_right) and not keyboard_check(vk_left)
	{
	 sprite_index = s_skeleton_idle;
	 image_speed = 0.4;
	}
	
	if keyboard_check(vk_space) {
	state = "roll";
	}
}

if state == "roll"
{
		sprite_index = s_skeleton_roll;
		image_speed = 0.6;
}