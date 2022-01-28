// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_text_box(_x, _y, _xscale, _yscale, _purpose, _text_purpose, _title, _desc, _options) {
	_object = instance_create_layer(_x, _y, "Instances", obj_text_box);
	_object.xscale = _xscale;
	_object.yscale = _yscale
	_object.width = 400 * _object.xscale;
	_object.height = 185 * _object.yscale;
	_object.purpose = _purpose;
	_object.text_purpose = _text_purpose;
	_object.title = _title;
	_object.desc = _desc;
	_object.options = _options;
	
	return _object;
}