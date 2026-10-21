extends Node

var story_data = {
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
		"next": "sneak_out"
	},
	
	"sneak_out": {
		"type": "choice",
		"choices": [
			{
				"text": "Sneak out the window",
				"next": "friend1_act1_scene2_0"
			},
			{
				"text": "Sneak out the back door",
				"next": "friend1_act1_scene2_0"
			}
		]
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
		"text": "Can't be worse than your first attempt.",
		"next": "friend1_act1_scene2_4"
	},
	
	"friend1_act1_scene2_4": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Hey, I got there eventually, didn't I?",
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
		"text": "It only happened because the shareholders kept pestering us.",
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
		"next": "friend2_act1_scene2_5"
	},
	
	"friend2_act1_scene2_5": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "If they aren't paying you what you're worth, find someone who does.",
		"next": "zach_act1_scene2_8"
	},
	
	"zach_act1_scene2_8": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I think I have.",
		"next": "friend1_act1_scene2_6"
	},
	
	"friend1_act1_scene2_6": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "You think their company can survive without you?",
		"next": "zach_act1_scene2_9"
	},
	
	"zach_act1_scene2_9": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Nah. I'd probably burn it down within a month.",
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
		"text": "I give him a week.",
		"next": "friend2_act1_scene2_7"
	},
	
	"friend2_act1_scene2_7": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "He is a professional at lighting things on fi- *clears throat* uh... sorry.",
		"next": "zach_act1_scene2_10"
	},
	
	"zach_act1_scene2_10": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "What? That one hot for ya?",
		"next": "zach_act1_scene2_11"
	},
	
	"zach_act1_scene2_11": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Afraid you'll burn some bridges?",
		"next": "friend2_act1_scene2_8"
	},
	
	"friend2_act1_scene2_8": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "Well...",
		"next": "friend1_act1_scene2_8"
	},
	
	"friend1_act1_scene2_8": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "Hey, take it easy.",
		"next": "friend2_act1_scene2_9"
	},
	
	"friend2_act1_scene2_9": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "Thanks.",
		"next": "friend1_act1_scene2_9"
	},
	
	"friend1_act1_scene2_9": {
		"type": "dialogue",
		"speaker": "Friend 1",
		"text": "He's already overheating. Any more and he'll surely melt.",
		"next": "friend2_act1_scene2_10"
	},
	
	"friend2_act1_scene2_10": {
		"type": "dialogue",
		"speaker": "Friend 2",
		"text": "Of course.",
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
		"next": "investigate_structure"
	},
	
	"investigate_structure": {
		"type": "choice",
		"choices": [
			{
				"text": "Investigate the structure",
				"next": "narrator_act1_scene3_0"
			}
		]
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
		"text": "Why do we have to do any of this?",
		"next": "narrator_act1_scene3_1"
	},
	
	"narrator_act1_scene3_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "I've kept it in check for a long time, but it's grown recently. The time has come to be who you were meant to be. I need each of you to find your weapons and slay it before it escapes.",
		"next": "narrator_act1_scene3_2"
	},
	
	"narrator_act1_scene3_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your first quest.",
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
				"text": "Go through the portal",
				"next": "go_through_portal"
			}
		]
	}
}
