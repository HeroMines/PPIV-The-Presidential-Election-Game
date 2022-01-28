/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("S")) || (mouse_wheel_down() && (position_meeting(mouse_x, mouse_y, id) || (position_meeting(mouse_x, mouse_y, obj_main_menu_button)))) || (keyboard_check_pressed(vk_down))) {
    if (show_list == true) {
        if (upper_pos < array_length(list)) {
        lower_pos += 1;
        upper_pos += 1;
    
    
        with (obj_main_menu_button) {
            instance_destroy();
        }
            
        var yIncrement = bbox_right;
        var yy = y + yIncrement-2;
        for (var i = lower_pos; i < upper_pos; i++) {
                var item = instance_create_layer(centerX, yy, "Instances", obj_main_menu_button);
				item.par = id;
                item.text = list[i];
                yy += yIncrement-2;
            }
        }
    }
} else if (keyboard_check_pressed(ord("W")) || (mouse_wheel_up() && (position_meeting(mouse_x, mouse_y, id) || (position_meeting(mouse_x, mouse_y, obj_main_menu_button)))) || (keyboard_check_pressed(vk_up))) {
    if (show_list == true) {
        if (lower_pos > 0) {
        lower_pos -= 1;
        upper_pos -= 1;
    
    
        with (obj_main_menu_button) {
            instance_destroy();
        }
            
        var yIncrement = bbox_right;
        var yy = y + yIncrement-2;
        for (var i = lower_pos; i < upper_pos; i++) {
                var item = instance_create_layer(x, yy, "Instances", obj_main_menu_button);
				item.par = id;
                item.text = list[i];
                yy += yIncrement-2;
            }
        }   
    }
}
