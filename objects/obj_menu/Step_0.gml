/// @description Scroll Up or Down
// You can write your code in this editor

switch (purpose) {
	case 0: { //Candidates
		if (instance_exists(obj_ige)) exit;
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i].name;
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
						item.par = id;
		                item.text = list[i].name;
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 1: { //States
		if (instance_exists(obj_ige)) exit;
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 2: { //Election Preferences
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 3: { //Election Preferences - Incumbent
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i].name;
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_layer(x, yy, "Instances", obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i].name;
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 4: { //Activity Manager
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 5: { //Game Options
		if (!obj_game.hide_objects) exit;
		
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 6: { //IGE - Candidate List
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i].name;
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i].name;
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 9: { //IGE - Candidate Home States
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 13: { //State Advertising - States
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i].name;
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
		                item.text = list[i].name;
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 14: { //State Advertising - Cash
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 15: { //Dirty Tricks
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 16: { //Presets
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	case 17: { //Game Difficulty
		if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_down))) {
		    if (show_list == true) {
		        if (upper_pos < array_length(list)) {
		        lower_pos += 1;
		        upper_pos += 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
						item.purpose = id.purpose;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }
		    }
		} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (instance_nearest(mouse_x, mouse_y, obj_menu) == id && position_meeting(mouse_x, mouse_y, obj_menuItem)))) || (keyboard_check_pressed(vk_up))) {
		    if (show_list == true) {
		        if (lower_pos > 0) {
		        lower_pos -= 1;
		        upper_pos -= 1;
    
    
		        with (obj_menuItem) {
		            instance_destroy();
		        }
            
		        var yIncrement = sprite_get_height(sprite_index);
		        var yy = y + yIncrement-2;
		        for (var i = lower_pos; i < upper_pos; i++) {
		                var item = instance_create_depth(x, yy, depth - 1, obj_menuItem);
						item.par = id;
		                item.text = list[i];
						item.sprite_index = id.sprite_index;
		                yy += yIncrement-2;
		            }
		        }   
		    }
		}
		break;
	}
	break;
}

