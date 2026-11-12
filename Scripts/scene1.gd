class_name Scene1
extends RefCounted

static func get_nodes() -> Dictionary:
	return {
	"act1_scene1_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Bedroom.jpg",
		"next": "zach_act1_scene1_0"
	},
	
	"zach_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You can't tell me how to live my life!",
		"next": "mom_act1_scene1_0"
	},
	
	"mom_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "It's time for you to take over the family business.",
		"next": "dad_act1_scene1_0"
	},
	
	"dad_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Dad",
		"text": "We just want you to become who you're meant to be.",
		"next": "zach_act1_scene1_1"
	},
	
	"zach_act1_scene1_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Who are you to decide who I'm meant to be?",
		"next": "zach_act1_scene1_2"
	},
	
	"zach_act1_scene1_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I'm not wasting my life in that cage!",
		"next": "mom_act1_scene1_1"
	},
	
	"mom_act1_scene1_1": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "Keep acting like this you're going to get burned!",
		"next": "mom_act1_scene1_2"
	},
	
	"mom_act1_scene1_2": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "Zachery Davis get back down here!",
		"next": "check_phone"
	},
	
	"check_phone": {
		"type": "dialogue",
		"speaker": "",
		"text": "You check your phone to see a new text.",
		"next": "kyle_act1_scene1_0"
	},
	
	"kyle_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Yo, where are you?",
		"next": "zach_act1_scene1_3"
	},
	
	"zach_act1_scene1_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Give me a sec, security is tight tonight.",
		"next": "think"
	},
	
	"think": {
		"type": "character",
		"character": "res://Assets/Characters/mc_ponder.png",
		"position": {"x": 565, "y": 350},
		"next": "sneak_out"
	},
	
	"sneak_out": {
		"type": "choice",
		"choices": [
			{
				"text": "Sneak out the back door",
				"next": "back_door_background"
			},
			{
				"text": "Sneak out the window",
				"next": "window_background"
			}
		]
	},
	
	"back_door_background": {
		"type": "background",
		"background": "res://Assets/Scenes/out_door.png",
		"next": "backdoor"
	},
	
	"backdoor": {
		"type": "character",
		"character": "res://Assets/Scenes/out_door.png",
		"position": {"x": 565, "y": 350},
		"next": "zach_act1_scene1_4"
	},
	
	"zach_act1_scene1_4": {
		"type": "dialogue",
		"speaker": "*Zach*",
		"text": "*The back door should be fine.*",
		"next": "dad_act1_scene1_1"
	},
	
	"dad_act1_scene1_1": {
		"type": "dialogue",
		"speaker": "Dad",
		"text": "ZACHARY DAVIS!!! WHERE DO YOU THINK YOU'RE GOING!?",
		"next": "zach_act1_scene1_5"
	},
	
	"zach_act1_scene1_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "*Crap.*",
		"next": "end_game"
	},
	
	"window_background": {
		"type": "background",
		"background": "",
		"next": "window"
	},
	
	"window": {
		"type": "character",
		"character": "res://Assets/Scenes/out_window.png",
		"position": {"x": 500, "y": 325},
		"next": "zach_act1_scene1_6"
	},
	
	"zach_act1_scene1_6": {
		"type": "dialogue",
		"speaker": "*Zach*",
		"text": "*The window should be fine.*",
		"next": "out_the_window"
	},
	
	"out_the_window": {
		"type": "dialogue",
		"speaker": "",
		"text": "You go out the window.",
		"next": "meet_friends"
	},
	
	"meet_friends": {
		"type": "choice",
		"choices": [
			{
				"text": "Meet your friends",
				"next": "act1_scene2_background_1"
			}
		]
	},
}
