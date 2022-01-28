/// @description Insert description here
// You can write your code in this editor

if (!visible) exit;

switch (purpose) {
	case 0: {
	create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 0, "Begin Turn:", "It's time to start planning " + obj_game.turn_order[obj_game.player_turns].name + "'s campaign activity.", ["OK", "OK"]);
	visible = false;
	break;
	}
}