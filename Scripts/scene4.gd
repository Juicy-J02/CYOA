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
		"text": "The Hero and his friends depart on a journey through their past.",
		"next": "narrator_act2_scene1_1"
	},
	
	"narrator_act2_scene1_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "First, they find themselves in their high school drama club's dressing room after hours, surrounded by wigs, costumes, and props they would use on stage.",
		"next": "narrator_act2_scene1_2"
	},
	
	"narrator_act2_scene1_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Rogue turned to the Hero and asked if they should be here.",
		"next": "narration_act2_scene1_1"
	},
	
	"narration_act2_scene1_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "...",
		"next": "narrator_act2_scene1_3"
	},
	
	"narrator_act2_scene1_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Ah-hem! The Rogue turned to the Hero and asked if they should be here this late.",
		"next": "kyle_act2_scene1_0"
	},
	
	"kyle_act2_scene1_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Does he mean me?",
		"next": "narrator_act2_scene1_4"
	},
	
	"narrator_act2_scene1_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Yes. You are the Rogue. Now you turn to the Hero and ask...",
		"next": "kyle_act2_scene1_1"
	},
	
	"kyle_act2_scene1_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Uh, should we be here this late?",
		"next": "narrator_act2_scene1_5"
	},
	
	"narrator_act2_scene1_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero says they shouldn't.",
		"next": "zach_act2_scene1_0"
	},
	
	"zach_act2_scene1_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "We shouldn't, but you still want to, right?",
		"next": "jayce_act2_scene1_0"
	},
	
	"jayce_act2_scene1_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "I know he wants to fix that.",
		"next": "narrator_act2_scene1_6"
	},
	
	"narrator_act2_scene1_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Rogue looks towards the back of the room and sees a set of wigs in front of a mirror and looks at himself.",
		"next": "kyle_act2_scene1_2"
	},
	
	"kyle_act2_scene1_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "MY HAIR! What happened to my hair?",
		"next": "narrator_act2_scene1_7"
	},
	
	"narrator_act2_scene1_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Rogue looked down at the pile of wigs when one caught his attention. The red wig. About shoulder length.",
		"next": "narrator_act2_scene1_8"
	},
	
	"narrator_act2_scene1_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "He wondered what he'd look like with hair like that for a moment before remembering the school's dress code.",
		"next": "kyle_act2_scene1_3"
	},
	
	"kyle_act2_scene1_3": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "DID YOU SHAVE ME?",
		"next": "narrator_act2_scene1_9"
	},
	
	"narrator_act2_scene1_9": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, The Rogue must accept himself as he is and be who he's supposed to be.",
		"next": "kyle_act2_scene1_4"
	},
	
	"kyle_act2_scene1_4": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Jayce, help me find some scissors so I can cut that old fart's beard off.",
		"next": "narrator_act2_scene1_10"
	},
	
	"narrator_act2_scene1_10": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero saw him struggling with this and decided to help.",
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
		"text": "The dress code is there for a reason, and you look good enough already.",
		"next": "kyle_act2_scene1_u_0"
	},
	
	"kyle_act2_scene1_u_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "What? That's-",
		"next": "narrator_act2_scene1_u_0"
	},
	
	"narrator_act2_scene1_u_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero reminded The Rogue that he should follow the dress code and stay out of trouble. Better safe than sorry.",
		"next": "kyle_act2_scene1_u_1"
	},
	
	"kyle_act2_scene1_u_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Zach, are you seriously letting him tell you what to do?",
		"next": "zach_act2_scene1_u_1"
	},
	
	"zach_act2_scene1_u_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You saw what he did to my hand? To your hair? Putting us in this place?",
		"next": "zach_act2_scene1_u_2"
	},
	
	"zach_act2_scene1_u_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "How do we fight back against this?",
		"next": "zach_act2_scene1_u_3"
	},
	
	"zach_act2_scene1_u_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Let's just play along for now. Rehearsals gotta end eventually, right?",
		"next": "narrator_act2_scene1_u_1"
	},
	
	"narrator_act2_scene1_u_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Rogue puts down the red wig and decides to stay in uniform.",
		"next": "narrator_act2_scene1_u_2"
	},
	
	"narrator_act2_scene1_u_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Suddenly, a beautiful bow and arrow appeared before him.",
		"next": "narration_act2_scene1_u_0"
	},
	
	"narration_act2_scene1_u_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle takes the bow and arrow.",
		"next": "kyle_act2_scene1_u_2"
	},
	
	"kyle_act2_scene1_u_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "What am I supposed to do with this?",
		"next": "narrator_act2_scene1_u_3"
	},
	
	"narrator_act2_scene1_u_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You'll figure it out. Now...",
		"next": "narration_act2_scene1_u_1"
	},
	
	"narration_act2_scene1_u_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene1_u_4"
	},
	
	"narrator_act2_scene1_u_4": {
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
		"text": "I looked at Kyle and asked, 'You wanna try it on? I bet it'd look good on you.'",
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
		"text": "I chose to ignore the annoying voice in the back of my head and do it anyway.",
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
		"text": "I put on the red wig and looked at myself in the mirror.",
		"next": "kyle_act2_scene1_h_2"
	},
	
	"kyle_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I looked... good. Really good.",
		"next": "kyle_act2_scene1_h_3"
	},
	
	"kyle_act2_scene1_h_3": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I asked Zach, 'You think the school would let me dye my hair?'",
		"next": "zach_act2_scene1_h_1"
	},
	
	"zach_act2_scene1_h_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I replied, 'You think they have a choice?'",
		"next": "kyle_act2_scene1_h_4"
	},
	
	"kyle_act2_scene1_h_4": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Hahaha! Then, let's do it.",
		"next": "narration_act2_scene1_h_0"
	},
	
	"narration_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly, a small bright fire appears in the air in front of Kyle.",
		"next": "narrator_act2_scene1_h_2"
	},
	
	"narrator_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Wait, that's not supposed to be here?",
		"next": "narration_act2_scene1_h_1"
	},
	
	"narration_act2_scene1_h_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle puts his hand over the flame. It doesn't hurt at all.",
		"next": "narrator_act2_scene1_h_3"
	},
	
	"narrator_act2_scene1_h_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You're supposed to get the bow! What did you do?",
		"next": "narration_act2_scene1_h_2"
	},
	
	"narration_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle holds the fire in his hands. He feels a warmth run through his body as the fire becomes a part of him.",
		"next": "kyle_act2_scene1_h_5"
	},
	
	"kyle_act2_scene1_h_5": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "It feels so warm.",
		"next": "narration_act2_scene1_h_3"
	},
	
	"narration_act2_scene1_h_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle focuses on his hand, and a small fireball appears. He makes a finger gun, points it at a Macbeth poster on the wall, and shoots the fireball at it. The poster goes up in flames.",
		"next": "kyle_act2_scene1_h_6"
	},
	
	"kyle_act2_scene1_h_6": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Woah.",
		"next": "zach_act2_scene1_h_2"
	},
	
	"zach_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You have fire magic?",
		"next": "kyle_act2_scene1_h_7"
	},
	
	"kyle_act2_scene1_h_7": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I have fire magic!",
		"next": "jayce_act2_scene1_h_0"
	},
	
	"jayce_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Dude, that's so cool!",
		"next": "narrator_act2_scene1_h_4"
	},
	
	"narrator_act2_scene1_h_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "How are you supposed to kill a dragon with fire? It's a dragon!",
		"next": "kyle_act2_scene1_h_8"
	},
	
	"kyle_act2_scene1_h_8": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Fight fire with fire, I guess?",
		"next": "narrator_act2_scene1_h_5"
	},
	
	"narrator_act2_scene1_h_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "*groans*",
		"next": "narrator_act2_scene1_h_6"
	},
	
	"narrator_act2_scene1_h_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Ok, ok. We can still follow the script from here.",
		"next": "narrator_act2_scene1_h_7"
	},
	
	"narrator_act2_scene1_h_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "This is fine.",
		"next": "narration_act2_scene1_h_4"
	},
	
	"narration_act2_scene1_h_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene1_h_8"
	},
	
	"narrator_act2_scene1_h_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Ah-hem. It's time for your second quest.",
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
