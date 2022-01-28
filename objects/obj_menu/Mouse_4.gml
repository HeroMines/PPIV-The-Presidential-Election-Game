/// @description Left Pressed
// You can write your code in this editor

switch (purpose) {
	case 0: {
		if (instance_exists(obj_ige)) exit;
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i].name;
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;
	}
	case 1: { //States
		if (instance_exists(obj_ige)) exit;
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i];
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;	
	}
	case 2: { //Election Preferences
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i];
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;	
	}
	case 3: { //Election Preferences - Incumbent
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i].name;
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;	
	}
	case 4: { //Activity Manager
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
				exit;
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i];
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
					exit;
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;	
	}
	case 5: { //Game Options
		if (!obj_game.hide_objects) exit;
		
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i];
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;	
	}
	case 6: { //IGE - Candidate List
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i].name;
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;	
	}
	case 7: { //IGE - Candidate Names
		try {
		text = get_string("Character Name \nLike so: 'John Doe'", "John Doe");
		list.name = text;
		} catch (_exception) {
		create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "An error occured, sorry!", ["OK", "OK"]);
		}
		break;	
	}
	case 8: { //IGE - Candidate Affil
		try {
		text = string_split(get_string("Party Affiliation \nLike so: 'D, R, I'", "D, R, I"), ",");
		list.afil = text;
		} catch (_exception) {
		create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "An error occured, sorry!", ["OK", "OK"]);
		}
		break;	
	}
	case 9: { //IGE - Candidate Home States
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i];
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;	
	}
	case 10: { //IGE - Candidate Genders
		try {
		text = get_string("Candidate Gender \nLike so: 'Male'", "Male");
		list.gender = text;
		} catch (_exception) {
		create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "An error occured, sorry!", ["OK", "OK"]);
		}
		break;	
	}
	case 11: { //IGE - Candidate Stats1
		try {
		text = string_split(get_string("Candidate Stats1 \n0 (Poor) to 4 (Exceptional)\nSpeaking, Experience, Charisma, Fund Raising, Debating, Stamina, Character, Image, Media, Organization", "0, 0, 0, 0, 0, 0, 0, 0, 0, 0"), ",");
		for (i = 0; i < array_length(text); i++) {
			text[i] = real(text[i]);	
		}
		list.stats1 = text;
		} catch (_exception) {
		create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "An error occured, sorry!", ["OK", "OK"]);
		}
		break;	
	}
	case 12: { //IGE - Candidate Stats2
		try {
		text = string_split(get_string("Candidate Stats2 \n0 (Right Wing) to 4 (Very Liberal)\nCivil Rights, Gun Control, Social Security, Education, Crime, Abortion, Unemployment, Nuclear Energy, Defense Cuts, Death Penalty, Health Care, Environment, Taxes", "5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5"), ",");
		for (i = 0; i < array_length(text); i++) {
			text[i] = real(text[i]);	
		}
		list.stats2 = text;
		} catch (_exception) {
		create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "An error occured, sorry!", ["OK", "OK"]);
		}
		break;	
	}
	case 13: { //State Advertising - States
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i].name;
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;
	}
	case 14: { //State Advertising - Cash
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i];
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;
	}
	case 15: { //Dirty Tricks
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i];
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;
	}
	case 16: { //Presets
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i];
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;
	}
	case 17: { //Game Difficulty
		if (position_meeting(mouse_x, mouse_y, id))
		{
		    if (instance_exists(obj_menuItem))
		    {
		        show_list = false;
		        with (obj_menuItem)
		        {
		            instance_destroy();
		        }
		    }
		    else
		    {
		        show_list = true;
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++)
		        {
		            var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
					item.par = id;
					item.purpose = id.purpose;
		            item.text = list[i];
					item.sprite_index = id.sprite_index;
		            yy += yIncrement-2;
		        }
		    }
		}
		else
		{
		    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
		    {
		        if (instance_exists(obj_menuItem))
		        {
		            show_list = false;
		            with (obj_menuItem)
		            {
		                instance_destroy();
		            }
		        }
		    }
		}
		break;
	}
	break;
}