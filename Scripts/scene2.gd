class_name Scene2
extends RefCounted

static func get_nodes() -> Dictionary:
	return {
	"act1_scene2_background_1": {
		"type": "background",
		"background": "res://Assets/Backgrounds/House.jpg",
		"next": "friends_1"
	},
	
	"friends_1": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {"x": 700, "y": 375},
		"next": "friend1_act1_scene2_0"
	},
	
	"friend1_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Another meeting with the higher ups?",
		"next": "zach_act1_scene2_0"
	},
	
	"zach_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Yeah. This one was a drag.",
		"next": "friend1_act1_scene2_1"
	},
	
	"friend1_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "You break the dress code?",
		"next": "zach_act1_scene2_1"
	},
	
	"zach_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No, my style isn't as crazy as yours.",
		"next": "zach_act1_scene2_2"
	},
	
	"zach_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I like the red hair by the way.",
		"next": "friend1_act1_scene2_2"
	},
	
	"friend1_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Way better than the blue, right?",
		"next": "friend2_act1_scene2_0"
	},
	
	"friend2_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "And the green.",
		"next": "zach_act1_scene2_3"
	},
	
	"zach_act1_scene2_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You think they'd fire me if I got something similar?",
		"next": "friend1_act1_scene2_3"
	},
	
	"friend1_act1_scene2_3": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Try it and find out.",
		"next": "zach_act1_scene2_4"
	},
	
	"zach_act1_scene2_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "All this talk is making me hungry, let's go get something.",
		"next": "act1_scene2_background_2"
	},
	
	"act1_scene2_background_2": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Park.jpg",
		"next": "friends_2"
	},
	
	"friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {"x": 700, "y": 375},
		"next": "friend2_act1_scene2_1"
	},
	
	"friend2_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "(in-between bites of a cheeseburger) Why not just quit?",
		"next": "zach_act1_scene2_5"
	},
	
	"zach_act1_scene2_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "(in-between bites of a spicy chicken sandwich) Oh I try, but they just won't let me go.",
		"next": "zach_act1_scene2_6"
	},
	
	"zach_act1_scene2_6": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "It's not like you and your childhood sweetheart.",
		"next": "friend2_act1_scene2_2"
	},
	
	"friend2_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "It was only 2 months!",
		"next": "friend1_act1_scene2_5"
	},
	
	"friend1_act1_scene2_5": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "*sarcastically* Such a thriving partnership.",
		"next": "friend2_act1_scene2_3"
	},
	
	"friend2_act1_scene2_3": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "It only happened because...y'know...",
		"next": "zach_act1_scene2_7"
	},
	
	"zach_act1_scene2_7": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "*sarcastically* And they looked so good together.",
		"next": "friend2_act1_scene2_4"
	},
	
	"friend2_act1_scene2_4": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "We did not!",
		"next": "pause_1"
	},
	
	#"friend2_act1_scene2_5": {
		#"type": "dialogue",
		#"speaker": "Friend 2",
		#"text": "If they aren't paying you what you're worth, find someone who does.",
		#"next": "zach_act1_scene2_8"
	#},
	#
	#"zach_act1_scene2_8": {
		#"type": "dialogue",
		#"speaker": "Zach",
		#"text": "I think I have.",
		#"next": "friend1_act1_scene2_6"
	#},
	
	"pause_1": {
		"type": "pause",
		"next": "friend1_act1_scene2_6"
	},
	
	"friend1_act1_scene2_6": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "You think your parent's company can survive without you?",
		"next": "zach_act1_scene2_9"
	},
	
	"zach_act1_scene2_9": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Nah. It'd probably burn down within a month.",
		"next": "friend2_act1_scene2_6"
	},
	
	"friend2_act1_scene2_6": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "A month seems generous.",
		"next": "friend1_act1_scene2_7"
	},
	
	"friend1_act1_scene2_7": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "I give it a week.",
		"next": "friend2_act1_scene2_7"
	},
	
	"friend2_act1_scene2_7": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "You are a professional at lighting things on fi-",
		"next": "friend1_act1_scene2_8"
	},
	
	"friend1_act1_scene2_8": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Quit it.",
		"next": "friend2_act1_scene2_8"
	},
	
	"friend2_act1_scene2_8": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "...sorry.",
		"next": "zach_act1_scene2_10"
	},
	
	"zach_act1_scene2_10": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "What? Afraid you're gonna start something?",
		"next": "friend2_act1_scene2_9"
	},
	
	"friend2_act1_scene2_9": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "Well...",
		"next": "friend1_act1_scene2_9"
	},
	
	"friend1_act1_scene2_9": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Hey, take it easy.",
		"next": "friend1_act1_scene2_10"
	},
	
	"friend1_act1_scene2_10": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "He's already overheating. Any more and he'll surely melt.",
		"next": "friend2_act1_scene2_10"
	},
	
	"friend2_act1_scene2_10": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "sorry...",
		"next": "pause_2"
	},
	
	"pause_2": {
		"type": "pause",
		"next": "friend2_act1_scene2_11"
	},
	
	"friend2_act1_scene2_11": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "What is that?",
		"next": "zach_act1_scene2_12"
	},
	
	"zach_act1_scene2_12": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Let's find out.",
		"next": "act1_scene3_background"
	},
}
