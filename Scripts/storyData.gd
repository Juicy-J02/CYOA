extends Node

var story_data = {
	"zach0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Why not find someone who actually wants the job? Or is actually qualified?",
		"next": "dad0"
	},

	"dad0": {
		"type": "dialogue",
		"speaker": "Dad",
		"text": "You are meant to take over the family business.",
		"next": "zach1"
	},
	
	"zach1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No I'm not!",
		"next": "dad1"
	},
	
	"dad1": {
		"type": "dialogue",
		"speaker": "Dad",
		"text": "You've been working towards this for 4 years now.",
		"next": "mom0"
	},
	
	"mom0": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "You're the heir to successful company!",
		"next": "zach2"
	},
	
	"zach2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I'm the aire to a cage on the 8th floor! *walks away*",
		"next": "mom1"
	},

	"mom1": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "Zachery Davis get back down here! We just want what's best for you!",
		"next": "zach3"
	},
	
	"zach3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "*groans*",
		"next": "friend1"
	},
	
	"freind1": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Hey we're outside!",
		"next": "zach4"
	},

	"zach4": {
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
