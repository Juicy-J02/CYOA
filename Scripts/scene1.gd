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
		"text": "Why not find someone who actually wants the job? Or someone who's actually qualified?",
		"next": "dad_act1_scene1_0"
	},

	"dad_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Dad",
		"text": "You are meant to take over the family business.",
		"next": "zach_act1_scene1_1"
	},
	
	"zach_act1_scene1_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No I'm not!",
		"next": "dad_act1_scene1_1"
	},
	
	"dad_act1_scene1_1": {
		"type": "dialogue",
		"speaker": "Dad",
		"text": "You've been working for this for 4 years now.",
		"next": "mom_act1_scene1_0"
	},
	
	"mom_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "You're the heir to a successful company!",
		"next": "zach_act1_scene1_2"
	},
	
	"zach_act1_scene1_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I'm the heir to a cage on the 8th floor!",
		"next": "mom_act1_scene1_2"
	},
	
	"mom_act1_scene1_2": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "You keep acting like this you're going to get burned much worse than your arm.",
		"next": "zach_act1_scene1_5"
	},
	
	"zach_act1_scene1_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "That's all part of the fun! *walks away*",
		"next": "mom_act1_scene1_1"
	},

	"mom_act1_scene1_1": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "Zachery Davis get back down here! We just want what's best for you!",
		"next": "zach_act1_scene1_3"
	},
	
	"zach_act1_scene1_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "*groans*",
		"next": "friend1_act1_scene1_0"
	},
	
	"friend1_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Hey we're outside!",
		"next": "zach_act1_scene1_4"
	},

	"zach_act1_scene1_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Give me a minute. Security's kinda tight tonight.",
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
				"next": "back_door_background",
			},
			{
				"text": "Sneak out the window",
				"next": "window_background"
			},
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
		"next": "zach_act1_scene1_6"
	},
	
	"zach_act1_scene1_6": {
		"type": "dialogue",
		"speaker": "*Zach*",
		"text": "*The back door should be fine.*",
		"next": "dad_act1_scene1_2"
	},
	
	"dad_act1_scene1_2": {
		"type": "dialogue",
		"speaker": "Dad",
		"text": "ZACHARY DAVIS!!! WHERE DO YOU THINK YOU'RE GOING!?",
		"next": "zach_act1_scene1_7"
	},
	
	"zach_act1_scene1_7": {
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
		"next": "zach_act1_scene1_8"
	},
	
	"zach_act1_scene1_8": {
		"type": "dialogue",
		"speaker": "*Zach*",
		"text": "*The window should be fine.*",
		"next": "act1_scene2_background_1"
	},
}
