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
				"next": "friend1_act1_scene2_0"
			},
			{
				"text": "Out the door",
				"next": "friend1_act1_scene2_0"
			}
		]
	},
	
	"friend1_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Guessing you had another meeting with the higher ups?",
		"next": "zach_act1_scene2_0"
	},
	
	"zach_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Yep.",
		"next": "friend2_act1_scene2_0"
	},
	
	"friend2_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "They let you go yet?",
		"next": "zach_act1_scene2_1"
	},
	
	"zach_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You'd think that after this long they'd look for a replacement.",
		"next": "friend1_act1_scene2_1"
	},
	
	"friend1_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Something about doing what you want.",
		"next": "friend1_act1_scene2_2"
	},
	
	"friend1_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "By the way, what do you think of the red hair?",
		"next": "zach_act1_scene2_2"
	},
	
	"zach_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "It looks good!",
		"next": "friend2_act1_scene2_1"
	},
	
	"friend2_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "Definitely better than blue.",
		"next": "friend1_act1_scene2_3"
	},
	
	"friend1_act1_scene2_3" : {
		"type" : "dialogue",
		"speaker": "Friend 1",
		"text": "Yeah.",
		"next": "zach_act1_scene2_3"
	},
	
	"zach_act1_scene2_3" : {
		"type" : "dialogue",
		"speaker": "Zach",
		"text": "Or purple . . . or pink.",
		"next": "friend1_act1_scene2_4"
	},
	
	"friend1_act1_scene2_4" : {
		"type" : "dialogue",
		"speaker": "Friend 1",
		"text": "Okay okay ...",
		"next": "friend2_act1_scene2_2"
	},
	
	"friend2_act1_scene2_2" : {
		"type" : "dialogue",
		"speaker": "Friend 2",
		"text": "Or that weird half and half thing you had for like a day? You've been trying stuff for years.",
		"next": "friend1_act1_scene2_5"
	},
	
	"friend1_act1_scene2_5" : {
		"type" : "dialogue",
		"speaker": "Friend 1",
		"text": "Almost as long as you were with Jessica.",
		"next": "friend2_act1_scene2_3"
	},
	
	"friend2_act1_scene2_3" : {
		"type" : "dialogue",
		"speaker": "Friend 2",
		"text": "(in-between bites of a cheeseburger) We were only together for like 4 months.",
		"next": "zach_act1_scene2_4"
	},
	
	"zach_act1_scene2_4" : {
		"type" : "dialogue",
		"speaker": "Zach",
		"text": "*sarcastically* childhood sweethearts....",
		"next": "friend1_act1_scene2_6"
	},
	
	"friend1_act1_scene2_6" : {
		"type" : "dialogue",
		"speaker": "Friend 1",
		"text": "*sarcastically* Such a shame...",
		"next": "friend2_act1_scene2_4"
	},
	
	"friend2_act1_scene2_4" : {
		"type" : "dialogue",
		"speaker": "Friend 2",
		"text": "I hate you.",
		"next": "friend1_act1_scene2_7"
	},
	
	"friend1_act1_scene2_7" : {
		"type" : "dialogue",
		"speaker": "Friend 1",
		"text": "*sarcastically* And they looked so good together.",
		"next": "friend2_act1_scene2_5"
	},
	
	"friend2_act1_scene2_5" : {
		"type" : "dialogue",
		"speaker": "Friend 2",
		"text": "SHUT UP!!",
		"next": "friend1_act1_scene2_8"
	},
	
	"friend1_act1_scene2_8" : {
		"type" : "dialogue",
		"speaker": "Friend 1",
		"text": "You look better now. *gets up to leave*",
		"next": "friend1_act1_scene2_9"
	},
	
	"friend1_act1_scene2_9" : {
		"type" : "dialogue",
		"speaker": "Friend 1",
		"text": "Hey Zach, how's the arm? Still losing fights with the stove?",
		"next": "friend2_act1_scene2_6"
	},
	
	"friend2_act1_scene2_6" : {
		"type" : "dialogue",
		"speaker": "Friend 2",
		"text": "Sick bur- uh...",
		"next": "zach_act1_scene2_5"
	},
	
	"zach_act1_scene2_5" : {
		"type" : "dialogue",
		"speaker": "Zach",
		"text": "What? That joke too hot for ya?",
		"next": "friend2_act1_scene2_7"
	},
	
	"friend2_act1_scene2_7" : {
		"type" : "dialogue",
		"speaker": "Friend 2",
		"text": "....",
		"next": "zach_act1_scene2_6"
	},
	
	"zach_act1_scene2_6" : {
		"type" : "dialogue",
		"speaker": "Zach",
		"text": "Getting hot-headed?",
		"next": "friend1_act1_scene2_10"
	},
	
	"friend1_act1_scene2_10" : {
		"type" : "dialogue",
		"speaker": "Friend 1",
		"text": "I think he might overheat.",
		"next": "zach_act1_scene2_7"
	},
	
	"zach_act1_scene2_7" : {
		"type" : "dialogue",
		"speaker": "Zach",
		"text": "Scared of burning some bridges?",
		"next": "friend2_act1_scene2_8"
	},
	
	"friend2_act1_scene2_8" : {
		"type" : "dialogue",
		"speaker": "Friend 2",
		"text": "Depends on the bridge.",
		"next": "zach_act1_scene2_8"
	},
	
	"zach_act1_scene2_8" : {
		"type" : "dialogue",
		"speaker": "Zach",
		"text": "I don't want to follow the same story as everyone else.",
		"next": "zach_act1_scene2_9"
	},
	
	"zach_act1_scene2_9" : {
		"type" : "dialogue",
		"speaker": "Zach",
		"text": "I want to write my own.",
		"next": "enter_forest"
	},
	
	"enter_forest": {
		"type": "choice",
		"choices": [
			{
				"text": "Go into the forest.",
				"next": "enter_forest"
			}
		]
	}
}
