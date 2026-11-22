class_name Scene3
extends RefCounted

# Act 1, scene 3: the Statue and the Narrator.
static func get_nodes() -> Dictionary:
	return {
	"act1_scene3_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Forest.jpg",
		"music": "The Statue.mp3",
		"next": "narration_act1_scene3_0"
	},
	
	"narration_act1_scene3_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce walk through the forest for some time.",
		"next": "kyle_act1_scene3_0"
	},
	
	"kyle_act1_scene3_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Maybe they find a witch with magic rainbow hair.",
		"next": "narration_act1_scene3_1"
	},
	
	"narration_act1_scene3_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The deeper they go into the forest...",
		"next": "jayce_act1_scene3_0"
	},
	
	"jayce_act1_scene3_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Or a cabin with a lonely forest spirit trapped inside.",
		"next": "narration_act1_scene3_2"
	},
	
	"narration_act1_scene3_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The colder the air becomes.",
		"next": "zach_act1_scene3_0"
	},
	
	"zach_act1_scene3_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Or a secret laboratory underground.",
		"next": "narration_act1_scene3_3"
	},
	
	"narration_act1_scene3_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "After an hour of walking they find a small clearing surrounded by dead trees.",
		"next": "structure"
	},
	
	"structure": {
		"type": "character",
		"character": "res://Assets/Scenes/statue.png",
		"position": {
			"x": 850,
			"y": 475
		},
		"next": "narration_act1_scene3_4"
	},
	
	"narration_act1_scene3_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "In the middle of the clearing is a stone Statue of 3 figures standing in front of a dragon lying behind them.",
		"next": "narration_act1_scene3_5"
	},
	
	"narration_act1_scene3_5": {
		"type": "dialogue",
		"speaker": "",
		"text": "The stone is cold to the touch.",
		"next": "narration_act1_scene3_6"
	},
	
	"narration_act1_scene3_6": {
		"type": "dialogue",
		"speaker": "",
		"text": "In front of The Statue is a plaque that reads \"The Tale of Zachery Davis\", but before they can read the rest, a voice interrupts them.",
		"next": "voice_act1_scene3_0"
	},
	
	"voice_act1_scene3_0": {
		"type": "dialogue",
		"speaker": "The voice",
		"text": "\"The Tale of Zachery Davis\"",
		"next": "narration_act1_scene3_7"
	},
	
	"narration_act1_scene3_7": {
		"type": "dialogue",
		"speaker": "",
		"text": "A man in a dark blue robe steps out from behind The Statue and reads the text on the plaque.",
		"next": "narrator"
	},
	
	"narrator": {
		"type": "character",
		"character": "res://Assets/Characters/narrator.png",
		"position": {
			"x": 1020,
			"y": 275
		},
		"next": "narration_act1_scene3_8"
	},
	
	"narration_act1_scene3_8": {
		"type": "dialogue",
		"speaker": "",
		"text": "A hidden truth revealed at last.\nTime to fix the mistakes of the past.",
		"next": "narration_act1_scene3_9"
	},
	
	"narration_act1_scene3_9": {
		"type": "dialogue",
		"speaker": "",
		"text": "Appearances change and old rules bend.\nA bond breaks that words won't mend.",
		"next": "narration_act1_scene3_10"
	},
	
	"narration_act1_scene3_10": {
		"type": "dialogue",
		"speaker": "",
		"text": "Tensions rise as the fire grows.\nThe mentor's story comes to a close.",
		"next": "narration_act1_scene3_11"
	},
	
	"narration_act1_scene3_11": {
		"type": "dialogue",
		"speaker": "",
		"text": "A flame in chains on the highest floor.\nThey finally find what they're looking for.",
		"next": "zach_act1_scene3_1"
	},
	
	"zach_act1_scene3_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "...",
		"next": "zach_act1_scene3_2"
	},
	
	"zach_act1_scene3_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "What?",
		"next": "narrator_act1_scene3_0"
	},
	
	"narrator_act1_scene3_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Hello Hero. I've been waiting for you.",
		"next": "narrator_act1_scene3_1"
	},
	
	"narrator_act1_scene3_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for you to fulfill your destiny.",
		"next": "zach_act1_scene3_3"
	},
	
	"zach_act1_scene3_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I don't think so.",
		"next": "narration_act1_scene3_12"
	},
	
	"narration_act1_scene3_12": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach tries to walk away but is suddenly blocked by a wall of ice.",
		"next": "narration_act1_scene3_13"
	},
	
	"narration_act1_scene3_13": {
		"type": "dialogue",
		"speaker": "",
		"text": "A portal appears in front of Zach and the Narrator steps through.",
		"next": "narrator_act1_scene3_2"
	},
	
	"narrator_act1_scene3_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You can't run from your fate, Hero.",
		"next": "zach_act1_scene3_4"
	},
	
	"zach_act1_scene3_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Cause you won't let me.",
		"next": "narration_act1_scene3_14"
	},
	
	"narration_act1_scene3_14": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal beside Zach.",
		"next": "narration_act1_scene3_15"
	},
	
	"narration_act1_scene3_15": {
		"type": "dialogue",
		"speaker": "",
		"text": "Through the portal Zach sees a large beast covered in fur and veiled in shadow sitting in the middle of a large room.",
		"next": "narrator_act1_scene3_3"
	},
	
	"narrator_act1_scene3_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You are The Hero, destined to defeat The Dragon.",
		"next": "narrator_act1_scene3_4"
	},
	
	"narrator_act1_scene3_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "For generations my family has tried to stop it, contain it, snuff out the flame.",
		"next": "narrator_act1_scene3_5"
	},
	
	"narrator_act1_scene3_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "But every time, it escapes and we're forced to hunt it down again before it could destroy anything.",
		"next": "narrator_act1_scene3_6"
	},
	
	"narrator_act1_scene3_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You are the hero of prophecy.",
		"next": "narrator_act1_scene3_7"
	},
	
	"narrator_act1_scene3_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You are the only one who can kill it.",
		"next": "zach_act1_scene3_5"
	},
	
	"zach_act1_scene3_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Do you have any proof it's dangerous?",
		"next": "narrator_act1_scene3_8"
	},
	
	"narrator_act1_scene3_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You and your friends have been exploring the wreckage for months now.",
		"next": "narration_act1_scene3_16"
	},
	
	"narration_act1_scene3_16": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator looks towards the abandoned building Zach came from.",
		"next": "zach_act1_scene3_6"
	},
	
	"zach_act1_scene3_6": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "But, I thought that was faulty wiring?",
		"next": "narrator_act1_scene3_9"
	},
	
	"narrator_act1_scene3_9": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "That's what we told them.",
		"next": "narrator_act1_scene3_10"
	},
	
	"narrator_act1_scene3_10": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The less people know about The Dragon, the better.",
		"next": "narrator_act1_scene3_11"
	},
	
	"narrator_act1_scene3_11": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You must go on 3 quests, find 3 weapons, and slay The Dragon.",
		"next": "zach_act1_scene3_7"
	},
	
	"zach_act1_scene3_7": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "...",
		"next": "narrator_act1_scene3_12"
	},
	
	"narrator_act1_scene3_12": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "I am here to help you become who you're meant to be. Let me show you.",
		"next": "narration_act1_scene3_17"
	},
	
	"narration_act1_scene3_17": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator grabs Zach's right hand and casts a spell on it.",
		"next": "narration_act1_scene3_18"
	},
	
	"narration_act1_scene3_18": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks in shock to see his scar is gone.",
		"next": "scar_gone"
	},
	
	"scar_gone": {
		"type": "character",
		"character": "res://Assets/Characters/scar_gone.png",
		"position": {
			"x": 400,
			"y": 475
		},
		"next": "zach_act1_scene3_8"
	},
	
	"zach_act1_scene3_8": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Wh- What did you do?",
		"next": "narration_act1_scene3_19"
	},
	
	"narration_act1_scene3_19": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act1_scene3_13"
	},
	
	"narrator_act1_scene3_13": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your first quest.",
		"next": "go_through_portal"
	},
	
	"go_through_portal": {
		"type": "choice",
		"map": "First Quest Portal",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "act2_scene1_background"
			}
		]
	}
}
