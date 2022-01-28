/// @description Insert description here
// You can write your code in this editor

instance_hovering = instance_position(mouse_x, mouse_y, all);

if (instance_hovering != noone) { 
	instance_hovering_name = object_get_name(instance_hovering.object_index);

	switch (instance_hovering_name) {
		case "obj_info_box": {
			if (obj_game.hide_objects) {
				switch (instance_hovering.purpose) {
					case 1: {
						var _hover = (position_meeting(mouse_x, mouse_y, obj_info_box));
						hover = lerp(hover, _hover, 1/15);
						text = string(obj_game.dem_candidate.name + ": " + string(global.average_percent[0]/50) + "%" + "\n" + obj_game.rep_candidate.name + ": " + string(global.average_percent[1]/50) + "%" + "\n" + obj_game.ind_candidate.name + ": " + string(global.average_percent[2]/50) + "%");
						box_width = string_width(text);
						box_height = string_height(text);
						draw_set_valign(fa_top);
						draw_set_halign(fa_left);
						draw_sprite_stretched_ext(spr_tooltips, 1, instance_hovering.x - box_width/1.2, instance_hovering.y - instance_hovering.sprite_height - box_height, box_width + 6, box_height, c_white, hover);
						draw_text_color(instance_hovering.x - box_width/1.2 + 2, instance_hovering.y - instance_hovering.sprite_height - box_height, text, c_black, c_black, c_black, c_black, hover);
						break;
					}
					case 2: {
						var _hover = (position_meeting(mouse_x, mouse_y, obj_info_box));
						hover = lerp(hover, _hover, 1/15);
						text = "Click me to open the activity manager!";
						box_width = string_width(text);
						box_height = string_height(text);
						draw_set_valign(fa_top);
						draw_set_halign(fa_left);
						draw_sprite_stretched_ext(spr_tooltips, 1, mouse_x - box_width/2, mouse_y + box_height, box_width + 6, box_height, c_white, hover);
						draw_text_color(mouse_x - box_width/2 + 2, mouse_y + box_height, text, c_black, c_black, c_black, c_black, hover);
						break;
					}
				}
			}
			break;
		}
		default: {
			if (margins_map_mode) {
				if (object_is_ancestor(instance_hovering.object_index, par_states)) {
					var _hover = (position_meeting(mouse_x, mouse_y, instance_hovering));
					hover = lerp(hover, _hover, 1/15);
					switch (max_array(instance_hovering.cand_score, false)) {
						case 0: {
						text = "+" + string(instance_hovering.vote_margin) + " D";
						break;
						}
						case 1: {
						text = "+" + string(instance_hovering.vote_margin) + " R";
						break;
						}
						case 2: {
						text = "+" + string(instance_hovering.vote_margin) + " I";
						break;
						}
					}
					box_width = string_width(text);
					box_height = string_height(text);
					draw_set_valign(fa_top);
					draw_set_halign(fa_left);
					draw_sprite_stretched_ext(spr_tooltips, 1, mouse_x - box_width/2, mouse_y - box_height - 6, box_width + 6, box_height, c_white, hover);
					draw_text_color(mouse_x - box_width/2 + 2, mouse_y - box_height - 6, text, instance_hovering.image_blend, instance_hovering.image_blend, c_black, c_black, hover);
				}
			} else if (state_polls_map_mode) {
				if (object_is_ancestor(instance_hovering.object_index, par_states)) {
					var _hover = (position_meeting(mouse_x, mouse_y, instance_hovering));
					hover = lerp(hover, _hover, 1/15);
					text = string(obj_game.dem_candidate.name + ": " + string(instance_hovering.percent[0]) + "%" + "\n" + obj_game.rep_candidate.name + ": " + string(instance_hovering.percent[1]) + "%" + "\n" + obj_game.ind_candidate.name + ": " + string(instance_hovering.percent[2]) + "%");
					box_width = string_width(text);
					box_height = string_height(text);
					draw_set_valign(fa_top);
					draw_set_halign(fa_left);
					draw_sprite_stretched_ext(spr_tooltips, 1, mouse_x - box_width/2, mouse_y - box_height - 6, box_width + 6, box_height, c_white, hover);
					draw_text_color(mouse_x - box_width/2 + 2, mouse_y - box_height - 6, text, c_black, c_black, c_black, c_black, hover);
				}
			}
			break;
		}
	}
} else {
hover = 0;	
}