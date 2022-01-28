/// @description In-game editor
// You can write your code in this editor

centerX = x - sprite_get_xoffset(sprite_index) + sprite_width / 2;
centerY = y - sprite_get_yoffset(sprite_index) + sprite_height / 2;

margin = 54;

//The First Four
instance_1 = instance_create_depth(centerX, centerY - centerY/4, depth - 1, obj_menu);
instance_1.purpose = 13;
instance_1.list = obj_game.election_night_order;
instance_1.text = obj_game.election_night_order[0].name;
instance_1.upper_pos = 3;
//
instance_2 = instance_create_depth(centerX, centerY + margin, depth - 1, obj_menu);
instance_2.purpose = 14;
instance_2.list = ["100,000", "150,000", "200,000", "250,000", "300,000", "400,000", "500,000"];
instance_2.text = "100,000";
instance_2.upper_pos = 2;

selected_state = noone;