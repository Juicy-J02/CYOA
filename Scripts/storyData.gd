extends Node

var story_data = {
	"zach_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Why not find someone who actually wants the job? Or is actually qualified?",
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
		"text": "You've been working towards this for 4 years now.",
		"next": "mom_act1_scene1_0"
	},
	
	"mom_act1_scene1_0": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "You're the heir to successful company!",
		"next": "zach_act1_scene1_2"
	},
	
	"zach_act1_scene1_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I'm the aire to a cage on the 8th floor! *walks away*",
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
		"next": "sneak_out"
	},
	
	"sneak_out": {
		"type": "choice",
		"choices": [
			{
				"text": "Out the window",
				"next": "meet_friends"
			},
			{
				"text": "Out the door",
				"next": "meet_friends"
			}
		]
	},

	"meet_friends": {
		"type": "dialogue",
		"speaker": "Henry",
		"text": "So... how am I getting inside?",
		"next": "entry_choice"
	},
}
