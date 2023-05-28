-- Lookup table for events
events_lookup = {
  
  {	category= 'Global', 	event_type= 'function', 	id= 'crow_event_trigger', 	name= 'Crow trigger', 	value_type= 'trigger', 				},
  {	category= 'Global', 	event_type= 'function', 	id= 'event_chord_gen', 	name= 'Generate chords', 	value_type= 'trigger', 				},
  {	category= 'Global', 	event_type= 'function', 	id= 'event_arp_gen', 	name= 'Generate arp', 	value_type= 'trigger', 				},
  {	category= 'Global', 	event_type= 'function', 	id= 'event_gen', 	name= 'Generate c+a', 	value_type= 'trigger', 				},
  {	category= 'Global', 	event_type= 'param', 	id= 'chord_generator', 	name= 'Chord gen algo', 	value_type= 'inc, set', 				},
  {	category= 'Global', 	event_type= 'param', 	id= 'arp_generator', 	name= 'Arp gen algo', 	value_type= 'inc, set', 				},
  {	category= 'Global', 	event_type= 'param', 	id= 'mode', 	name= 'Mode', 	value_type= 'set', 	formatter= 'mode_index_to_name', 			},
  {	category= 'Global', 	event_type= 'param', 	id= 'transpose', 	name= 'Key', 	value_type= 'inc, set', 	formatter= 'transpose_string', 			},
  {	category= 'Global', 	event_type= 'param', 	id= 'clock_tempo', 	name= 'Tempo', 	value_type= 'inc, set', 				},
  {	category= 'Global', 	event_type= 'param', 	id= 'crow_clock_index', 	name= 'Crow clock', 	value_type= 'inc, set', 	formatter= 'crow_clock_string', 	action= 'set_crow_clock', 		},
                    
  {	category= 'Chord', 	event_type= 'function', 	id= 'transpose_chord_pattern', 	name= 'Transpose pattern', 	value_type= 'set', 				},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_dest', 	name= 'Destination', 	value_type= 'set', 		action= 'update_menus', 		},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_type', 	name= 'Chord type', 	value_type= 'set', 	formatter= 'chord_type', 			},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_octave', 	name= 'Octave', 	value_type= 'inc, set', 				},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_spread', 	name= 'Spread', 	value_type= 'inc, set', 				},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_inversion', 	name= 'Inversion', 	value_type= 'inc, set', 				},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_div_index', 	name= 'Pattern step length', 	value_type= 'set', 	formatter= 'divisions_string', 	action= 'set_div', 	action_var= 'chord', 	},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_duration_index', 	name= 'Duration', 	value_type= 'inc, set', 	formatter= 'divisions_string', 	action= 'set_duration', 	action_var= 'chord', 	},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_pp_amp', 	name= 'Engine amp', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_pp_cutoff', 	name= 'Engine cutoff', 	value_type= 'inc, set', 				},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_pp_tracking', 	name= 'Engine fltr tracking', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_pp_gain', 	name= 'Engine gain', 	value_type= 'inc, set', 				},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_pp_pw', 	name= 'Engine PW', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_midi_ch', 	name= 'MIDI channel', 	value_type= 'inc, set', 				},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_midi_velocity', 	name= 'MIDI velocity', 	value_type= 'inc, set', 				},
  {	category= 'Chord', 	event_type= 'param', 	id= 'chord_jf_amp', 	name= 'Just Friends amp', 	value_type= 'inc, set', 				},
                    
  {	category= 'Arp', 	event_type= 'function', 	id= 'shuffle_arp', 	name= 'Shuffle Arp', 	value_type= 'trigger', 				},
  {	category= 'Arp', 	event_type= 'function', 	id= 'rotate_arp', 	name= 'Rotate Arp', 	value_type= 'set', 				},
  {	category= 'Arp', 	event_type= 'function', 	id= 'transpose_arp_pattern', 	name= 'Transpose pattern', 	value_type= 'set', 				},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_dest', 	name= 'Destination', 	value_type= 'set', 		action= 'update_menus', 		},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_chord_type', 	name= 'Chord type', 	value_type= 'set', 	formatter= 'chord_type', 			},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_octave', 	name= 'Octave', 	value_type= 'inc, set', 				},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_div_index', 	name= 'Pattern step length', 	value_type= 'set', 	formatter= 'divisions_string', 	action= 'set_div', 	action_var= 'arp', 	},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_duration_index', 	name= 'Duration', 	value_type= 'inc, set', 	formatter= 'divisions_string', 	action= 'set_duration', 	action_var= 'arp', 	},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_mode', 	name= 'Arp mode', 	value_type= 'set', 				},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_pp_amp', 	name= 'Engine amp', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_pp_cutoff', 	name= 'Engine cutoff', 	value_type= 'inc, set', 				},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_pp_tracking', 	name= 'Engine fltr tracking', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_pp_gain', 	name= 'Engine gain', 	value_type= 'inc, set', 				},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_pp_pw', 	name= 'Engine PW', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_midi_ch', 	name= 'MIDI channel', 	value_type= 'inc, set', 				},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_midi_velocity', 	name= 'MIDI velocity', 	value_type= 'inc, set', 				},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_tr_env', 	name= 'Crow output', 	value_type= 'set', 		action= 'update_menus', 		},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_ad_skew', 	name= 'Crow AD skew', 	value_type= 'inc, set', 				},
  {	category= 'Arp', 	event_type= 'param', 	id= 'arp_jf_amp', 	name= 'Just Friends amp', 	value_type= 'inc, set', 				},
                    
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_dest', 	name= 'Destination', 	value_type= 'set', 		action= 'update_menus', 		},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_chord_type', 	name= 'Chord type', 	value_type= 'set', 	formatter= 'chord_type', 			},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_octave', 	name= 'Octave', 	value_type= 'inc, set', 				},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_duration_index', 	name= 'Duration', 	value_type= 'inc, set', 	formatter= 'divisions_string', 	action= 'set_duration', 	action_var= 'midi', 	},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_pp_amp', 	name= 'Engine amp', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_pp_cutoff', 	name= 'Engine cutoff', 	value_type= 'inc, set', 				},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_pp_tracking', 	name= 'Engine fltr tracking', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_pp_gain', 	name= 'Engine gain', 	value_type= 'inc, set', 				},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_pp_pw', 	name= 'Engine PW', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_midi_ch', 	name= 'MIDI channel', 	value_type= 'inc, set', 				},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'do_midi_velocity_passthru', 	name= 'Pass velocity', 	value_type= 'set', 	formatter= 't_f_string', 	action= 'update_menus', 		},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_midi_velocity', 	name= 'MIDI velocity', 	value_type= 'inc, set', 				},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_tr_env', 	name= 'Crow output', 	value_type= 'set', 		action= 'update_menus', 		},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_ad_skew', 	name= 'Crow AD skew', 	value_type= 'inc, set', 				},
  {	category= 'MIDI in', 	event_type= 'param', 	id= 'midi_jf_amp', 	name= 'Just Friends amp', 	value_type= 'inc, set', 				},
                    
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_dest', 	name= 'Destination', 	value_type= 'set', 		action= 'update_menus', 		},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_chord_type', 	name= 'Chord type', 	value_type= 'set', 	formatter= 'chord_type', 			},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_octave', 	name= 'Octave', 	value_type= 'inc, set', 				},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_duration_index', 	name= 'Duration', 	value_type= 'inc, set', 	formatter= 'divisions_string', 	action= 'set_duration', 	action_var= 'crow', 	},
  {	category= 'CV in', 	event_type= 'param', 	id= 'do_crow_auto_rest', 	name= 'Auto-rest', 	value_type= 'set', 	formatter= 't_f_string', 			},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_pp_amp', 	name= 'Engine amp', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_pp_cutoff', 	name= 'Engine cutoff', 	value_type= 'inc, set', 				},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_pp_tracking', 	name= 'Engine fltr tracking', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_pp_gain', 	name= 'Engine gain', 	value_type= 'inc, set', 				},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_pp_pw', 	name= 'Engine PW', 	value_type= 'inc, set', 	formatter= 'percent', 			},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_midi_ch', 	name= 'MIDI channel', 	value_type= 'inc, set', 				},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_midi_velocity', 	name= 'MIDI velocity', 	value_type= 'inc, set', 				},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_tr_env', 	name= 'Crow output', 	value_type= 'set', 		action= 'update_menus', 		},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_ad_skew', 	name= 'Crow AD skew', 	value_type= 'inc, set', 				},
  {	category= 'CV in', 	event_type= 'param', 	id= 'crow_jf_amp', 	name= 'Just Friends amp', 	value_type= 'inc, set', 				},
    }