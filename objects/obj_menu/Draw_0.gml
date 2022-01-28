/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, string(text));

switch (purpose) {
	case 0: {
		draw_sprite(image, 0, x, y - 128);
		break;
	}
	case 1: {
		//Do nothing	
	}
	break;
	case 6: {	
		draw_sprite(image, 0, x + 228, y + 128);
		break;
	}
	break;
}