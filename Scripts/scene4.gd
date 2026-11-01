class_name Scene4
extends RefCounted

static func get_nodes() -> Dictionary:
	return {
	"act2_scene1_background": {
		"type": "background",
		"background": "",
		"next": "narration_act2_scene1_0"
	},
	
	"narration_act2_scene1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce step through the portal.",
		"next": "narrator_act2_scene1_0"
	},
	
	"narrator_act2_scene1_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero and his friends depart at last on a foretold journey through their past.",
		"next": "narrator_act2_scene1_1"
	},
	
	"narrator_act2_scene1_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero says they should just go home, back to the lives and the clothes they know.",
		"next": "zach_act2_scene1_0"
	},
	
	"zach_act2_scene1_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "...",
		"next": "narrator_act2_scene1_2"
	},
	
	"narrator_act2_scene1_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Ah-hem! The hero says they should just go home.",
		"next": "zach_act2_scene1_1"
	},
	
	"zach_act2_scene1_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Uh, we should just go home?",
		"next": "narrator_act2_scene1_3"
	},
	
	"narrator_act2_scene1_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Much better. But before they could leave, one of the hero's friends noticed something strange.",
		"next": "narration_act2_scene1_1"
	},
	
	"narration_act2_scene1_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle catches his reflection in the mirror.",
		"next": "kyle_act2_scene1_0"
	},
	
	"kyle_act2_scene1_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "What happened to my hair?",
		"next": "narrator_act2_scene1_4"
	},
	
	"narrator_act2_scene1_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "One of them was looking at the selection of wigs in front of the mirror, when one caught his eye.",
		"next": "narrator_act2_scene1_5"
	},
	
	"narrator_act2_scene1_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "A long, red wig.",
		"next": "narrator_act2_scene1_6"
	},
	
	"narrator_act2_scene1_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "He picked it up and had the strangest feeling to put it on.",
		"next": "narrator_act2_scene1_7"
	},
	
	"narrator_act2_scene1_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "What you're looking for has always been here, waiting until you were ready to find it.",
		"next": "narrator_act2_scene1_8"
	},
	
	"narrator_act2_scene1_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "But first, you must fix a mistake from your past and give up something you foolishly held close.",
		"next": "narration_act2_scene1_2"
	},
	
	"narration_act2_scene1_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle looks at the wig in his hands.",
		"next": "kyle_act2_scene1_1"
	},
	
	"kyle_act2_scene1_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "But... I...",
		"next": "narrator_act2_scene1_9"
	},
	
	"narrator_act2_scene1_9": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, the rogue must forsake the wig, proudly wear his uniform, and be who he's supposed to be.",
		"next": "wig_choice"
	},
	
	"wig_choice": {
		"type": "choice",
		"choices": [
			{
				"text": "Stay in uniform",
				"next": "zach_act2_scene1_u_0"
			},
			{
				"text": "Experiment",
				"next": "zach_act2_scene1_h_0"
			}
		]
	},
	
	"zach_act2_scene1_u_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Kyle... you look good enough as is.",
		"next": "kyle_act2_scene1_u_0"
	},
	
	"kyle_act2_scene1_u_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Zach?",
		"next": "narrator_act2_scene1_u_0"
	},
	
	"narrator_act2_scene1_u_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero reminds his friend of the school's dress code. They have it for a reason, it's best to follow it.",
		"next": "kyle_act2_scene1_u_1"
	},
	
	"kyle_act2_scene1_u_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Zach, come on.",
		"next": "zach_act2_scene1_u_1"
	},
	
	"zach_act2_scene1_u_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Did you see what he did to my hand? I don't know what he might do if we don't go along with him.",
		"next": "kyle_act2_scene1_u_2"
	},
	
	"kyle_act2_scene1_u_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "You're seriously gonna let him tell you what to do?",
		"next": "zach_act2_scene1_u_2"
	},
	
	"zach_act2_scene1_u_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "... I don't know.",
		"next": "narration_act2_scene1_u_0"
	},
	
	"narration_act2_scene1_u_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle puts down the wig, and a bow and arrow appear before him. He takes them.",
		"next": "kyle_act2_scene1_u_3"
	},
	
	"kyle_act2_scene1_u_3": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "What am I supposed to do with this?",
		"next": "narrator_act2_scene1_u_1"
	},
	
	"narrator_act2_scene1_u_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You'll figure it out. Now...",
		"next": "narration_act2_scene1_u_1"
	},
	
	"narration_act2_scene1_u_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene1_u_2"
	},
	
	"narrator_act2_scene1_u_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your second quest.",
		"next": "act2_scene1_u_portal"
	},
	
	"act2_scene1_u_portal": {
		"type": "choice",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "act2_scene2_u_background"
			}
		]
	},
	
	"zach_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I looked at Kyle and asked, 'You gonna try it on? I bet it'd look good on you.'",
		"next": "narrator_act2_scene1_h_0"
	},
	
	"narrator_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "What?",
		"next": "kyle_act2_scene1_h_0"
	},
	
	"kyle_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I chose to ignore the annoying voice in the back of my head...",
		"next": "narrator_act2_scene1_h_1"
	},
	
	"narrator_act2_scene1_h_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Excuse you, I'm supposed to be telling your story.",
		"next": "kyle_act2_scene1_h_1"
	},
	
	"kyle_act2_scene1_h_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "...and do what I want.",
		"next": "kyle_act2_scene1_h_2"
	},
	
	"kyle_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I put the wig on and looked at myself in the mirror.",
		"next": "kyle_act2_scene1_h_3"
	},
	
	"kyle_act2_scene1_h_3": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I looked... good. Really good.",
		"next": "kyle_act2_scene1_h_4"
	},
	
	"kyle_act2_scene1_h_4": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I asked Zach, 'You think the school would let me dye my hair?'",
		"next": "zach_act2_scene1_h_1"
	},
	
	"zach_act2_scene1_h_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I replied, 'You think they'll have a choice?'",
		"next": "kyle_act2_scene1_h_5"
	},
	
	"kyle_act2_scene1_h_5": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Hahaha! Ok, let's do it.",
		"next": "narration_act2_scene1_h_0"
	},
	
	"narration_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly, a small bright fire appears in the air in front of Kyle. He puts his hand over it. It's surprisingly warm.",
		"next": "narration_act2_scene1_h_1"
	},
	
	"narration_act2_scene1_h_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle holds the fire in his hands, and it becomes a part of him.",
		"next": "kyle_act2_scene1_h_6"
	},
	
	"kyle_act2_scene1_h_6": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "It feels so warm.",
		"next": "narrator_act2_scene1_h_2"
	},
	
	"narrator_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "What did you do? Where's the bow? You're supposed to have the bow!",
		"next": "narration_act2_scene1_h_2"
	},
	
	"narration_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle makes a finger gun, points it at a Macbeth poster on the wall, and shoots a small fireball at it. The poster goes up in flames.",
		"next": "kyle_act2_scene1_h_7"
	},
	
	"kyle_act2_scene1_h_7": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Woah.",
		"next": "zach_act2_scene1_h_2"
	},
	
	"zach_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You have fire magic?",
		"next": "kyle_act2_scene1_h_8"
	},
	
	"kyle_act2_scene1_h_8": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I have fire magic!",
		"next": "jayce_act2_scene1_h_0"
	},
	
	"jayce_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Dude, that's so cool!",
		"next": "narrator_act2_scene1_h_3"
	},
	
	"narrator_act2_scene1_h_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "How are you supposed to kill a dragon with fire? It's a dragon!",
		"next": "narrator_act2_scene1_h_4"
	},
	
	"narrator_act2_scene1_h_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "*groans*",
		"next": "narrator_act2_scene1_h_5"
	},
	
	"narrator_act2_scene1_h_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Ok. It's not too late to get back on track. I guess I can work with this.",
		"next": "narration_act2_scene1_h_3"
	},
	
	"narration_act2_scene1_h_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene1_h_6"
	},
	
	"narrator_act2_scene1_h_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your second quest.",
		"next": "act2_scene1_h_portal"
	},
	
	"act2_scene1_h_portal": {
		"type": "choice",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "act2_scene2_h_background"
			}
		]
	},
}
