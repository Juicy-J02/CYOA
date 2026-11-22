class_name Scene5
extends RefCounted

# Act 2, scene 2: the Second Quest (restaurant). e = Go back to your Ex, f = Stay with your Friends.
static func get_nodes() -> Dictionary:
	return {
	"act2_scene2_u_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Diner.jpg",
		"music": "The Second Quest.mp3",
		"next": "act2_scene2_u_meet_friends"
	},
	
	"act2_scene2_u_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene2_u_0"
	},
	
	"narrator_act2_scene2_u_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his friends went through the portal and found themselves in their favorite restaurant.",
		"next": "narrator_act2_scene2_u_1"
	},
	
	"narrator_act2_scene2_u_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric had just gotten into a fight with his girlfriend.",
		"next": "narrator_act2_scene2_u_2"
	},
	
	"narrator_act2_scene2_u_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "His high-school sweetheart.",
		"next": "narrator_act2_scene2_u_3"
	},
	
	"narrator_act2_scene2_u_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "So, The Hero brought him to his favorite restaurant, with a gift.",
		"next": "zach_act2_scene2_u_0"
	},
	
	"zach_act2_scene2_u_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No, the gift was Kyle's idea.",
		"next": "kyle_act2_scene2_u_0"
	},
	
	"kyle_act2_scene2_u_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Yeah, I picked the scarf.",
		"next": "narrator_act2_scene2_u_4"
	},
	
	"narrator_act2_scene2_u_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric told them he and his girlfriend got in a fight and he said something he shouldn't have said. Something he didn't mean to say.",
		"next": "jayce_act2_scene2_u_0"
	},
	
	"jayce_act2_scene2_u_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "I wouldn't call it a fight. It was just a conversation.",
		"next": "jayce_act2_scene2_u_1"
	},
	
	"jayce_act2_scene2_u_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "And I meant what I said.",
		"next": "jayce_act2_scene2_u_2"
	},
	
	"jayce_act2_scene2_u_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We both did.",
		"next": "narrator_act2_scene2_u_5"
	},
	
	"narrator_act2_scene2_u_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric told her he didn't want to see her anymore, that they shouldn't be together.",
		"next": "jayce_act2_scene2_u_3"
	},
	
	"jayce_act2_scene2_u_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "*sigh*",
		"next": "narrator_act2_scene2_u_6"
	},
	
	"narrator_act2_scene2_u_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Rogue told him he was right to leave her.",
		"next": "kyle_act2_scene2_u_1"
	},
	
	"kyle_act2_scene2_u_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "You did the right thing, going your separate ways.",
		"next": "narration_act2_scene2_u_0"
	},
	
	"narration_act2_scene2_u_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle offers Jayce the red scarf.",
		"next": "act2_scene2_u_scarf"
	},
	
	"act2_scene2_u_scarf": {
		"type": "character",
		"character": "res://Assets/scarf.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "jayce_act2_scene2_u_4"
	},
	
	"jayce_act2_scene2_u_4": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We both knew that this wasn't what either of us wanted. She said-",
		"next": "narrator_act2_scene2_u_7"
	},
	
	"narrator_act2_scene2_u_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, The Cleric must fix his past mistake and mend his bond with his girlfriend.",
		"next": "narrator_act2_scene2_u_8"
	},
	
	"narrator_act2_scene2_u_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero told him he should return to his love.",
		"next": "act2_scene2_u_choice"
	},
	
	"act2_scene2_u_choice": {
		"type": "choice",
		"map": "Ex or Friends",
		"choices": [
			{
				"text": "Go back to your Ex",
				"next": "act2_scene2_ue_background"
			},
			{
				"text": "Stay with your Friends",
				"next": "act2_scene2_uf_background"
			}
		]
	},
	
	"act2_scene2_ue_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Diner.jpg",
		"music": "The Shield.mp3",
		"next": "act2_scene2_ue_meet_friends"
	},
	
	"act2_scene2_ue_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "act2_scene2_ue_scarf"
	},
	
	"act2_scene2_ue_scarf": {
		"type": "character",
		"character": "res://Assets/scarf.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "zach_act2_scene2_ue_0"
	},
	
	"zach_act2_scene2_ue_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I think you should keep trying to make it work.",
		"next": "zach_act2_scene2_ue_1"
	},
	
	"zach_act2_scene2_ue_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You still care about each other right?",
		"next": "jayce_act2_scene2_ue_0"
	},
	
	"jayce_act2_scene2_ue_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Well, yeah but not like-",
		"next": "narrator_act2_scene2_ue_0"
	},
	
	"narrator_act2_scene2_ue_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero told The Cleric that he should go back to his girlfriend.",
		"next": "narrator_act2_scene2_ue_1"
	},
	
	"narrator_act2_scene2_ue_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "All relationships face challenges, but the image of a perfect pair is worth it.",
		"next": "jayce_act2_scene2_ue_1"
	},
	
	"jayce_act2_scene2_ue_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Zach, are you serious?",
		"next": "zach_act2_scene2_ue_2"
	},
	
	"zach_act2_scene2_ue_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "He tried doing what he wanted and it didn't break the prophecy.",
		"next": "zach_act2_scene2_ue_3"
	},
	
	"zach_act2_scene2_ue_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "What if we can't?",
		"next": "narrator_act2_scene2_ue_2"
	},
	
	"narrator_act2_scene2_ue_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You can't break the prophecy.",
		"next": "zach_act2_scene2_ue_4"
	},
	
	"zach_act2_scene2_ue_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "We don't have a choice.",
		"next": "narrator_act2_scene2_ue_3"
	},
	
	"narrator_act2_scene2_ue_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric turns down the red scarf and decides to go back to his love.",
		"next": "jayce_act2_scene2_ue_2"
	},
	
	"jayce_act2_scene2_ue_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Really?",
		"next": "narrator_act2_scene2_ue_4"
	},
	
	"narrator_act2_scene2_ue_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric puts down the red scarf.",
		"next": "narration_act2_scene2_ue_0"
	},
	
	"narration_act2_scene2_ue_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce puts down the red scarf.",
		"next": "act2_scene2_ue_background_2"
	},
	
	"act2_scene2_ue_background_2": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Diner.jpg",
		"next": "act2_scene2_ue_meet_friends_2"
	},
	
	"act2_scene2_ue_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene2_ue_5"
	},
	
	"narrator_act2_scene2_ue_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Suddenly, a beautiful shield appeared before him. He took the shield.",
		"next": "act2_scene2_ue_shield"
	},
	
	"act2_scene2_ue_shield": {
		"type": "character",
		"character": "res://Assets/shield.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "narration_act2_scene2_ue_1"
	},
	
	"narration_act2_scene2_ue_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce picks up the shield.",
		"next": "jayce_act2_scene2_ue_3"
	},
	
	"jayce_act2_scene2_ue_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "It feels really heavy.",
		"next": "narrator_act2_scene2_ue_6"
	},
	
	"narrator_act2_scene2_ue_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You can bear it.",
		"next": "narration_act2_scene2_ue_2"
	},
	
	"narration_act2_scene2_ue_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_ue_7"
	},
	
	"narrator_act2_scene2_ue_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your third quest.",
		"next": "act2_scene2_ue_portal"
	},
	
	"act2_scene2_ue_portal": {
		"type": "choice",
		"map": "Third Quest Portal",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "act2_scene3_ue_background"
			}
		]
	},
	
	"act2_scene2_uf_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Diner.jpg",
		"music": "The Scarf.mp3",
		"next": "act2_scene2_uf_meet_friends"
	},
	
	"act2_scene2_uf_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "act2_scene2_uf_scarf"
	},
	
	"act2_scene2_uf_scarf": {
		"type": "character",
		"character": "res://Assets/scarf.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "narration_act2_scene2_uf_0"
	},
	
	"narration_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach smiles at Jayce.",
		"next": "zach_act2_scene2_uf_0"
	},
	
	"zach_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You were saying?",
		"next": "narrator_act2_scene2_uf_0"
	},
	
	"narrator_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Again?!",
		"next": "narration_act2_scene2_uf_1"
	},
	
	"narration_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce smiles back.",
		"next": "jayce_act2_scene2_uf_0"
	},
	
	"jayce_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "She said she wasn't feeling the same spark with me as her previous partners.",
		"next": "jayce_act2_scene2_uf_1"
	},
	
	"jayce_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Neither was I.",
		"next": "narrator_act2_scene2_uf_1"
	},
	
	"narrator_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "I thought you were actors? You should be able to-",
		"next": "jayce_act2_scene2_uf_2"
	},
	
	"jayce_act2_scene2_uf_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Since we became friends in freshman year, everyone said we looked so good together.",
		"next": "jayce_act2_scene2_uf_3"
	},
	
	"jayce_act2_scene2_uf_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Her friends would tease her anytime we hung out.",
		"next": "jayce_act2_scene2_uf_4"
	},
	
	"jayce_act2_scene2_uf_4": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "My parents would ask when I was finally going to ask her on a date.",
		"next": "jayce_act2_scene2_uf_5"
	},
	
	"jayce_act2_scene2_uf_5": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Eventually the pressure became too much and we both caved.",
		"next": "jayce_act2_scene2_uf_6"
	},
	
	"jayce_act2_scene2_uf_6": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "For a while we tried to make it work.",
		"next": "jayce_act2_scene2_uf_7"
	},
	
	"jayce_act2_scene2_uf_7": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We went on dates, watched movies together, held hands while we walked between classes...",
		"next": "jayce_act2_scene2_uf_8"
	},
	
	"jayce_act2_scene2_uf_8": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We only started dating to get everyone off our backs, but forcing ourselves to be together was worse.",
		"next": "jayce_act2_scene2_uf_9"
	},
	
	"jayce_act2_scene2_uf_9": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "So we said goodbye.",
		"next": "narration_act2_scene2_uf_2"
	},
	
	"narration_act2_scene2_uf_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce puts on the red scarf.",
		"next": "act2_scene2_uf_background_2"
	},
	
	"act2_scene2_uf_background_2": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Diner.jpg",
		"next": "act2_scene2_uf_meet_friends_2"
	},
	
	"act2_scene2_uf_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene2_uf_3"
	},
	
	"narration_act2_scene2_uf_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly a small bright fire appears in the air in front of him.",
		"next": "act2_scene2_uf_flame"
	},
	
	"act2_scene2_uf_flame": {
		"type": "character",
		"character": "res://Assets/flame.png",
		"position": {
			"x": 425,
			"y": 250
		},
		"next": "narration_act2_scene2_uf_4"
	},
	
	"narration_act2_scene2_uf_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce holds the fire in his hands and the fire becomes a part of him.",
		"next": "narration_act2_scene2_uf_5"
	},
	
	"narration_act2_scene2_uf_5": {
		"type": "dialogue",
		"speaker": "",
		"text": "It feels warm.",
		"next": "narration_act2_scene2_uf_6"
	},
	
	"narration_act2_scene2_uf_6": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce focuses on his hand and waves it up, creating a small wall of fire around him, Zach, and Kyle.",
		"next": "zach_kyle_act2_scene2_uf_0"
	},
	
	"zach_kyle_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "Zach and Kyle",
		"text": "DUUUUDE!",
		"next": "jayce_act2_scene2_uf_10"
	},
	
	"jayce_act2_scene2_uf_10": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "This is so cool.",
		"next": "zach_act2_scene2_uf_1"
	},
	
	"zach_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "How did you do that?",
		"next": "jayce_act2_scene2_uf_11"
	},
	
	"jayce_act2_scene2_uf_11": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "I don't know. It came naturally to me.",
		"next": "narrator_act2_scene2_uf_2"
	},
	
	"narrator_act2_scene2_uf_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You know you're only making this harder for yourselves, right?",
		"next": "narrator_act2_scene2_uf_3"
	},
	
	"narrator_act2_scene2_uf_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It would be so much easier if you just did what I told you to.",
		"next": "zach_act2_scene2_uf_2"
	},
	
	"zach_act2_scene2_uf_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "That didn't help Kyle.",
		"next": "zach_act2_scene2_uf_3"
	},
	
	"zach_act2_scene2_uf_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Breaking the prophecy sounds much more fun.",
		"next": "narration_act2_scene2_uf_7"
	},
	
	"narration_act2_scene2_uf_7": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce makes another small wall of fire.",
		"next": "jayce_act2_scene2_uf_12"
	},
	
	"jayce_act2_scene2_uf_12": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "You can say that again.",
		"next": "jayce_act2_scene2_uf_13"
	},
	
	"jayce_act2_scene2_uf_13": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Besides we already talked about it. More words won't magically fix... things...",
		"next": "jayce_act2_scene2_uf_14"
	},
	
	"jayce_act2_scene2_uf_14": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "...",
		"next": "jayce_act2_scene2_uf_15"
	},
	
	"jayce_act2_scene2_uf_15": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "A bond breaks that words won't mend.",
		"next": "jayce_act2_scene2_uf_16"
	},
	
	"jayce_act2_scene2_uf_16": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "I followed the prophecy.",
		"next": "zach_act2_scene2_uf_4"
	},
	
	"zach_act2_scene2_uf_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No, you did what you wanted to do.",
		"next": "narrator_act2_scene2_uf_4"
	},
	
	"narrator_act2_scene2_uf_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Thank goodness. It's not too late to get back on track.",
		"next": "narrator_act2_scene2_uf_5"
	},
	
	"narrator_act2_scene2_uf_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach. Please for the good of everyone, make the right choice next time.",
		"next": "zach_act2_scene2_uf_5"
	},
	
	"zach_act2_scene2_uf_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Sure.",
		"next": "narration_act2_scene2_uf_8"
	},
	
	"narration_act2_scene2_uf_8": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_uf_6"
	},
	
	"narrator_act2_scene2_uf_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your third quest.",
		"next": "act2_scene2_uf_portal"
	},
	
	"act2_scene2_uf_portal": {
		"type": "choice",
		"map": "Third Quest Portal",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "act2_scene3_uf_background"
			}
		]
	},
	
	"act2_scene2_h_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Diner.jpg",
		"music": "The Second Quest.mp3",
		"next": "act2_scene2_h_meet_friends"
	},
	
	"act2_scene2_h_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene2_h_0"
	},
	
	"narrator_act2_scene2_h_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his friends went through the portal and found themselves in their favorite restaurant.",
		"next": "narrator_act2_scene2_h_1"
	},
	
	"narrator_act2_scene2_h_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric had just gotten into a fight with his girlfriend.",
		"next": "narrator_act2_scene2_h_2"
	},
	
	"narrator_act2_scene2_h_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "His high-school sweetheart.",
		"next": "narrator_act2_scene2_h_3"
	},
	
	"narrator_act2_scene2_h_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "So, The Hero brought him to his favorite restaurant, with a gift.",
		"next": "zach_act2_scene2_h_0"
	},
	
	"zach_act2_scene2_h_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No, the gift was Kyle's idea.",
		"next": "kyle_act2_scene2_h_0"
	},
	
	"kyle_act2_scene2_h_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Yeah, I picked the scarf.",
		"next": "narrator_act2_scene2_h_4"
	},
	
	"narrator_act2_scene2_h_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric told them he and his girlfriend got in a fight and he said something he shouldn't have said. Something he didn't mean to say.",
		"next": "jayce_act2_scene2_h_0"
	},
	
	"jayce_act2_scene2_h_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "I wouldn't call it a fight. It was just a conversation.",
		"next": "jayce_act2_scene2_h_1"
	},
	
	"jayce_act2_scene2_h_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "And I meant what I said.",
		"next": "jayce_act2_scene2_h_2"
	},
	
	"jayce_act2_scene2_h_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We both did.",
		"next": "narrator_act2_scene2_h_5"
	},
	
	"narrator_act2_scene2_h_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric told her he didn't want to see her anymore, that they shouldn't be together.",
		"next": "jayce_act2_scene2_h_3"
	},
	
	"jayce_act2_scene2_h_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "*sigh*",
		"next": "narrator_act2_scene2_h_6"
	},
	
	"narrator_act2_scene2_h_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Rogue told him he was right to leave her.",
		"next": "kyle_act2_scene2_h_1"
	},
	
	"kyle_act2_scene2_h_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "You did the right thing, going your separate ways.",
		"next": "narration_act2_scene2_h_0"
	},
	
	"narration_act2_scene2_h_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle offers Jayce the red scarf.",
		"next": "act2_scene2_h_scarf"
	},
	
	"act2_scene2_h_scarf": {
		"type": "character",
		"character": "res://Assets/scarf.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "jayce_act2_scene2_h_4"
	},
	
	"jayce_act2_scene2_h_4": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We both knew that this wasn't what either of us wanted. She said-",
		"next": "narrator_act2_scene2_h_7"
	},
	
	"narrator_act2_scene2_h_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, The Cleric must fix his past mistake and mend his bond with his girlfriend.",
		"next": "narrator_act2_scene2_h_8"
	},
	
	"narrator_act2_scene2_h_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero told him he should return to his love.",
		"next": "act2_scene2_h_choice"
	},
	
	"act2_scene2_h_choice": {
		"type": "choice",
		"map": "Ex or Friends",
		"choices": [
			{
				"text": "Go back to your Ex",
				"next": "act2_scene2_he_background"
			},
			{
				"text": "Stay with your Friends",
				"next": "act2_scene2_hf_background"
			}
		]
	},
	
	"act2_scene2_he_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Diner.jpg",
		"music": "The Shield.mp3",
		"next": "act2_scene2_he_meet_friends"
	},
	
	"act2_scene2_he_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "act2_scene2_he_scarf"
	},
	
	"act2_scene2_he_scarf": {
		"type": "character",
		"character": "res://Assets/scarf.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "zach_act2_scene2_he_0"
	},
	
	"zach_act2_scene2_he_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I think you should keep trying to make it work.",
		"next": "zach_act2_scene2_he_1"
	},
	
	"zach_act2_scene2_he_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You still care about each other right?",
		"next": "jayce_act2_scene2_he_0"
	},
	
	"jayce_act2_scene2_he_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Well, yeah but not like-",
		"next": "narrator_act2_scene2_he_0"
	},
	
	"narrator_act2_scene2_he_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero told The Cleric that he should go back to his girlfriend.",
		"next": "narrator_act2_scene2_he_1"
	},
	
	"narrator_act2_scene2_he_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "All relationships face challenges, but the image of a perfect pair is worth it.",
		"next": "jayce_act2_scene2_he_1"
	},
	
	"jayce_act2_scene2_he_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Zach, are you serious?",
		"next": "zach_act2_scene2_he_2"
	},
	
	"zach_act2_scene2_he_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "He tried doing what he wanted and it didn't break the prophecy.",
		"next": "zach_act2_scene2_he_3"
	},
	
	"zach_act2_scene2_he_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "What if we can't?",
		"next": "narrator_act2_scene2_he_2"
	},
	
	"narrator_act2_scene2_he_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You can't break the prophecy.",
		"next": "zach_act2_scene2_he_4"
	},
	
	"zach_act2_scene2_he_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "We don't have a choice.",
		"next": "narrator_act2_scene2_he_3"
	},
	
	"narrator_act2_scene2_he_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric turns down the red scarf and decides to go back to his love.",
		"next": "jayce_act2_scene2_he_2"
	},
	
	"jayce_act2_scene2_he_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Really?",
		"next": "narrator_act2_scene2_he_4"
	},
	
	"narrator_act2_scene2_he_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric puts down the red scarf.",
		"next": "narration_act2_scene2_he_0"
	},
	
	"narration_act2_scene2_he_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce puts down the red scarf.",
		"next": "act2_scene2_he_background_2"
	},
	
	"act2_scene2_he_background_2": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Diner.jpg",
		"next": "act2_scene2_he_meet_friends_2"
	},
	
	"act2_scene2_he_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene2_he_5"
	},
	
	"narrator_act2_scene2_he_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Suddenly, a beautiful shield appeared before him. He took the shield.",
		"next": "act2_scene2_he_shield"
	},
	
	"act2_scene2_he_shield": {
		"type": "character",
		"character": "res://Assets/shield.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "narration_act2_scene2_he_1"
	},
	
	"narration_act2_scene2_he_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce picks up the shield.",
		"next": "jayce_act2_scene2_he_3"
	},
	
	"jayce_act2_scene2_he_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "It feels really heavy.",
		"next": "narrator_act2_scene2_he_6"
	},
	
	"narrator_act2_scene2_he_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You can bear it.",
		"next": "narration_act2_scene2_he_2"
	},
	
	"narration_act2_scene2_he_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_he_7"
	},
	
	"narrator_act2_scene2_he_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your third quest.",
		"next": "act2_scene2_he_portal"
	},
	
	"act2_scene2_he_portal": {
		"type": "choice",
		"map": "Third Quest Portal",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "act2_scene3_he_background"
			}
		]
	},
	
	"act2_scene2_hf_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Diner.jpg",
		"music": "The Scarf.mp3",
		"next": "act2_scene2_hf_meet_friends"
	},
	
	"act2_scene2_hf_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "act2_scene2_hf_scarf"
	},
	
	"act2_scene2_hf_scarf": {
		"type": "character",
		"character": "res://Assets/scarf.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "narration_act2_scene2_hf_0"
	},
	
	"narration_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach smiles at Jayce.",
		"next": "zach_act2_scene2_hf_0"
	},
	
	"zach_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You were saying?",
		"next": "narrator_act2_scene2_hf_0"
	},
	
	"narrator_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Again?!",
		"next": "narration_act2_scene2_hf_1"
	},
	
	"narration_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce smiles back.",
		"next": "jayce_act2_scene2_hf_0"
	},
	
	"jayce_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "She said she wasn't feeling the same spark with me as her previous partners.",
		"next": "jayce_act2_scene2_hf_1"
	},
	
	"jayce_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Neither was I.",
		"next": "narrator_act2_scene2_hf_1"
	},
	
	"narrator_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "I thought you were actors? You should be able to-",
		"next": "jayce_act2_scene2_hf_2"
	},
	
	"jayce_act2_scene2_hf_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Since we became friends in freshman year, everyone said we looked so good together.",
		"next": "jayce_act2_scene2_hf_3"
	},
	
	"jayce_act2_scene2_hf_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Her friends would tease her anytime we hung out.",
		"next": "jayce_act2_scene2_hf_4"
	},
	
	"jayce_act2_scene2_hf_4": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "My parents would ask when I was finally going to ask her on a date.",
		"next": "jayce_act2_scene2_hf_5"
	},
	
	"jayce_act2_scene2_hf_5": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Eventually the pressure became too much and we both caved.",
		"next": "jayce_act2_scene2_hf_6"
	},
	
	"jayce_act2_scene2_hf_6": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "For a while we tried to make it work.",
		"next": "jayce_act2_scene2_hf_7"
	},
	
	"jayce_act2_scene2_hf_7": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We went on dates, watched movies together, held hands while we walked between classes...",
		"next": "jayce_act2_scene2_hf_8"
	},
	
	"jayce_act2_scene2_hf_8": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We only started dating to get everyone off our backs, but forcing ourselves to be together was worse.",
		"next": "jayce_act2_scene2_hf_9"
	},
	
	"jayce_act2_scene2_hf_9": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "So we said goodbye.",
		"next": "narration_act2_scene2_hf_2"
	},
	
	"narration_act2_scene2_hf_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce puts on the red scarf.",
		"next": "act2_scene2_hf_background_2"
	},
	
	"act2_scene2_hf_background_2": {
		"type": "background",
		"background": "res://Assets/Backgrounds/Diner.jpg",
		"next": "act2_scene2_hf_meet_friends_2"
	},
	
	"act2_scene2_hf_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene2_hf_3"
	},
	
	"narration_act2_scene2_hf_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly a small bright fire appears in the air in front of him.",
		"next": "act2_scene2_hf_flame"
	},
	
	"act2_scene2_hf_flame": {
		"type": "character",
		"character": "res://Assets/flame.png",
		"position": {
			"x": 425,
			"y": 250
		},
		"next": "narration_act2_scene2_hf_4"
	},
	
	"narration_act2_scene2_hf_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce holds the fire in his hands and the fire becomes a part of him.",
		"next": "narration_act2_scene2_hf_5"
	},
	
	"narration_act2_scene2_hf_5": {
		"type": "dialogue",
		"speaker": "",
		"text": "It feels warm.",
		"next": "narration_act2_scene2_hf_6"
	},
	
	"narration_act2_scene2_hf_6": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce focuses on his hand and waves it up, creating a small wall of fire around him, Zach, and Kyle.",
		"next": "zach_kyle_act2_scene2_hf_0"
	},
	
	"zach_kyle_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "Zach and Kyle",
		"text": "DUUUUDE!",
		"next": "jayce_act2_scene2_hf_10"
	},
	
	"jayce_act2_scene2_hf_10": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "This is so cool.",
		"next": "narrator_act2_scene2_hf_2"
	},
	
	"narrator_act2_scene2_hf_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You know you're only making this harder for yourselves, right?",
		"next": "narrator_act2_scene2_hf_3"
	},
	
	"narrator_act2_scene2_hf_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It would be so much easier if you just did what I told you to.",
		"next": "narration_act2_scene2_hf_7"
	},
	
	"narration_act2_scene2_hf_7": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle shoots another small fire ball across the restaurant.",
		"next": "kyle_act2_scene2_hf_0"
	},
	
	"kyle_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "But breaking the prophecy is much more fun.",
		"next": "narration_act2_scene2_hf_8"
	},
	
	"narration_act2_scene2_hf_8": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce makes another small wall of fire.",
		"next": "jayce_act2_scene2_hf_11"
	},
	
	"jayce_act2_scene2_hf_11": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "You can say that again.",
		"next": "jayce_act2_scene2_hf_12"
	},
	
	"jayce_act2_scene2_hf_12": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Besides we already talked about it. More words won't magically fix... things...",
		"next": "jayce_act2_scene2_hf_13"
	},
	
	"jayce_act2_scene2_hf_13": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "...",
		"next": "jayce_act2_scene2_hf_14"
	},
	
	"jayce_act2_scene2_hf_14": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "A bond breaks that words won't mend.",
		"next": "jayce_act2_scene2_hf_15"
	},
	
	"jayce_act2_scene2_hf_15": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "I followed the prophecy. Again.",
		"next": "zach_act2_scene2_hf_1"
	},
	
	"zach_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Oh come on! Not again?!",
		"next": "narrator_act2_scene2_hf_4"
	},
	
	"narrator_act2_scene2_hf_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Hopefully this makes you realize how foolish you're all being.",
		"next": "narrator_act2_scene2_hf_5"
	},
	
	"narrator_act2_scene2_hf_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach. Please for the good of everyone, make the right choice next time.",
		"next": "zach_act2_scene2_hf_2"
	},
	
	"zach_act2_scene2_hf_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Sure.",
		"next": "narration_act2_scene2_hf_9"
	},
	
	"narration_act2_scene2_hf_9": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_hf_6"
	},
	
	"narrator_act2_scene2_hf_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your third quest.",
		"next": "act2_scene2_hf_portal"
	},
	
	"act2_scene2_hf_portal": {
		"type": "choice",
		"map": "Third Quest Portal",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "act2_scene3_hf_background"
			}
		]
	}
}
