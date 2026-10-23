extends Node

var story_data = {
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
