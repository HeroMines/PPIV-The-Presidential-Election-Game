/// @description In-game editor
// You can write your code in this editor

centerX = x - sprite_get_xoffset(sprite_index) + sprite_width / 2;
centerY = y - sprite_get_yoffset(sprite_index) + sprite_height / 2;

margin = 54;

//The First Four
instance_1 = instance_create_depth(centerX, centerY - centerY/6, depth - 1, obj_menu);
instance_1.purpose = 15;
instance_1.list = ["Bribe Newspaper", "Accept Illegal Contr.", "Leak False Rumor", "Attack Moral Character"];
instance_1.text = "Bribe Newspaper";
instance_1.upper_pos = array_length(instance_1.list);