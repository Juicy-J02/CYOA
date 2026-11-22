class_name Scene4
extends RefCounted

# Act 2, scene 1: the First Quest (drama club). u = Stay in uniform, h = Experiment.
static func get_nodes() -> Dictionary:
	return {
	"act2_scene1_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/DressingRoom.jpg",
		"music": "The First Quest.mp3",
		"next": "act2_scene1_meet_friends"
	},
	
	"act2_scene1_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene1_0"
	},
	
	"narrator_act2_scene1_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his friends departed on a journey through their past.",
		"next": "narrator_act2_scene1_1"
	},
	
	"narrator_act2_scene1_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They went through the portal and found themselves in their high school drama club's dressing room after hours, surrounded by wigs, costumes, and props they would use on stage.",
		"next": "narrator_act2_scene1_2"
	},
	
	"narrator_act2_scene1_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Rogue turned to The Hero and asked if they should be here this late.",
		"next": "narration_act2_scene1_0"
	},
	
	"narration_act2_scene1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "...",
		"next": "narrator_act2_scene1_3"
	},
	
	"narrator_act2_scene1_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Ah-hem! The Rogue turned to The Hero and asked if they should be here this late.",
		"next": "narration_act2_scene1_1"
	},
	
	"narration_act2_scene1_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle turns towards Zach.",
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
		"text": "Yes you are The Rogue. You turned to the hero and asked...",
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
		"text": "The Hero said they shouldn't.",
		"next": "zach_act2_scene1_0"
	},
	
	"zach_act2_scene1_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Why do you get to decide what happens?",
		"next": "narrator_act2_scene1_6"
	},
	
	"narrator_act2_scene1_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Because that is my job.",
		"next": "narrator_act2_scene1_7"
	},
	
	"narrator_act2_scene1_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Rogue looked towards the back of the room and saw a set of wigs in front of a mirror. He looked at himself in the mirror.",
		"next": "kyle_act2_scene1_2"
	},
	
	"kyle_act2_scene1_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "MY HAIR! What happened to my hair?",
		"next": "narrator_act2_scene1_8"
	},
	
	"narrator_act2_scene1_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Rogue looked down at the pile of wigs when one caught his eye. A bright red wig.",
		"next": "kyle_act2_scene1_3"
	},
	
	"kyle_act2_scene1_3": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "DID YOU SHAVE MY HEAD?",
		"next": "narrator_act2_scene1_9"
	},
	
	"narrator_act2_scene1_9": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "He wondered what he'd look like with red hair for a moment before remembering the school's dress code.",
		"next": "narrator_act2_scene1_10"
	},
	
	"narrator_act2_scene1_10": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, The Rogue must fix his past mistake and accept himself as is.",
		"next": "narrator_act2_scene1_11"
	},
	
	"narrator_act2_scene1_11": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero saw him struggling and decided to help.",
		"next": "wig_background"
	},
	
	"wig_background": {
		"type": "background",
		"background": "",
		"next": "wig_browsing"
	},
	
	"wig_browsing": {
		"type": "character",
		"character": "res://Assets/Scenes/wig_browsing.png",
		"position": {
			"x": 640,
			"y": 360
		},
		"next": "wig_choice"
	},
	
	"wig_choice": {
		"type": "choice",
		"map": "Uniform or Experiment",
		"choices": [
			{
				"text": "Stay in uniform",
				"next": "act2_scene1_u_background"
			},
			{
				"text": "Experiment",
				"next": "act2_scene1_h_background"
			}
		]
	},
	
	"act2_scene1_u_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/DressingRoom.jpg",
		"music": "The Bow.mp3",
		"next": "act2_scene1_u_meet_friends"
	},
	
	"act2_scene1_u_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "zach_act2_scene1_u_0"
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
		"text": "Let's just, play along for now.",
		"next": "narrator_act2_scene1_u_1"
	},
	
	"narrator_act2_scene1_u_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Rogue put down the red wig and decided to stay in uniform.",
		"next": "narration_act2_scene1_u_0"
	},
	
	"narration_act2_scene1_u_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle looks defeated.",
		"next": "narration_act2_scene1_u_1"
	},
	
	"narration_act2_scene1_u_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle puts down the red wig.",
		"next": "narrator_act2_scene1_u_2"
	},
	
	"narrator_act2_scene1_u_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Suddenly a beautiful bow and arrow appeared before him.",
		"next": "bow"
	},
	
	"bow": {
		"type": "character",
		"character": "res://Assets/bow.png",
		"position": {
			"x": 800,
			"y": 425
		},
		"next": "narration_act2_scene1_u_2"
	},
	
	"narration_act2_scene1_u_2": {
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
		"next": "narration_act2_scene1_u_3"
	},
	
	"narration_act2_scene1_u_3": {
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
		"map": "Second Quest Portal",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "act2_scene2_u_background"
			}
		]
	},
	
	"act2_scene1_h_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/DressingRoom.jpg",
		"music": "The Wig.mp3",
		"next": "act2_scene1_h_meet_friends"
	},
	
	"act2_scene1_h_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene1_h_0"
	},
	
	"narration_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach smiles at Kyle.",
		"next": "zach_act2_scene1_h_0"
	},
	
	"zach_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I chose to ignore the annoying voice in my head.",
		"next": "zach_act2_scene1_h_1"
	},
	
	"zach_act2_scene1_h_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I looked at Kyle and asked, 'You wanna try it on? I bet it'd look good on you.'",
		"next": "narrator_act2_scene1_h_0"
	},
	
	"narrator_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "What?",
		"next": "narration_act2_scene1_h_1"
	},
	
	"narration_act2_scene1_h_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle smiles back.",
		"next": "narrator_act2_scene1_h_1"
	},
	
	"narrator_act2_scene1_h_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Excuse you, I'm supposed to be telling this story.",
		"next": "kyle_act2_scene1_h_0"
	},
	
	"kyle_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I put on the red wig and looked at myself in the mirror.",
		"next": "wig_on"
	},
	
	"wig_on": {
		"type": "background",
		"background": "res://Assets/Backgrounds/DressingRoom.jpg",
		"next": "wig"
	},
	
	"wig": {
		"type": "character",
		"character": "res://Assets/Characters/kyle_with_wig.png",
		"position": {
			"x": 700,
			"y": 450
		},
		"next": "kyle_act2_scene1_h_1"
	},
	
	"kyle_act2_scene1_h_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I looked... good. Really good.",
		"next": "kyle_act2_scene1_h_2"
	},
	
	"kyle_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Even though I'd never tried something like it before, it still felt so right.",
		"next": "kyle_act2_scene1_h_3"
	},
	
	"kyle_act2_scene1_h_3": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I asked Zach, 'You think the school would let me dye my hair?'",
		"next": "zach_act2_scene1_h_2"
	},
	
	"zach_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I replied, 'You think they have a choice?'",
		"next": "kyle_act2_scene1_h_4"
	},
	
	"kyle_act2_scene1_h_4": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Hahaha! Then, let's do it.",
		"next": "narration_act2_scene1_h_2"
	},
	
	"narration_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly a small bright fire appears in the air in front of him.",
		"next": "fire"
	},
	
	"fire": {
		"type": "character",
		"character": "res://Assets/flame.png",
		"position": {
			"x": 550,
			"y": 375
		},
		"next": "narrator_act2_scene1_h_2"
	},
	
	"narrator_act2_scene1_h_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Wait, what is that?",
		"next": "narration_act2_scene1_h_3"
	},
	
	"narration_act2_scene1_h_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle puts his hand over the flame. It doesn't hurt.",
		"next": "narration_act2_scene1_h_4"
	},
	
	"narration_act2_scene1_h_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle holds the fire in his hands and the fire becomes a part of him.",
		"next": "narration_act2_scene1_h_5"
	},
	
	"narration_act2_scene1_h_5": {
		"type": "dialogue",
		"speaker": "",
		"text": "It feels warm.",
		"next": "narration_act2_scene1_h_6"
	},
	
	"narration_act2_scene1_h_6": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle focuses on his hand and a small fire ball appears.",
		"next": "narration_act2_scene1_h_7"
	},
	
	"narration_act2_scene1_h_7": {
		"type": "dialogue",
		"speaker": "",
		"text": "He makes a gun with his fingers, points it at a Macbeth poster on the wall, and shoots the fire ball at the poster, burning it.",
		"next": "kyle_act2_scene1_h_5"
	},
	
	"kyle_act2_scene1_h_5": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Woah.",
		"next": "zach_act2_scene1_h_3"
	},
	
	"zach_act2_scene1_h_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You have fire magic?",
		"next": "kyle_act2_scene1_h_6"
	},
	
	"kyle_act2_scene1_h_6": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I have fire magic!",
		"next": "jayce_act2_scene1_h_0"
	},
	
	"jayce_act2_scene1_h_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "You have fire magic!",
		"next": "zach_act2_scene1_h_4"
	},
	
	"zach_act2_scene1_h_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "How did you do that?",
		"next": "kyle_act2_scene1_h_7"
	},
	
	"kyle_act2_scene1_h_7": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I don't know. It came naturally to me.",
		"next": "narrator_act2_scene1_h_3"
	},
	
	"narrator_act2_scene1_h_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You're supposed to get the bow! What did you do?",
		"next": "kyle_act2_scene1_h_8"
	},
	
	"kyle_act2_scene1_h_8": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I'm just bending the rules a little...",
		"next": "narration_act2_scene1_h_8"
	},
	
	"narration_act2_scene1_h_8": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle looks in the mirror.",
		"next": "kyle_act2_scene1_h_9"
	},
	
	"kyle_act2_scene1_h_9": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I changed my appearance... and bent the rules...",
		"next": "kyle_act2_scene1_h_10"
	},
	
	"kyle_act2_scene1_h_10": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I followed the prophecy?",
		"next": "narrator_act2_scene1_h_4"
	},
	
	"narrator_act2_scene1_h_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You still followed the prophecy!",
		"next": "zach_act2_scene1_h_5"
	},
	
	"zach_act2_scene1_h_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No, you did what you wanted to do.",
		"next": "narrator_act2_scene1_h_5"
	},
	
	"narrator_act2_scene1_h_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "I think I can work with this.",
		"next": "narrator_act2_scene1_h_6"
	},
	
	"narrator_act2_scene1_h_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "We can still get back on script.",
		"next": "narration_act2_scene1_h_9"
	},
	
	"narration_act2_scene1_h_9": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene1_h_7"
	},
	
	"narrator_act2_scene1_h_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Ah-hem. It's time for your second quest.",
		"next": "act2_scene1_h_portal"
	},
	
	"act2_scene1_h_portal": {
		"type": "choice",
		"map": "Second Quest Portal",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "act2_scene2_h_background"
			}
		]
	}
}
