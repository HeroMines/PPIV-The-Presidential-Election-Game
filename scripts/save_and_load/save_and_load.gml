// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function save_game() {
var _saveData = [];	
	with (par_states) {
		var _saveEntity = {
			obj : object_get_name(object_index),
			par : object_get_name(par_states),
			image_blend : image_blend,
			electoral_votes : electoral_votes,
			population : population,
			income : income,
			bias : bias,
			party_bias : party_bias,
			party_afil : party_afil,
			cand_score : cand_score,
			percent : percent,
			vote_margin : vote_margin
			
		}
		array_push(_saveData, _saveEntity);
	}
	with (obj_game) {
		var _saveEntity = {
			obj : object_get_name(object_index),
			par : "none",
			preset : preset,
			thirteen_keys_counter : thirteen_keys_counter,
			presets : presets,
			is_incumbent : is_incumbent,
			incumbent : incumbent,
			incumbent_advantage : incumbent_advantage,
			computer_delay : computer_delay,
			campaign_length : campaign_length,
			debate_frequency : debate_frequency,
			dem_candidate : dem_candidate,
			rep_candidate : rep_candidate,
			ind_candidate : ind_candidate,
			hide_objects : hide_objects,
			game_turns : game_turns,
			rounds : rounds,
			player_turns : player_turns,
			turn_order : turn_order,
			stamina : stamina,
			average_percent : global.average_percent,
			game_difficulty : game_difficulty
		}
		array_push(_saveData, _saveEntity);
	}
		
var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "savedgame.save");
buffer_delete(_buffer);
}

function load_game() {
	if (file_exists("savedgame.save")) {
		var _buffer = buffer_load("savedgame.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
				
		var _loadData = json_parse(_string);
		
			while (array_length(_loadData) > 0) {
			var _loadEntity = array_pop(_loadData);	
			
			with (asset_get_index(_loadEntity.obj)) {
				if (_loadEntity.par == "par_states") {
					image_blend = _loadEntity.image_blend;
					electoral_votes = _loadEntity.electoral_votes;
					population = _loadEntity.population;
					income = _loadEntity.income;
					bias = _loadEntity.bias;
					party_bias = _loadEntity.party_bias;
					party_afil = _loadEntity.party_afil;
					cand_score = _loadEntity.cand_score;
				} else if (_loadEntity.par == "none") {
					presets = _loadEntity.presets;
					is_incumbent = _loadEntity.is_incumbent;
					incumbent = _loadEntity.incumbent;
					incumbent_advantage = _loadEntity.incumbent_advantage;
					computer_delay = _loadEntity.computer_delay;
					campaign_length = _loadEntity.campaign_length;
					debate_frequency = _loadEntity.debate_frequency;
					dem_candidate = _loadEntity.dem_candidate;
					rep_candidate = _loadEntity.rep_candidate;
					ind_candidate = _loadEntity.ind_candidate;
					hide_objects = _loadEntity.hide_objects;
					game_turns = _loadEntity.game_turns;
					rounds = _loadEntity.rounds;
					player_turns = _loadEntity.player_turns;
					turn_order = _loadEntity.turn_order;
					stamina = _loadEntity.stamina;
					global.average_percent = _loadEntity.average_percent;
					game_difficulty = _loadEntity.game_difficulty;
				}
			}
		}
	}
}