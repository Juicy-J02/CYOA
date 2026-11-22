class_name Scene1
extends RefCounted

# Act 1, scene 1: the argument at home and sneaking out.
static func get_nodes() -> Dictionary:
	return {
	"act1_scene1_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/House.jpg",
		"music": "intro music.mp3",
		"next": "zach_act1_scene1_0"
	},
	
	"zach_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You don't get to choose who I'm meant to be!",
		"next": "mom_act1_scene1_0"
	},
	
	"mom_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "We just want to help you.",
		"next": "dad_act1_scene1_0"
	},
	
	"dad_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Zach's Dad",
		"text": "It's time for you to take over the family business, like me and my father before me.",
		"next": "dad_act1_scene1_1"
	},
	
	"dad_act1_scene1_1": {
		"type": "dialogue",
		"speaker": "Zach's Dad",
		"text": "This is who you're meant to-!",
		"next": "zach_act1_scene1_1"
	},
	
	"zach_act1_scene1_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You don't get to decide that!",
		"next": "mom_act1_scene1_1"
	},
	
	"mom_act1_scene1_1": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "You are our son.",
		"next": "mom_act1_scene1_2"
	},
	
	"mom_act1_scene1_2": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "You are the only one who can take the reins. If you don't-",
		"next": "zach_act1_scene1_2"
	},
	
	"zach_act1_scene1_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I won't.",
		"next": "mom_act1_scene1_3"
	},
	
	"mom_act1_scene1_3": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "-our company will fall!",
		"next": "zach_act1_scene1_3"
	},
	
	"zach_act1_scene1_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Good! Your company sucks! All you do is other people's busy work!",
		"next": "dad_act1_scene1_2"
	},
	
	"dad_act1_scene1_2": {
		"type": "dialogue",
		"speaker": "Zach's Dad",
		"text": "Watch your tone wi-",
		"next": "zach_act1_scene1_4"
	},
	
	"zach_act1_scene1_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Or what? You'll finally kick me out?",
		"next": "zach_act1_scene1_5"
	},
	
	"zach_act1_scene1_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I'm not wasting my life in that cage!",
		"next": "narration_act1_scene1_0"
	},
	
	"narration_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach goes upstairs.",
		"next": "mom_act1_scene1_4"
	},
	
	"mom_act1_scene1_4": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "You can't run from who you're meant to be!",
		"next": "act1_scene1_background_2"
	},
	
	"act1_scene1_background_2": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Bedroom.jpg",
		"next": "narration_act1_scene1_1"
	},
	
	"narration_act1_scene1_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach shuts his bedroom door behind him.",
		"next": "mom_act1_scene1_5"
	},
	
	"mom_act1_scene1_5": {
		"type": "dialogue",
		"speaker": "Zach's Mom (from downstairs)",
		"text": "Zachery Davis, get back down here!",
		"next": "narration_act1_scene1_2"
	},
	
	"narration_act1_scene1_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach checks his phone to see a new text.",
		"next": "kyle_act1_scene1_0"
	},
	
	"kyle_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Yo Zach, where are you?",
		"next": "zach_act1_scene1_6"
	},
	
	"zach_act1_scene1_6": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Give me a sec, security is tight tonight.",
		"next": "think"
	},
	
	"think": {
		"type": "character",
		"character": "res://Assets/Characters/mc_ponder.png",
		"position": {
			"x": 580,
			"y": 400
		},
		"next": "sneak_out"
	},
	
	"sneak_out": {
		"type": "choice",
		"map": "Sneak Out",
		"choices": [
			{
				"text": "Sneak out the window",
				"next": "window_background"
			},
			{
				"text": "Sneak out back door",
				"next": "back_door_background"
			}
		]
	},
	
	"window_background": {
		"type": "background",
		"background": "",
		"next": "window"
	},
	
	"window": {
		"type": "character",
		"character": "res://Assets/Scenes/out_window.png",
		"position": {
			"x": 640,
			"y": 360
		},
		"next": "narration_act1_scene1_window_0"
	},
	
	"narration_act1_scene1_window_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach sneaks out the window.",
		"next": "meet_friends"
	},
	
	"meet_friends": {
		"type": "choice",
		"map": "Meet Your Friends",
		"choices": [
			{
				"text": "Meet your friends",
				"next": "act1_scene2_background"
			}
		]
	},
	
	"back_door_background": {
		"type": "background",
		"background": "",
		"next": "backdoor"
	},
	
	"backdoor": {
		"type": "character",
		"character": "res://Assets/Scenes/out_door.png",
		"position": {
			"x": 640,
			"y": 360
		},
		"next": "narration_act1_scene1_back_door_0"
	},
	
	"narration_act1_scene1_back_door_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach sneaks downstairs and out the back door.",
		"next": "meet_friends_back_door"
	},
	
	"meet_friends_back_door": {
		"type": "choice",
		"map": "Meet Your Friends",
		"choices": [
			{
				"text": "Meet your friends",
				"next": "act1_scene2_background"
			}
		]
	}
}
