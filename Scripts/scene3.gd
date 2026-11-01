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
				"next": "plaque"
			}
		]
	},
	
	"plaque": {
		"type": "dialogue",
		"speaker": "",
		"text": "In front of the statue is a plaque that reads \"The Tale of Zachery Davis\", but before you can read the rest, a voice interrupts.",
		"next": "voice_act1_scene3_0"
	},
	
	"voice_act1_scene3_0": {
		"type": "dialogue",
		"speaker": "The voice",
		"text": "The Tale of Zachery Davis.",
		"next": "narrator"
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
		"next": "narrator_act1_scene3_1"
	},
	
	"narrator_act1_scene3_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Hello Zachery. I've been waiting for you.",
		"next": "narrator_act1_scene3_2"
	},
	
	"narrator_act1_scene3_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for you to fulfill your destiny.",
		"next": "zach_act1_scene3_3"
	},
	
	"zach_act1_scene3_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I don't think so.",
		"next": "ice_wall"
	},
	
	"ice_wall": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach tries to walk away, but a wall of ice suddenly blocks his path.",
		"next": "narrator_portal"
	},
	
	"narrator_portal": {
		"type": "dialogue",
		"speaker": "",
		"text": "A portal appears in front of Zach, and the Narrator steps through.",
		"next": "narrator_act1_scene3_3"
	},
	
	"narrator_act1_scene3_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You can't run from your fate.",
		"next": "zach_act1_scene3_4"
	},
	
	"zach_act1_scene3_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Why.",
		"next": "narrator_act1_scene3_4"
	},
	
	"narrator_act1_scene3_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You are the hero, destined to defeat evil.",
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
				"next": "dragon_portal"
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
		"speaker": "Jayce",
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
	
	"dragon_portal": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal beside you. You look through and see a large dragon sitting in darkness.",
		"next": "narrator_act1_scene3_5"
	},
	
	"narrator_act1_scene3_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "If that dragon is ever let loose, it will bring chaos and destruction.",
		"next": "narrator_act1_scene3_6"
	},
	
	"narrator_act1_scene3_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "For generations my family has tried to stop it, contain it, snuff out the flame, but it always escapes.",
		"next": "narrator_act1_scene3_7"
	},
	
	"narrator_act1_scene3_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Others have stood where you're standing. The dragon either beat them, or slipped away.",
		"next": "narrator_act1_scene3_8"
	},
	
	"narrator_act1_scene3_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You are the hero of prophecy. You are the only one who can kill it.",
		"next": "narrator_act1_scene3_9"
	},
	
	"narrator_act1_scene3_9": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You must go on 3 quests, find the weapons, and slay the dragon.",
		"next": "narrator_act1_scene3_10"
	},
	
	"narrator_act1_scene3_10": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "I am here to help you become who you're meant to be. Let me show you.",
		"next": "scar_erased"
	},
	
	"scar_erased": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator grabs Zach's right hand and casts a spell on it. Zach looks down in shock. His scar is gone.",
		"next": "zach_act1_scene3_5"
	},
	
	"zach_act1_scene3_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Wh- What did you do?",
		"next": "portal_open"
	},
	
	"portal_open": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act1_scene3_11"
	},
	
	"narrator_act1_scene3_11": {
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
		"next": "act2_scene1_background"
	},
	
	"end_game": {
		"type": "end_game"
	}
}
