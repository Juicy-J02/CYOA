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
		"next": "jayce_act1_scene2_0"
	},
	
	"jayce_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Another meeting with the higher ups?",
		"next": "zach_act1_scene2_0"
	},
	
	"zach_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Yep.",
		"next": "kyle_act1_scene2_0"
	},
	
	"kyle_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "So what's the dress code this week? Still no short sleeves?",
		"next": "zach_act1_scene2_1"
	},
	
	"zach_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Apparently the scar \"isn't professional.\" They want it covered up.",
		"next": "jayce_act1_scene2_1"
	},
	
	"jayce_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Nobody in drama club cares what you look like.",
		"next": "kyle_act1_scene2_1"
	},
	
	"kyle_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Yeah, you played a pirate last month. The scar would've made the costume.",
		"next": "zach_act1_scene2_2"
	},
	
	"zach_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I wish the company worked like drama club.",
		"next": "jayce_act1_scene2_2"
	},
	
	"jayce_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Can't you just wear what you want?",
		"next": "zach_act1_scene2_3"
	},
	
	"zach_act1_scene2_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "They keep buying me long sleeved shirts.",
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
		"next": "jayce_act1_scene2_3"
	},
	
	"jayce_act1_scene2_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Why don't your parents just find someone who actually wants the job?",
		"next": "zach_act1_scene2_5"
	},
	
	"zach_act1_scene2_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Because then they'd have to admit I'm not who they planned for me to be.",
		"next": "kyle_act1_scene2_2"
	},
	
	"kyle_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Their loss.",
		"next": "pause_1"
	},
	
	"pause_1": {
		"type": "pause",
		"next": "zach_act1_scene2_6"
	},
	
	"zach_act1_scene2_6": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Welcome, welcome! On your left, the lobby. Please admire the tasteful collapsed ceiling.",
		"next": "zach_act1_scene2_7"
	},
	
	"zach_act1_scene2_7": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "And here we have the break room. Very open floor plan.",
		"next": "kyle_act1_scene2_3"
	},
	
	"kyle_act1_scene2_3": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "It's missing a few walls.",
		"next": "zach_act1_scene2_8"
	},
	
	"zach_act1_scene2_8": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "That's the charm. No walls, no meetings, no dress code.",
		"next": "zach_act1_scene2_9"
	},
	
	"zach_act1_scene2_9": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I just want to be free to do whatever I want. No one telling me who I'm supposed to be.",
		"next": "jayce_act1_scene2_4"
	},
	
	"jayce_act1_scene2_4": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "That does sound nice.",
		"next": "pause_2"
	},
	
	"pause_2": {
		"type": "pause",
		"next": "zach_act1_scene2_10"
	},
	
	"zach_act1_scene2_10": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Hey, do you guys see that? Out past the trees.",
		"next": "kyle_act1_scene2_4"
	},
	
	"kyle_act1_scene2_4": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Looks like some kind of statue.",
		"next": "zach_act1_scene2_11"
	},
	
	"zach_act1_scene2_11": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Let's find out.",
		"next": "act1_scene3_background"
	},
}
