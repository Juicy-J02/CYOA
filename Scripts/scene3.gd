class_name Scene3
extends RefCounted

static func get_nodes() -> Dictionary:
	return {
	"act1_scene3_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Forest.jpg",
		"next": "structure"
	},
	
	"structure": {
		"type": "character",
		"character": "res://Assets/Scenes/statue.png",
		"position": {"x": 700, "y": 400},
		"next": "investigate_structure"
	},
	
	"investigate_structure": {
		"type": "choice",
		"choices": [
			{
				"text": "Investigate the structure",
				"next": "narrator"
			}
		]
	},
	
	"narrator": {
		"type": "character",
		"character": "res://Assets/Characters/narrator.png",
		"position": {"x": 1020, "y": 275},
		"next": "narrator_act1_scene3_0"
	},
	
	"narrator_act1_scene3_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They feel the warmth and open the door. They burn a bridge and love once more. They fight with a fire that burns to the core. The heroes find what they're looking for.",
		"next": "zach_act1_scene3_0"
	},
	
	"zach_act1_scene3_0": {
		"type": "dialogue",
		"speaker": "*Zach*",
		"text": "*I already felt trapped by my parents expectations, this is SO much worse. A prophecy!? NO!*",
		"next": "prophecy_questions"
	},
	
	"prophecy_questions": {
	"type": "choice",
	"choices": [
			{
				"text": "What are we fighting?",
				"next": "prophecy_enemy"
			},
			{
				"text": "Why us?",
				"next": "prophecy_why_us"
			},
			{
				"text": "What if we refuse?",
				"next": "prophecy_refuse"
			},
			{
				"text": "Fine. What's the first step?",
				"next": "narrator_act1_scene3_1"
			}
		]
	},

	"prophecy_enemy": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Something I've kept contained for far too long. Something that is beginning to push back.",
		"next": "prophecy_enemy_response"
	},

	"prophecy_enemy_response": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "That's impressively vague. Have you considered a career in management?",
		"next": "prophecy_questions"
	},

	"prophecy_why_us": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Each of you has something the others lack. You will understand when you find your weapons.",
		"next": "prophecy_why_us_response"
	},

	"prophecy_why_us_response": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "For the record, all I brought was a cheeseburger.",
		"next": "prophecy_questions"
	},

	"prophecy_refuse": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Then the seal will eventually break, and whatever life you return to will be in danger.",
		"next": "prophecy_refuse_response"
	},

	"prophecy_refuse_response": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Great. Another person telling me my future has already been decided.",
		"next": "prophecy_questions"
	},
	
	"narrator_act1_scene3_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The time has come to be who you were meant to be. I need each of you to find your weapons.",
		"next": "narrator_act1_scene3_2"
	},
	
	"narrator_act1_scene3_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your first quest.",
		"next": "portal_open"
	},
	
	"portal_open": {
		"type": "dialogue",
		"speaker": "",
		"text": "The stranger creates a portal.",
		"next": "zach_act1_scene3_2"
	},
	
	"zach_act1_scene3_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Wh- What did you do?",
		"next": "narrator_act1_scene3_3"
	},
	
	"narrator_act1_scene3_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": ". . .",
		"next": "narrator_act1_scene3_4"
	},
	
	"narrator_act1_scene3_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your first quest.",
		"next": "go_through_portal"
	},
	
	"go_through_portal": {
	"type": "choice",
	"choices": [
			{
				"text": "Walk away",
				"next": "portal_walk_away"
			},
			{
				"text": "Step through the portal",
				"next": "portal_enter"
			}
		]
	},
	
	"portal_walk_away": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach turns his back on the portal. Behind him, a crack spreads across the statue. For tonight, at least, his future is his own.",
		"next": "end_game"
	},
	
	"portal_enter": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Godspeed, young adventurers.",
		"next": "end_act1"
	},
	
	"end_act1": {
		"type": "dialogue",
		"speaker": "",
		"text": "End Act 1",
		"next": "end_game"
	},
	
	"end_game": {
		"type": "end_game"
	}
}
