/// @description Insert description here
// You can write your code in this editor

with (par)
{
	switch (other.text) {
		case "LSG": {
			room_goto(Room3);
			global.loaded_game = true;
			break;
		}
		case "IGE": {
			if (instance_exists(obj_ige)) break;
			
			instance_create_depth(room_width/2, room_height/2, -3, obj_ige);
			break;
		}
		case "Exit": {
			game_end();
			break;
		}
		break;
	}
}

with (obj_main_menu_button) {
	
instance_destroy();

}