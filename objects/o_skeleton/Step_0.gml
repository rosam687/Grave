
switch (state)
{
	case"move":
		#region Move State
		if keyboard_check(vk_right)
		{
			move_and_collide(4,0);
			image_xscale = 1;
			sprite_index = s_skeleton_run;
			image_speed = 0.6;
		}

		if keyboard_check(vk_left)
		{
			move_and_collide(-4, 0);
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
			image_index = 0;
			state = "roll";
	
		}
		
		if keyboard_check_pressed(vk_lshift)
		{
			image_index = 0;
			state = "attack one";
		}
		#endregion
		break;
	case "roll":
		#region Roll State
		sprite_index = s_skeleton_roll;
		image_speed = 0.6;
		
			if image_xscale == 1
		{
			move_and_collide(6, 0);
		}
	
		if image_xscale == -1
		{
			move_and_collide(-6, 0);
		}
		#endregion
		break;
		
	case "attack one":
		#region Attack One State
		sprite_index = s_skeleton_attack_one;
		image_speed = 0.6;
		#endregion
		break;
}