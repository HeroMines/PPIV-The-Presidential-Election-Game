/// @description Insert description here
// You can write your code in this editor

instance_destroy(instance_1);
instance_destroy(instance_2);
instance_destroy(instance_3);
instance_destroy(instance_4);

if (instance_exists(obj_menuItem)) {
	instance_destroy(obj_menuItem);	
}