class_name Scene6
extends RefCounted

# Act 2, scene 3: the Third Quest (the office building). o = Office, b = Basement.
static func get_nodes() -> Dictionary:
	return {
	"act2_scene3_ue_background": {
		"type": "background",
		"background": "",
		"music": "The Third Quest.mp3",
		"next": "act2_scene3_ue_meet_friends"
	},
	
	"act2_scene3_ue_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene3_ue_0"
	},
	
	"narrator_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his friends went through the portal and found themselves in his parents' office building.",
		"next": "narrator_act2_scene3_ue_1"
	},
	
	"narrator_act2_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero's parents were giving him and his friends a tour of the building he'll inherit and show them how things work around here.",
		"next": "narrator_act2_scene3_ue_2"
	},
	
	"narrator_act2_scene3_ue_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They entered in a large room with black carpet floors and plain grey walls with the occasional Hang In There poster.",
		"next": "narrator_act2_scene3_ue_3"
	},
	
	"narrator_act2_scene3_ue_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach's mom shows them around the first floor.",
		"next": "mom_act2_scene3_ue_0"
	},
	
	"mom_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "This is the main workplace. Open floor plan and minimalist design for maximum productivity.",
		"next": "kyle_act2_scene3_ue_0"
	},
	
	"kyle_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "How fun.",
		"next": "zach_act2_scene3_ue_0"
	},
	
	"zach_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Does everyone work in the same room?",
		"next": "mom_act2_scene3_ue_1"
	},
	
	"mom_act2_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Of course not. There are several floors just like this.",
		"next": "dad_act2_scene3_ue_0"
	},
	
	"dad_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "Zach's Dad",
		"text": "But don't worry. Your office will be on the top floor, above all this.",
		"next": "narrator_act2_scene3_ue_4"
	},
	
	"narrator_act2_scene3_ue_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "One of their employees came over to talk to them.",
		"next": "narration_act2_scene3_ue_0"
	},
	
	"narration_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks over to see the Narrator standing next to them.",
		"next": "narrator_act2_scene3_ue_5"
	},
	
	"narrator_act2_scene3_ue_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Excuse me, Mrs. Davis, you asked for a progress report on the product?",
		"next": "zach_act2_scene3_ue_1"
	},
	
	"zach_act2_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Why are you here?",
		"next": "narrator_act2_scene3_ue_6"
	},
	
	"narrator_act2_scene3_ue_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "No one else is here to play the employee, so I'm taking the role.",
		"next": "narrator_act2_scene3_ue_7"
	},
	
	"narrator_act2_scene3_ue_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Ah-hem.",
		"next": "narrator_act2_scene3_ue_8"
	},
	
	"narrator_act2_scene3_ue_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Excuse me, Mrs. Davis, you asked for a progress report on the product?",
		"next": "mom_act2_scene3_ue_2"
	},
	
	"mom_act2_scene3_ue_2": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Yes.",
		"next": "narrator_act2_scene3_ue_9"
	},
	
	"narrator_act2_scene3_ue_9": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Well, it's still behind schedule and everyone you hired in the last 3 weeks hasn't helped. My team thinks we need to cut some features.",
		"next": "mom_act2_scene3_ue_3"
	},
	
	"mom_act2_scene3_ue_3": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Your job is not to think, it's to meet their requirements by the deadline.",
		"next": "mom_act2_scene3_ue_4"
	},
	
	"mom_act2_scene3_ue_4": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "This is how it's always been done and it hasn't failed us yet.",
		"next": "mom_act2_scene3_ue_5"
	},
	
	"mom_act2_scene3_ue_5": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Now get back to work.",
		"next": "narration_act2_scene3_ue_1"
	},
	
	"narration_act2_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator walks away.",
		"next": "mom_act2_scene3_ue_6"
	},
	
	"mom_act2_scene3_ue_6": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "*sigh* Come on Zach, it's time to see your future office.",
		"next": "jayce_act2_scene3_ue_0"
	},
	
	"jayce_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Is that how you treat all your employees?",
		"next": "narration_act2_scene3_ue_2"
	},
	
	"narration_act2_scene3_ue_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce turns to Zach.",
		"next": "jayce_act2_scene3_ue_1"
	},
	
	"jayce_act2_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Is that who you want to be?",
		"next": "kyle_act2_scene3_ue_1"
	},
	
	"kyle_act2_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Is this really what you want?",
		"next": "narration_act2_scene3_ue_3"
	},
	
	"narration_act2_scene3_ue_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach turns towards the red basement door.",
		"next": "narrator_act2_scene3_ue_10"
	},
	
	"narrator_act2_scene3_ue_10": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach's parents' time as the heads of the company is coming to a close.",
		"next": "narrator_act2_scene3_ue_11"
	},
	
	"narrator_act2_scene3_ue_11": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, The Hero must fix his past mistake, go to the highest floor, and be who he's supposed to be.",
		"next": "act2_scene3_ue_choice"
	},
	
	"act2_scene3_ue_choice": {
		"type": "choice",
		"map": "Office or Basement",
		"choices": [
			{
				"text": "Go to the Office",
				"next": "act2_scene3_ueo_background"
			},
			{
				"text": "Go to the Basement",
				"next": "act2_scene3_ueb_background"
			}
		]
	},
	
	"act2_scene3_ueo_background": {
		"type": "background",
		"background": "",
		"music": "The Sword.mp3",
		"next": "act2_scene3_ueo_meet_friends"
	},
	
	"act2_scene3_ueo_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "zach_act2_scene3_ueo_0"
	},
	
	"zach_act2_scene3_ueo_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Let's just get this over with.",
		"next": "narrator_act2_scene3_ueo_0"
	},
	
	"narrator_act2_scene3_ueo_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero embraces his destiny and enters the elevator to the highest floor of the building.",
		"next": "narrator_act2_scene3_ueo_1"
	},
	
	"narrator_act2_scene3_ueo_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric and Rogue follow behind him into the elevator.",
		"next": "act2_scene3_ueo_elevator"
	},
	
	"act2_scene3_ueo_elevator": {
		"type": "background",
		"background": "",
		"next": "zach_act2_scene3_ueo_1"
	},
	
	"zach_act2_scene3_ueo_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "...",
		"next": "kyle_act2_scene3_ueo_0"
	},
	
	"kyle_act2_scene3_ueo_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "...",
		"next": "jayce_act2_scene3_ueo_0"
	},
	
	"jayce_act2_scene3_ueo_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "...",
		"next": "narrator_act2_scene3_ueo_2"
	},
	
	"narrator_act2_scene3_ueo_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They arrive at the highest floor.",
		"next": "act2_scene3_ueo_background_3"
	},
	
	"act2_scene3_ueo_background_3": {
		"type": "background",
		"background": "",
		"next": "act2_scene3_ueo_meet_friends_2"
	},
	
	"act2_scene3_ueo_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene3_ueo_3"
	},
	
	"narrator_act2_scene3_ueo_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The elevator doors open to a large waiting room in front of The Hero's future office.",
		"next": "narrator_act2_scene3_ueo_4"
	},
	
	"narrator_act2_scene3_ueo_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "In the middle of the room is The Dragon bound by chains of ice on its wings and a muzzle over its mouth.",
		"next": "narrator_act2_scene3_ueo_5"
	},
	
	"narrator_act2_scene3_ueo_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his parents step out into the room.",
		"next": "narrator_act2_scene3_ueo_6"
	},
	
	"narrator_act2_scene3_ueo_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "On the floor in front of them, between The Hero and The Dragon, sits a long sword with an ornate handle.",
		"next": "act2_scene3_ueo_sword"
	},
	
	"act2_scene3_ueo_sword": {
		"type": "character",
		"character": "res://Assets/sword.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "narrator_act2_scene3_ueo_7"
	},
	
	"narrator_act2_scene3_ueo_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero steps forward and picks up the cold metal blade.",
		"next": "narrator_act2_scene3_ueo_8"
	},
	
	"narrator_act2_scene3_ueo_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time to slay The Dragon.",
		"next": "act2_scene3_ueo_choice"
	},
	
	"act2_scene3_ueo_choice": {
		"type": "choice",
		"map": "Fight the Dragon",
		"choices": [
			{
				"text": "Fight the Dragon",
				"next": "act3_scene1_ueo_background"
			}
		]
	},
	
	"act2_scene3_ueb_background": {
		"type": "background",
		"background": "",
		"music": "The Scar.mp3",
		"next": "act2_scene3_ueb_meet_friends"
	},
	
	"act2_scene3_ueb_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene3_ueb_0"
	},
	
	"narration_act2_scene3_ueb_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach smiles and turns towards the basement door.",
		"next": "zach_act2_scene3_ueb_0"
	},
	
	"zach_act2_scene3_ueb_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I already hated the thought of following their plan for me.",
		"next": "zach_act2_scene3_ueb_1"
	},
	
	"zach_act2_scene3_ueb_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "But seeing how my parents treated their employees, how they expected me to treat them...",
		"next": "zach_act2_scene3_ueb_2"
	},
	
	"zach_act2_scene3_ueb_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Kyle, Jayce and I snuck towards the red basement door.",
		"next": "zach_act2_scene3_ueb_3"
	},
	
	"zach_act2_scene3_ueb_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "We descended the strangely ominous stairway before reaching the building's unfinished basement.",
		"next": "zach_act2_scene3_ueb_4"
	},
	
	"zach_act2_scene3_ueb_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The basement was full of random discarded junk.",
		"next": "zach_act2_scene3_ueb_5"
	},
	
	"zach_act2_scene3_ueb_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Posters, desks, cleaning supplies, a fuse box on the wall, and a blanket covering something.",
		"next": "zach_act2_scene3_ueb_6"
	},
	
	"zach_act2_scene3_ueb_6": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I pulled the blanket off, revealing two large boxes labeled \"Failed Projects\" and \"Failed Workers\".",
		"next": "zach_act2_scene3_ueb_7"
	},
	
	"zach_act2_scene3_ueb_7": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Inside the first box was stacks and stacks of papers detailing projects that were either late, over budget, or both.",
		"next": "zach_act2_scene3_ueb_8"
	},
	
	"zach_act2_scene3_ueb_8": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Though it looks like my parents blamed them on clients who asked too much and employees who worked too little.",
		"next": "zach_act2_scene3_ueb_9"
	},
	
	"zach_act2_scene3_ueb_9": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Inside the second box was several more stacks of paper about various employees they'd fired, the official reason why they were fired, and the real reason scrawled over it in red pen.",
		"next": "zach_act2_scene3_ueb_10"
	},
	
	"zach_act2_scene3_ueb_10": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Didn't do things on time. Didn't meet expectations. Didn't follow orders.",
		"next": "zach_act2_scene3_ueb_11"
	},
	
	"zach_act2_scene3_ueb_11": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Then I heard footsteps coming down the stairs.",
		"next": "mom_act2_scene3_ueb_0"
	},
	
	"mom_act2_scene3_ueb_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Honey, you're not supposed to be down here.",
		"next": "zach_act2_scene3_ueb_12"
	},
	
	"zach_act2_scene3_ueb_12": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I picked up a handful of documents from the Failed Projects box and turned to face her.",
		"next": "zach_act2_scene3_ueb_13"
	},
	
	"zach_act2_scene3_ueb_13": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Well I figured if I'm gonna take over the company, I should know all its dirty secrets.",
		"next": "zach_act2_scene3_ueb_14"
	},
	
	"zach_act2_scene3_ueb_14": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I picked up a red lighter off the floor.",
		"next": "zach_act2_scene3_ueb_15"
	},
	
	"zach_act2_scene3_ueb_15": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Although, I'd rather not take them with me.",
		"next": "zach_act2_scene3_ueb_16"
	},
	
	"zach_act2_scene3_ueb_16": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I flicked the lighter and lit the paper in my hand on fire.",
		"next": "zach_act2_scene3_ueb_17"
	},
	
	"zach_act2_scene3_ueb_17": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The higher-ups rushed towards me, knocking the shelf of cleaning supplies onto the ground.",
		"next": "zach_act2_scene3_ueb_18"
	},
	
	"zach_act2_scene3_ueb_18": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "They tackled me to the floor, covering my hand in the spilled cleaning solution.",
		"next": "zach_act2_scene3_ueb_19"
	},
	
	"zach_act2_scene3_ueb_19": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The fuse box began sparking.",
		"next": "zach_act2_scene3_ueb_20"
	},
	
	"zach_act2_scene3_ueb_20": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The cleaning solution on the floor ignited, lighting my arm on fire.",
		"next": "zach_act2_scene3_ueb_21"
	},
	
	"zach_act2_scene3_ueb_21": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The higher-ups jumped back in horror as I screamed.",
		"next": "zach_act2_scene3_ueb_22"
	},
	
	"zach_act2_scene3_ueb_22": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "They took a step towards me, but before they could do anything Kyle and Jayce rushed over and wrapped my arm in the blanket, putting out the fire.",
		"next": "zach_act2_scene3_ueb_23"
	},
	
	"zach_act2_scene3_ueb_23": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The burning liquid continued to spread across the floor, engulfing the room around us.",
		"next": "narration_act2_scene3_ueb_1"
	},
	
	"narration_act2_scene3_ueb_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach chuckles to himself.",
		"next": "zach_act2_scene3_ueb_24"
	},
	
	"zach_act2_scene3_ueb_24": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The fire grows.",
		"next": "narration_act2_scene3_ueb_2"
	},
	
	"narration_act2_scene3_ueb_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly a small bright fire appears in the air in front of him.",
		"next": "act2_scene3_ueb_flame"
	},
	
	"act2_scene3_ueb_flame": {
		"type": "character",
		"character": "res://Assets/flame.png",
		"position": {
			"x": 425,
			"y": 250
		},
		"next": "narration_act2_scene3_ueb_3"
	},
	
	"narration_act2_scene3_ueb_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach holds the fire in his hands and the fire becomes a part of him.",
		"next": "narration_act2_scene3_ueb_4"
	},
	
	"narration_act2_scene3_ueb_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "It feels warm.",
		"next": "narration_act2_scene3_ueb_5"
	},
	
	"narration_act2_scene3_ueb_5": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach's scar returns.",
		"next": "zach_act2_scene3_ueb_25"
	},
	
	"zach_act2_scene3_ueb_25": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "That's better.",
		"next": "narration_act2_scene3_ueb_6"
	},
	
	"narration_act2_scene3_ueb_6": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach snaps his fingers and a flame appears in his hand.",
		"next": "narration_act2_scene3_ueb_7"
	},
	
	"narration_act2_scene3_ueb_7": {
		"type": "dialogue",
		"speaker": "",
		"text": "He turns towards the wall and shoots a continuous blast of fire at it from his hand.",
		"next": "zach_act2_scene3_ueb_26"
	},
	
	"zach_act2_scene3_ueb_26": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "haha...",
		"next": "narration_act2_scene3_ueb_8"
	},
	
	"narration_act2_scene3_ueb_8": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach focuses and feels the fire grow hotter.",
		"next": "narration_act2_scene3_ueb_9"
	},
	
	"narration_act2_scene3_ueb_9": {
		"type": "dialogue",
		"speaker": "",
		"text": "Then he shoots a stronger fire blast at the box of failed projects.",
		"next": "zach_act2_scene3_ueb_27"
	},
	
	"zach_act2_scene3_ueb_27": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "HAHAHA! This is awesome!",
		"next": "kyle_act2_scene3_ueb_0"
	},
	
	"kyle_act2_scene3_ueb_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "How did you do that?",
		"next": "zach_act2_scene3_ueb_28"
	},
	
	"zach_act2_scene3_ueb_28": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "It just came naturally to me.",
		"next": "narration_act2_scene3_ueb_10"
	},
	
	"narration_act2_scene3_ueb_10": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal from the top floor to the basement and steps through.",
		"next": "narration_act2_scene3_ueb_11"
	},
	
	"narration_act2_scene3_ueb_11": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks the Narrator in the eyes.",
		"next": "zach_act2_scene3_ueb_29"
	},
	
	"zach_act2_scene3_ueb_29": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Maybe I can't run from my fate, but I can still choose my own ending.",
		"next": "narration_act2_scene3_ueb_12"
	},
	
	"narration_act2_scene3_ueb_12": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce run through the portal behind him into the top floor of the building.",
		"next": "act2_scene3_ueb_background_2"
	},
	
	"act2_scene3_ueb_background_2": {
		"type": "background",
		"background": "",
		"next": "act2_scene3_ueb_meet_friends_2"
	},
	
	"act2_scene3_ueb_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene3_ueb_13"
	},
	
	"narration_act2_scene3_ueb_13": {
		"type": "dialogue",
		"speaker": "",
		"text": "At the end of the room is Zach's future office.",
		"next": "narration_act2_scene3_ueb_14"
	},
	
	"narration_act2_scene3_ueb_14": {
		"type": "dialogue",
		"speaker": "",
		"text": "Sitting in the middle of the room is the large fluffy dragon bound by chains of ice on its wings and a muzzle over its mouth.",
		"next": "kyle_act2_scene3_ueb_1"
	},
	
	"kyle_act2_scene3_ueb_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Wow.",
		"next": "narration_act2_scene3_ueb_15"
	},
	
	"narration_act2_scene3_ueb_15": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce walks up to The Dragon and pets its right leg.",
		"next": "jayce_act2_scene3_ueb_0"
	},
	
	"jayce_act2_scene3_ueb_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "He's so soft!",
		"next": "narration_act2_scene3_ueb_16"
	},
	
	"narration_act2_scene3_ueb_16": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce gives The Dragon a big hug.",
		"next": "narration_act2_scene3_ueb_17"
	},
	
	"narration_act2_scene3_ueb_17": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach sees a large scar on The Dragon's front right leg.",
		"next": "narration_act2_scene3_ueb_18"
	},
	
	"narration_act2_scene3_ueb_18": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach walks up to The Dragon and uses his fire to melt the muzzle.",
		"next": "narration_act2_scene3_ueb_19"
	},
	
	"narration_act2_scene3_ueb_19": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach touches The Dragon's forehead and The Dragon licks his face.",
		"next": "narration_act2_scene3_ueb_20"
	},
	
	"narration_act2_scene3_ueb_20": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach starts using his fire to melt The Dragon's chains.",
		"next": "narration_act2_scene3_ueb_21"
	},
	
	"narration_act2_scene3_ueb_21": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator bursts through the portal behind them.",
		"next": "narrator_act2_scene3_ueb_0"
	},
	
	"narrator_act2_scene3_ueb_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "WHAT ARE YOU DOING?",
		"next": "zach_act2_scene3_ueb_30"
	},
	
	"zach_act2_scene3_ueb_30": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Fixing the mistakes of the past!",
		"next": "narration_act2_scene3_ueb_22"
	},
	
	"narration_act2_scene3_ueb_22": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce hop on The Dragon's back, run through the office, smash through the window in the back, and start flying towards the sunrise.",
		"next": "act2_scene3_ueb_choice"
	},
	
	"act2_scene3_ueb_choice": {
		"type": "choice",
		"map": "Free the Dragon",
		"choices": [
			{
				"text": "Free the Dragon",
				"next": "act3_scene2_ueb_background"
			}
		]
	},
	
	"act2_scene3_he_background": {
		"type": "background",
		"background": "",
		"music": "The Third Quest.mp3",
		"next": "act2_scene3_he_meet_friends"
	},
	
	"act2_scene3_he_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene3_he_0"
	},
	
	"narrator_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his friends went through the portal and found themselves in his parents' office building.",
		"next": "narrator_act2_scene3_he_1"
	},
	
	"narrator_act2_scene3_he_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero's parents were giving him and his friends a tour of the building he'll inherit and show them how things work around here.",
		"next": "narrator_act2_scene3_he_2"
	},
	
	"narrator_act2_scene3_he_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They entered in a large room with black carpet floors and plain grey walls with the occasional Hang In There poster.",
		"next": "narrator_act2_scene3_he_3"
	},
	
	"narrator_act2_scene3_he_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach's mom shows them around the first floor.",
		"next": "mom_act2_scene3_he_0"
	},
	
	"mom_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "This is the main workplace. Open floor plan and minimalist design for maximum productivity.",
		"next": "kyle_act2_scene3_he_0"
	},
	
	"kyle_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "How fun.",
		"next": "zach_act2_scene3_he_0"
	},
	
	"zach_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Does everyone work in the same room?",
		"next": "mom_act2_scene3_he_1"
	},
	
	"mom_act2_scene3_he_1": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Of course not. There are several floors just like this.",
		"next": "dad_act2_scene3_he_0"
	},
	
	"dad_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "Zach's Dad",
		"text": "But don't worry. Your office will be on the top floor, above all this.",
		"next": "narrator_act2_scene3_he_4"
	},
	
	"narrator_act2_scene3_he_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "One of their employees came over to talk to them.",
		"next": "narration_act2_scene3_he_0"
	},
	
	"narration_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks over to see Kyle standing next to them.",
		"next": "narrator_act2_scene3_he_5"
	},
	
	"narrator_act2_scene3_he_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The employee had a progress report on the product.",
		"next": "kyle_act2_scene3_he_1"
	},
	
	"kyle_act2_scene3_he_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Oh please, I would never work here.",
		"next": "mom_act2_scene3_he_2"
	},
	
	"mom_act2_scene3_he_2": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "You have the report?",
		"next": "narrator_act2_scene3_he_6"
	},
	
	"narrator_act2_scene3_he_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The employee said it's still behind schedule and everyone she hired in the last 3 weeks hasn't helped. His team thinks they need to cut some features.",
		"next": "kyle_act2_scene3_he_2"
	},
	
	"kyle_act2_scene3_he_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "What he said.",
		"next": "mom_act2_scene3_he_3"
	},
	
	"mom_act2_scene3_he_3": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Your job is not to think, it's to meet their requirements by the deadline.",
		"next": "mom_act2_scene3_he_4"
	},
	
	"mom_act2_scene3_he_4": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "This is how it's always been done and it hasn't failed us yet.",
		"next": "mom_act2_scene3_he_5"
	},
	
	"mom_act2_scene3_he_5": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Now get back to work.",
		"next": "kyle_act2_scene3_he_3"
	},
	
	"kyle_act2_scene3_he_3": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "You're a horrible boss.",
		"next": "mom_act2_scene3_he_6"
	},
	
	"mom_act2_scene3_he_6": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "*sigh* Come on Zach, it's time to see your future office.",
		"next": "kyle_act2_scene3_he_4"
	},
	
	"kyle_act2_scene3_he_4": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "You told me to do what I wanted. I know you've never wanted to follow a script.",
		"next": "narrator_act2_scene3_he_7"
	},
	
	"narrator_act2_scene3_he_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach's parents' time as the heads of the company is coming to a close.",
		"next": "narrator_act2_scene3_he_8"
	},
	
	"narrator_act2_scene3_he_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, The Hero must fix his past mistake, go to the highest floor, and be who he's supposed to be.",
		"next": "act2_scene3_he_choice"
	},
	
	"act2_scene3_he_choice": {
		"type": "choice",
		"map": "Office or Basement",
		"choices": [
			{
				"text": "Go to the Office",
				"next": "act2_scene3_heo_background"
			},
			{
				"text": "Go to the Basement",
				"next": "act2_scene3_heb_background"
			}
		]
	},
	
	"act2_scene3_heo_background": {
		"type": "background",
		"background": "",
		"music": "The Sword.mp3",
		"next": "act2_scene3_heo_meet_friends"
	},
	
	"act2_scene3_heo_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "zach_act2_scene3_heo_0"
	},
	
	"zach_act2_scene3_heo_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Let's just get this over with.",
		"next": "narrator_act2_scene3_heo_0"
	},
	
	"narrator_act2_scene3_heo_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero embraces his destiny and enters the elevator to the highest floor of the building.",
		"next": "narrator_act2_scene3_heo_1"
	},
	
	"narrator_act2_scene3_heo_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric and Rogue follow behind him into the elevator.",
		"next": "act2_scene3_heo_elevator"
	},
	
	"act2_scene3_heo_elevator": {
		"type": "background",
		"background": "",
		"next": "zach_act2_scene3_heo_1"
	},
	
	"zach_act2_scene3_heo_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "...",
		"next": "kyle_act2_scene3_heo_0"
	},
	
	"kyle_act2_scene3_heo_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "...",
		"next": "jayce_act2_scene3_heo_0"
	},
	
	"jayce_act2_scene3_heo_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "...",
		"next": "kyle_act2_scene3_heo_1"
	},
	
	"kyle_act2_scene3_heo_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Zach, what are you doing?",
		"next": "kyle_act2_scene3_heo_2"
	},
	
	"kyle_act2_scene3_heo_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "This really isn't your style.",
		"next": "zach_act2_scene3_heo_2"
	},
	
	"zach_act2_scene3_heo_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No, it's not.",
		"next": "zach_act2_scene3_heo_3"
	},
	
	"zach_act2_scene3_heo_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "But I don't have a choice.",
		"next": "zach_act2_scene3_heo_4"
	},
	
	"zach_act2_scene3_heo_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "A good actor follows the script.",
		"next": "narrator_act2_scene3_heo_2"
	},
	
	"narrator_act2_scene3_heo_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They arrive at the highest floor.",
		"next": "act2_scene3_heo_background_3"
	},
	
	"act2_scene3_heo_background_3": {
		"type": "background",
		"background": "",
		"next": "act2_scene3_heo_meet_friends_2"
	},
	
	"act2_scene3_heo_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene3_heo_3"
	},
	
	"narrator_act2_scene3_heo_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The elevator doors open to a large waiting room in front of The Hero's future office.",
		"next": "narrator_act2_scene3_heo_4"
	},
	
	"narrator_act2_scene3_heo_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "In the middle of the room is The Dragon bound by chains of ice on its wings and a muzzle over its mouth.",
		"next": "narrator_act2_scene3_heo_5"
	},
	
	"narrator_act2_scene3_heo_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his parents step out into the room.",
		"next": "narrator_act2_scene3_heo_6"
	},
	
	"narrator_act2_scene3_heo_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "On the floor in front of them, between The Hero and The Dragon, sits a long sword with an ornate handle.",
		"next": "act2_scene3_heo_sword"
	},
	
	"act2_scene3_heo_sword": {
		"type": "character",
		"character": "res://Assets/sword.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "narrator_act2_scene3_heo_7"
	},
	
	"narrator_act2_scene3_heo_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero steps forward and picks up the cold metal blade.",
		"next": "narrator_act2_scene3_heo_8"
	},
	
	"narrator_act2_scene3_heo_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time to slay The Dragon.",
		"next": "act2_scene3_heo_choice"
	},
	
	"act2_scene3_heo_choice": {
		"type": "choice",
		"map": "Fight the Dragon",
		"choices": [
			{
				"text": "Fight the Dragon",
				"next": "act3_scene1_heo_background"
			}
		]
	},
	
	"act2_scene3_heb_background": {
		"type": "background",
		"background": "",
		"music": "The Scar.mp3",
		"next": "act2_scene3_heb_meet_friends"
	},
	
	"act2_scene3_heb_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene3_heb_0"
	},
	
	"narration_act2_scene3_heb_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach smiles and turns towards the basement door.",
		"next": "zach_act2_scene3_heb_0"
	},
	
	"zach_act2_scene3_heb_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I already hated the thought of following their plan for me.",
		"next": "zach_act2_scene3_heb_1"
	},
	
	"zach_act2_scene3_heb_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "But seeing how my parents treated their employees, how they expected me to treat them...",
		"next": "zach_act2_scene3_heb_2"
	},
	
	"zach_act2_scene3_heb_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Kyle, Jayce and I snuck towards the red basement door.",
		"next": "zach_act2_scene3_heb_3"
	},
	
	"zach_act2_scene3_heb_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "We descended the strangely ominous stairway before reaching the building's unfinished basement.",
		"next": "zach_act2_scene3_heb_4"
	},
	
	"zach_act2_scene3_heb_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The basement was full of random discarded junk.",
		"next": "zach_act2_scene3_heb_5"
	},
	
	"zach_act2_scene3_heb_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Posters, desks, cleaning supplies, a fuse box on the wall, and a blanket covering something.",
		"next": "zach_act2_scene3_heb_6"
	},
	
	"zach_act2_scene3_heb_6": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I pulled the blanket off, revealing two large boxes labeled \"Failed Projects\" and \"Failed Workers\".",
		"next": "zach_act2_scene3_heb_7"
	},
	
	"zach_act2_scene3_heb_7": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Inside the first box was stacks and stacks of papers detailing projects that were either late, over budget, or both.",
		"next": "zach_act2_scene3_heb_8"
	},
	
	"zach_act2_scene3_heb_8": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Though it looks like my parents blamed them on clients who asked too much and employees who worked too little.",
		"next": "zach_act2_scene3_heb_9"
	},
	
	"zach_act2_scene3_heb_9": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Inside the second box was several more stacks of paper about various employees they'd fired, the official reason why they were fired, and the real reason scrawled over it in red pen.",
		"next": "zach_act2_scene3_heb_10"
	},
	
	"zach_act2_scene3_heb_10": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Didn't do things on time. Didn't meet expectations. Didn't follow orders.",
		"next": "zach_act2_scene3_heb_11"
	},
	
	"zach_act2_scene3_heb_11": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Then I heard footsteps coming down the stairs.",
		"next": "mom_act2_scene3_heb_0"
	},
	
	"mom_act2_scene3_heb_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Honey, you're not supposed to be down here.",
		"next": "zach_act2_scene3_heb_12"
	},
	
	"zach_act2_scene3_heb_12": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I picked up a handful of documents from the Failed Projects box and turned to face her.",
		"next": "zach_act2_scene3_heb_13"
	},
	
	"zach_act2_scene3_heb_13": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Well I figured if I'm gonna take over the company, I should know all its dirty secrets.",
		"next": "zach_act2_scene3_heb_14"
	},
	
	"zach_act2_scene3_heb_14": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I picked up a red lighter off the floor.",
		"next": "zach_act2_scene3_heb_15"
	},
	
	"zach_act2_scene3_heb_15": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Although, I'd rather not take them with me.",
		"next": "zach_act2_scene3_heb_16"
	},
	
	"zach_act2_scene3_heb_16": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I flicked the lighter and lit the paper in my hand on fire.",
		"next": "zach_act2_scene3_heb_17"
	},
	
	"zach_act2_scene3_heb_17": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The higher-ups rushed towards me, knocking the shelf of cleaning supplies onto the ground.",
		"next": "zach_act2_scene3_heb_18"
	},
	
	"zach_act2_scene3_heb_18": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "They tackled me to the floor, covering my hand in the spilled cleaning solution.",
		"next": "zach_act2_scene3_heb_19"
	},
	
	"zach_act2_scene3_heb_19": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The fuse box began sparking.",
		"next": "zach_act2_scene3_heb_20"
	},
	
	"zach_act2_scene3_heb_20": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The cleaning solution on the floor ignited, lighting my arm on fire.",
		"next": "zach_act2_scene3_heb_21"
	},
	
	"zach_act2_scene3_heb_21": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The higher-ups jumped back in horror as I screamed.",
		"next": "zach_act2_scene3_heb_22"
	},
	
	"zach_act2_scene3_heb_22": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "They took a step towards me, but before they could do anything Kyle and Jayce rushed over and wrapped my arm in the blanket, putting out the fire.",
		"next": "zach_act2_scene3_heb_23"
	},
	
	"zach_act2_scene3_heb_23": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The burning liquid continued to spread across the floor, engulfing the room around us.",
		"next": "narration_act2_scene3_heb_1"
	},
	
	"narration_act2_scene3_heb_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach chuckles to himself.",
		"next": "zach_act2_scene3_heb_24"
	},
	
	"zach_act2_scene3_heb_24": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The fire grows.",
		"next": "narration_act2_scene3_heb_2"
	},
	
	"narration_act2_scene3_heb_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly a small bright fire appears in the air in front of him.",
		"next": "act2_scene3_heb_flame"
	},
	
	"act2_scene3_heb_flame": {
		"type": "character",
		"character": "res://Assets/flame.png",
		"position": {
			"x": 425,
			"y": 250
		},
		"next": "narration_act2_scene3_heb_3"
	},
	
	"narration_act2_scene3_heb_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach holds the fire in his hands and the fire becomes a part of him.",
		"next": "narration_act2_scene3_heb_4"
	},
	
	"narration_act2_scene3_heb_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "It feels warm.",
		"next": "narration_act2_scene3_heb_5"
	},
	
	"narration_act2_scene3_heb_5": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach's scar returns.",
		"next": "zach_act2_scene3_heb_25"
	},
	
	"zach_act2_scene3_heb_25": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "That's better.",
		"next": "narration_act2_scene3_heb_6"
	},
	
	"narration_act2_scene3_heb_6": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach snaps his fingers and a flame appears in his hand.",
		"next": "narration_act2_scene3_heb_7"
	},
	
	"narration_act2_scene3_heb_7": {
		"type": "dialogue",
		"speaker": "",
		"text": "He turns towards the wall and shoots a continuous blast of fire at it from his hand.",
		"next": "zach_act2_scene3_heb_26"
	},
	
	"zach_act2_scene3_heb_26": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "haha...",
		"next": "narration_act2_scene3_heb_8"
	},
	
	"narration_act2_scene3_heb_8": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach focuses and feels the fire grow hotter.",
		"next": "narration_act2_scene3_heb_9"
	},
	
	"narration_act2_scene3_heb_9": {
		"type": "dialogue",
		"speaker": "",
		"text": "Then he shoots a stronger fire blast at the box of failed projects.",
		"next": "zach_act2_scene3_heb_27"
	},
	
	"zach_act2_scene3_heb_27": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "HAHAHA! This is awesome!",
		"next": "jayce_act2_scene3_heb_0"
	},
	
	"jayce_act2_scene3_heb_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "There he is.",
		"next": "narration_act2_scene3_heb_10"
	},
	
	"narration_act2_scene3_heb_10": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal from the top floor to the basement and steps through.",
		"next": "narration_act2_scene3_heb_11"
	},
	
	"narration_act2_scene3_heb_11": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks the Narrator in the eyes.",
		"next": "zach_act2_scene3_heb_28"
	},
	
	"zach_act2_scene3_heb_28": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Maybe I can't run from my fate, but I can still choose my own ending.",
		"next": "narration_act2_scene3_heb_12"
	},
	
	"narration_act2_scene3_heb_12": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce run through the portal behind him into the top floor of the building.",
		"next": "act2_scene3_heb_background_2"
	},
	
	"act2_scene3_heb_background_2": {
		"type": "background",
		"background": "",
		"next": "act2_scene3_heb_meet_friends_2"
	},
	
	"act2_scene3_heb_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene3_heb_13"
	},
	
	"narration_act2_scene3_heb_13": {
		"type": "dialogue",
		"speaker": "",
		"text": "At the end of the room is Zach's future office.",
		"next": "narration_act2_scene3_heb_14"
	},
	
	"narration_act2_scene3_heb_14": {
		"type": "dialogue",
		"speaker": "",
		"text": "Sitting in the middle of the room is the large fluffy dragon bound by chains of ice on its wings and a muzzle over its mouth.",
		"next": "kyle_act2_scene3_heb_0"
	},
	
	"kyle_act2_scene3_heb_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Wow.",
		"next": "narration_act2_scene3_heb_15"
	},
	
	"narration_act2_scene3_heb_15": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce walks up to The Dragon and pets its right leg.",
		"next": "jayce_act2_scene3_heb_1"
	},
	
	"jayce_act2_scene3_heb_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "He's so soft!",
		"next": "narration_act2_scene3_heb_16"
	},
	
	"narration_act2_scene3_heb_16": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce gives The Dragon a big hug.",
		"next": "narration_act2_scene3_heb_17"
	},
	
	"narration_act2_scene3_heb_17": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach sees a large scar on The Dragon's front right leg.",
		"next": "narration_act2_scene3_heb_18"
	},
	
	"narration_act2_scene3_heb_18": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach walks up to The Dragon and uses his fire to melt the muzzle.",
		"next": "narration_act2_scene3_heb_19"
	},
	
	"narration_act2_scene3_heb_19": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach touches The Dragon's forehead and The Dragon licks his face.",
		"next": "narration_act2_scene3_heb_20"
	},
	
	"narration_act2_scene3_heb_20": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach starts using his fire to melt The Dragon's chains.",
		"next": "narration_act2_scene3_heb_21"
	},
	
	"narration_act2_scene3_heb_21": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator bursts through the portal behind them.",
		"next": "narrator_act2_scene3_heb_0"
	},
	
	"narrator_act2_scene3_heb_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "WHAT ARE YOU DOING?",
		"next": "zach_act2_scene3_heb_29"
	},
	
	"zach_act2_scene3_heb_29": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Fixing the mistakes of the past!",
		"next": "narration_act2_scene3_heb_22"
	},
	
	"narration_act2_scene3_heb_22": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce hop on The Dragon's back, run through the office, smash through the window in the back, and start flying towards the sunrise.",
		"next": "act2_scene3_heb_choice"
	},
	
	"act2_scene3_heb_choice": {
		"type": "choice",
		"map": "Free the Dragon",
		"choices": [
			{
				"text": "Free the Dragon",
				"next": "act3_scene2_heb_background"
			}
		]
	},
	
	"act2_scene3_uf_background": {
		"type": "background",
		"background": "",
		"music": "The Third Quest.mp3",
		"next": "act2_scene3_uf_meet_friends"
	},
	
	"act2_scene3_uf_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene3_uf_0"
	},
	
	"narrator_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his friends went through the portal and found themselves in his parents' office building.",
		"next": "narrator_act2_scene3_uf_1"
	},
	
	"narrator_act2_scene3_uf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero's parents were giving him and his friends a tour of the building he'll inherit and show them how things work around here.",
		"next": "narrator_act2_scene3_uf_2"
	},
	
	"narrator_act2_scene3_uf_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They entered in a large room with black carpet floors and plain grey walls with the occasional Hang In There poster.",
		"next": "narrator_act2_scene3_uf_3"
	},
	
	"narrator_act2_scene3_uf_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach's mom shows them around the first floor.",
		"next": "mom_act2_scene3_uf_0"
	},
	
	"mom_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "This is the main workplace. Open floor plan and minimalist design for maximum productivity.",
		"next": "kyle_act2_scene3_uf_0"
	},
	
	"kyle_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "How fun.",
		"next": "zach_act2_scene3_uf_0"
	},
	
	"zach_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Does everyone work in the same room?",
		"next": "mom_act2_scene3_uf_1"
	},
	
	"mom_act2_scene3_uf_1": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Of course not. There are several floors just like this.",
		"next": "dad_act2_scene3_uf_0"
	},
	
	"dad_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "Zach's Dad",
		"text": "But don't worry. Your office will be on the top floor, above all this.",
		"next": "narrator_act2_scene3_uf_4"
	},
	
	"narrator_act2_scene3_uf_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "One of their employees came over to talk to them.",
		"next": "narration_act2_scene3_uf_0"
	},
	
	"narration_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks over to see Jayce standing next to them.",
		"next": "narrator_act2_scene3_uf_5"
	},
	
	"narrator_act2_scene3_uf_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The employee had a progress report on the product.",
		"next": "jayce_act2_scene3_uf_0"
	},
	
	"jayce_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "But I don't work here?",
		"next": "mom_act2_scene3_uf_2"
	},
	
	"mom_act2_scene3_uf_2": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "You have the report?",
		"next": "narrator_act2_scene3_uf_6"
	},
	
	"narrator_act2_scene3_uf_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The employee said it's still behind schedule and everyone she hired in the last 3 weeks hasn't helped. His team thinks they need to cut some features.",
		"next": "jayce_act2_scene3_uf_1"
	},
	
	"jayce_act2_scene3_uf_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Yeah, what he said.",
		"next": "mom_act2_scene3_uf_3"
	},
	
	"mom_act2_scene3_uf_3": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Your job is not to think, it's to meet their requirements by the deadline.",
		"next": "mom_act2_scene3_uf_4"
	},
	
	"mom_act2_scene3_uf_4": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "This is how it's always been done and it hasn't failed us yet.",
		"next": "mom_act2_scene3_uf_5"
	},
	
	"mom_act2_scene3_uf_5": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Now get back to work.",
		"next": "jayce_act2_scene3_uf_2"
	},
	
	"jayce_act2_scene3_uf_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "You're a terrible boss.",
		"next": "mom_act2_scene3_uf_6"
	},
	
	"mom_act2_scene3_uf_6": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "*sigh* Come on Zach, it's time to see your future office.",
		"next": "jayce_act2_scene3_uf_3"
	},
	
	"jayce_act2_scene3_uf_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "You told me to do what I wanted. I know you've never wanted to follow a script.",
		"next": "narrator_act2_scene3_uf_7"
	},
	
	"narrator_act2_scene3_uf_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach's parents' time as the heads of the company is coming to a close.",
		"next": "narrator_act2_scene3_uf_8"
	},
	
	"narrator_act2_scene3_uf_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, The Hero must fix his past mistake, go to the highest floor, and be who he's supposed to be.",
		"next": "act2_scene3_uf_choice"
	},
	
	"act2_scene3_uf_choice": {
		"type": "choice",
		"map": "Office or Basement",
		"choices": [
			{
				"text": "Go to the Office",
				"next": "act2_scene3_ufo_background"
			},
			{
				"text": "Go to the Basement",
				"next": "act2_scene3_ufb_background"
			}
		]
	},
	
	"act2_scene3_ufo_background": {
		"type": "background",
		"background": "",
		"music": "The Sword.mp3",
		"next": "act2_scene3_ufo_meet_friends"
	},
	
	"act2_scene3_ufo_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "zach_act2_scene3_ufo_0"
	},
	
	"zach_act2_scene3_ufo_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Let's just get this over with.",
		"next": "narrator_act2_scene3_ufo_0"
	},
	
	"narrator_act2_scene3_ufo_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero embraces his destiny and enters the elevator to the highest floor of the building.",
		"next": "narrator_act2_scene3_ufo_1"
	},
	
	"narrator_act2_scene3_ufo_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric and Rogue follow behind him into the elevator.",
		"next": "act2_scene3_ufo_elevator"
	},
	
	"act2_scene3_ufo_elevator": {
		"type": "background",
		"background": "",
		"next": "zach_act2_scene3_ufo_1"
	},
	
	"zach_act2_scene3_ufo_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "...",
		"next": "kyle_act2_scene3_ufo_0"
	},
	
	"kyle_act2_scene3_ufo_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "...",
		"next": "jayce_act2_scene3_ufo_0"
	},
	
	"jayce_act2_scene3_ufo_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "...",
		"next": "jayce_act2_scene3_ufo_1"
	},
	
	"jayce_act2_scene3_ufo_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Zach, what are you doing?",
		"next": "jayce_act2_scene3_ufo_2"
	},
	
	"jayce_act2_scene3_ufo_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Your parents can't control you.",
		"next": "zach_act2_scene3_ufo_2"
	},
	
	"zach_act2_scene3_ufo_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No, but fate can.",
		"next": "zach_act2_scene3_ufo_3"
	},
	
	"zach_act2_scene3_ufo_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I don't have a choice.",
		"next": "zach_act2_scene3_ufo_4"
	},
	
	"zach_act2_scene3_ufo_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "A good actor follows the script.",
		"next": "narrator_act2_scene3_ufo_2"
	},
	
	"narrator_act2_scene3_ufo_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They arrive at the highest floor.",
		"next": "act2_scene3_ufo_background_3"
	},
	
	"act2_scene3_ufo_background_3": {
		"type": "background",
		"background": "",
		"next": "act2_scene3_ufo_meet_friends_2"
	},
	
	"act2_scene3_ufo_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene3_ufo_3"
	},
	
	"narrator_act2_scene3_ufo_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The elevator doors open to a large waiting room in front of The Hero's future office.",
		"next": "narrator_act2_scene3_ufo_4"
	},
	
	"narrator_act2_scene3_ufo_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "In the middle of the room is The Dragon bound by chains of ice on its wings and a muzzle over its mouth.",
		"next": "narrator_act2_scene3_ufo_5"
	},
	
	"narrator_act2_scene3_ufo_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his parents step out into the room.",
		"next": "narrator_act2_scene3_ufo_6"
	},
	
	"narrator_act2_scene3_ufo_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "On the floor in front of them, between The Hero and The Dragon, sits a long sword with an ornate handle.",
		"next": "act2_scene3_ufo_sword"
	},
	
	"act2_scene3_ufo_sword": {
		"type": "character",
		"character": "res://Assets/sword.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "narrator_act2_scene3_ufo_7"
	},
	
	"narrator_act2_scene3_ufo_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero steps forward and picks up the cold metal blade.",
		"next": "narrator_act2_scene3_ufo_8"
	},
	
	"narrator_act2_scene3_ufo_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time to slay The Dragon.",
		"next": "act2_scene3_ufo_choice"
	},
	
	"act2_scene3_ufo_choice": {
		"type": "choice",
		"map": "Fight the Dragon",
		"choices": [
			{
				"text": "Fight the Dragon",
				"next": "act3_scene1_ufo_background"
			}
		]
	},
	
	"act2_scene3_ufb_background": {
		"type": "background",
		"background": "",
		"music": "The Scar.mp3",
		"next": "act2_scene3_ufb_meet_friends"
	},
	
	"act2_scene3_ufb_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene3_ufb_0"
	},
	
	"narration_act2_scene3_ufb_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach smiles and turns towards the basement door.",
		"next": "zach_act2_scene3_ufb_0"
	},
	
	"zach_act2_scene3_ufb_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I already hated the thought of following their plan for me.",
		"next": "zach_act2_scene3_ufb_1"
	},
	
	"zach_act2_scene3_ufb_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "But seeing how my parents treated their employees, how they expected me to treat them...",
		"next": "zach_act2_scene3_ufb_2"
	},
	
	"zach_act2_scene3_ufb_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Kyle, Jayce and I snuck towards the red basement door.",
		"next": "zach_act2_scene3_ufb_3"
	},
	
	"zach_act2_scene3_ufb_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "We descended the strangely ominous stairway before reaching the building's unfinished basement.",
		"next": "zach_act2_scene3_ufb_4"
	},
	
	"zach_act2_scene3_ufb_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The basement was full of random discarded junk.",
		"next": "zach_act2_scene3_ufb_5"
	},
	
	"zach_act2_scene3_ufb_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Posters, desks, cleaning supplies, a fuse box on the wall, and a blanket covering something.",
		"next": "zach_act2_scene3_ufb_6"
	},
	
	"zach_act2_scene3_ufb_6": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I pulled the blanket off, revealing two large boxes labeled \"Failed Projects\" and \"Failed Workers\".",
		"next": "zach_act2_scene3_ufb_7"
	},
	
	"zach_act2_scene3_ufb_7": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Inside the first box was stacks and stacks of papers detailing projects that were either late, over budget, or both.",
		"next": "zach_act2_scene3_ufb_8"
	},
	
	"zach_act2_scene3_ufb_8": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Though it looks like my parents blamed them on clients who asked too much and employees who worked too little.",
		"next": "zach_act2_scene3_ufb_9"
	},
	
	"zach_act2_scene3_ufb_9": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Inside the second box was several more stacks of paper about various employees they'd fired, the official reason why they were fired, and the real reason scrawled over it in red pen.",
		"next": "zach_act2_scene3_ufb_10"
	},
	
	"zach_act2_scene3_ufb_10": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Didn't do things on time. Didn't meet expectations. Didn't follow orders.",
		"next": "zach_act2_scene3_ufb_11"
	},
	
	"zach_act2_scene3_ufb_11": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Then I heard footsteps coming down the stairs.",
		"next": "mom_act2_scene3_ufb_0"
	},
	
	"mom_act2_scene3_ufb_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Honey, you're not supposed to be down here.",
		"next": "zach_act2_scene3_ufb_12"
	},
	
	"zach_act2_scene3_ufb_12": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I picked up a handful of documents from the Failed Projects box and turned to face her.",
		"next": "zach_act2_scene3_ufb_13"
	},
	
	"zach_act2_scene3_ufb_13": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Well I figured if I'm gonna take over the company, I should know all its dirty secrets.",
		"next": "zach_act2_scene3_ufb_14"
	},
	
	"zach_act2_scene3_ufb_14": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I picked up a red lighter off the floor.",
		"next": "zach_act2_scene3_ufb_15"
	},
	
	"zach_act2_scene3_ufb_15": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Although, I'd rather not take them with me.",
		"next": "zach_act2_scene3_ufb_16"
	},
	
	"zach_act2_scene3_ufb_16": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I flicked the lighter and lit the paper in my hand on fire.",
		"next": "zach_act2_scene3_ufb_17"
	},
	
	"zach_act2_scene3_ufb_17": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The higher-ups rushed towards me, knocking the shelf of cleaning supplies onto the ground.",
		"next": "zach_act2_scene3_ufb_18"
	},
	
	"zach_act2_scene3_ufb_18": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "They tackled me to the floor, covering my hand in the spilled cleaning solution.",
		"next": "zach_act2_scene3_ufb_19"
	},
	
	"zach_act2_scene3_ufb_19": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The fuse box began sparking.",
		"next": "zach_act2_scene3_ufb_20"
	},
	
	"zach_act2_scene3_ufb_20": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The cleaning solution on the floor ignited, lighting my arm on fire.",
		"next": "zach_act2_scene3_ufb_21"
	},
	
	"zach_act2_scene3_ufb_21": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The higher-ups jumped back in horror as I screamed.",
		"next": "zach_act2_scene3_ufb_22"
	},
	
	"zach_act2_scene3_ufb_22": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "They took a step towards me, but before they could do anything Kyle and Jayce rushed over and wrapped my arm in the blanket, putting out the fire.",
		"next": "zach_act2_scene3_ufb_23"
	},
	
	"zach_act2_scene3_ufb_23": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The burning liquid continued to spread across the floor, engulfing the room around us.",
		"next": "narration_act2_scene3_ufb_1"
	},
	
	"narration_act2_scene3_ufb_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach chuckles to himself.",
		"next": "zach_act2_scene3_ufb_24"
	},
	
	"zach_act2_scene3_ufb_24": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The fire grows.",
		"next": "narration_act2_scene3_ufb_2"
	},
	
	"narration_act2_scene3_ufb_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly a small bright fire appears in the air in front of him.",
		"next": "act2_scene3_ufb_flame"
	},
	
	"act2_scene3_ufb_flame": {
		"type": "character",
		"character": "res://Assets/flame.png",
		"position": {
			"x": 425,
			"y": 250
		},
		"next": "narration_act2_scene3_ufb_3"
	},
	
	"narration_act2_scene3_ufb_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach holds the fire in his hands and the fire becomes a part of him.",
		"next": "narration_act2_scene3_ufb_4"
	},
	
	"narration_act2_scene3_ufb_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "It feels warm.",
		"next": "narration_act2_scene3_ufb_5"
	},
	
	"narration_act2_scene3_ufb_5": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach's scar returns.",
		"next": "zach_act2_scene3_ufb_25"
	},
	
	"zach_act2_scene3_ufb_25": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "That's better.",
		"next": "narration_act2_scene3_ufb_6"
	},
	
	"narration_act2_scene3_ufb_6": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach snaps his fingers and a flame appears in his hand.",
		"next": "narration_act2_scene3_ufb_7"
	},
	
	"narration_act2_scene3_ufb_7": {
		"type": "dialogue",
		"speaker": "",
		"text": "He turns towards the wall and shoots a continuous blast of fire at it from his hand.",
		"next": "zach_act2_scene3_ufb_26"
	},
	
	"zach_act2_scene3_ufb_26": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "haha...",
		"next": "narration_act2_scene3_ufb_8"
	},
	
	"narration_act2_scene3_ufb_8": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach focuses and feels the fire grow hotter.",
		"next": "narration_act2_scene3_ufb_9"
	},
	
	"narration_act2_scene3_ufb_9": {
		"type": "dialogue",
		"speaker": "",
		"text": "Then he shoots a stronger fire blast at the box of failed projects.",
		"next": "zach_act2_scene3_ufb_27"
	},
	
	"zach_act2_scene3_ufb_27": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "HAHAHA! This is awesome!",
		"next": "kyle_act2_scene3_ufb_0"
	},
	
	"kyle_act2_scene3_ufb_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "There he is.",
		"next": "narration_act2_scene3_ufb_10"
	},
	
	"narration_act2_scene3_ufb_10": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal from the top floor to the basement and steps through.",
		"next": "narration_act2_scene3_ufb_11"
	},
	
	"narration_act2_scene3_ufb_11": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks the Narrator in the eyes.",
		"next": "zach_act2_scene3_ufb_28"
	},
	
	"zach_act2_scene3_ufb_28": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Maybe I can't run from my fate, but I can still choose my own ending.",
		"next": "narration_act2_scene3_ufb_12"
	},
	
	"narration_act2_scene3_ufb_12": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce run through the portal behind him into the top floor of the building.",
		"next": "act2_scene3_ufb_background_2"
	},
	
	"act2_scene3_ufb_background_2": {
		"type": "background",
		"background": "",
		"next": "act2_scene3_ufb_meet_friends_2"
	},
	
	"act2_scene3_ufb_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene3_ufb_13"
	},
	
	"narration_act2_scene3_ufb_13": {
		"type": "dialogue",
		"speaker": "",
		"text": "At the end of the room is Zach's future office.",
		"next": "narration_act2_scene3_ufb_14"
	},
	
	"narration_act2_scene3_ufb_14": {
		"type": "dialogue",
		"speaker": "",
		"text": "Sitting in the middle of the room is the large fluffy dragon bound by chains of ice on its wings and a muzzle over its mouth.",
		"next": "kyle_act2_scene3_ufb_1"
	},
	
	"kyle_act2_scene3_ufb_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Wow.",
		"next": "narration_act2_scene3_ufb_15"
	},
	
	"narration_act2_scene3_ufb_15": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce walks up to The Dragon and pets its right leg.",
		"next": "jayce_act2_scene3_ufb_0"
	},
	
	"jayce_act2_scene3_ufb_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "He's so soft!",
		"next": "narration_act2_scene3_ufb_16"
	},
	
	"narration_act2_scene3_ufb_16": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce gives The Dragon a big hug.",
		"next": "narration_act2_scene3_ufb_17"
	},
	
	"narration_act2_scene3_ufb_17": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach sees a large scar on The Dragon's front right leg.",
		"next": "narration_act2_scene3_ufb_18"
	},
	
	"narration_act2_scene3_ufb_18": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach walks up to The Dragon and uses his fire to melt the muzzle.",
		"next": "narration_act2_scene3_ufb_19"
	},
	
	"narration_act2_scene3_ufb_19": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach touches The Dragon's forehead and The Dragon licks his face.",
		"next": "narration_act2_scene3_ufb_20"
	},
	
	"narration_act2_scene3_ufb_20": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach starts using his fire to melt The Dragon's chains.",
		"next": "narration_act2_scene3_ufb_21"
	},
	
	"narration_act2_scene3_ufb_21": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator bursts through the portal behind them.",
		"next": "narrator_act2_scene3_ufb_0"
	},
	
	"narrator_act2_scene3_ufb_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "WHAT ARE YOU DOING?",
		"next": "zach_act2_scene3_ufb_29"
	},
	
	"zach_act2_scene3_ufb_29": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Fixing the mistakes of the past!",
		"next": "narration_act2_scene3_ufb_22"
	},
	
	"narration_act2_scene3_ufb_22": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce hop on The Dragon's back, run through the office, smash through the window in the back, and start flying towards the sunrise.",
		"next": "act2_scene3_ufb_choice"
	},
	
	"act2_scene3_ufb_choice": {
		"type": "choice",
		"map": "Free the Dragon",
		"choices": [
			{
				"text": "Free the Dragon",
				"next": "act3_scene2_ufb_background"
			}
		]
	},
	
	"act2_scene3_hf_background": {
		"type": "background",
		"background": "",
		"music": "The Third Quest.mp3",
		"next": "act2_scene3_hf_meet_friends"
	},
	
	"act2_scene3_hf_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene3_hf_0"
	},
	
	"narrator_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his friends went through the portal and found themselves in his parents' office building.",
		"next": "narrator_act2_scene3_hf_1"
	},
	
	"narrator_act2_scene3_hf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero's parents were giving him and his friends a tour of the building he'll inherit and show them how things work around here.",
		"next": "narrator_act2_scene3_hf_2"
	},
	
	"narrator_act2_scene3_hf_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They entered in a large room with black carpet floors and plain grey walls with the occasional Hang In There poster.",
		"next": "narrator_act2_scene3_hf_3"
	},
	
	"narrator_act2_scene3_hf_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach's mom shows them around the first floor.",
		"next": "mom_act2_scene3_hf_0"
	},
	
	"mom_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "This is the main workplace. Open floor plan and minimalist design for maximum productivity.",
		"next": "kyle_act2_scene3_hf_0"
	},
	
	"kyle_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "How fun.",
		"next": "zach_act2_scene3_hf_0"
	},
	
	"zach_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Does everyone work in the same room?",
		"next": "mom_act2_scene3_hf_1"
	},
	
	"mom_act2_scene3_hf_1": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Of course not. There are several floors just like this.",
		"next": "dad_act2_scene3_hf_0"
	},
	
	"dad_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "Zach's Dad",
		"text": "But don't worry. Your office will be on the top floor, above all this.",
		"next": "narrator_act2_scene3_hf_4"
	},
	
	"narrator_act2_scene3_hf_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "One of their employees came over to talk to them.",
		"next": "narration_act2_scene3_hf_0"
	},
	
	"narration_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks over to see Kyle and Jayce standing next to them.",
		"next": "narrator_act2_scene3_hf_5"
	},
	
	"narrator_act2_scene3_hf_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The employees had a progress report on the product.",
		"next": "mom_act2_scene3_hf_2"
	},
	
	"mom_act2_scene3_hf_2": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "You have the report?",
		"next": "narrator_act2_scene3_hf_6"
	},
	
	"narrator_act2_scene3_hf_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The employee said it's still behind schedule and everyone she hired in the last 3 weeks hasn't helped. His team thinks they need to cut some features.",
		"next": "jayce_act2_scene3_hf_0"
	},
	
	"jayce_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Hey, so, I have bad news. Someone, not me, got bored working on it so they decided to add a dating sim to the product.",
		"next": "mom_act2_scene3_hf_3"
	},
	
	"mom_act2_scene3_hf_3": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "What?",
		"next": "kyle_act2_scene3_hf_1"
	},
	
	"kyle_act2_scene3_hf_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "And a dress-up mode. People love dress-up games.",
		"next": "mom_act2_scene3_hf_4"
	},
	
	"mom_act2_scene3_hf_4": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "To a text editor?",
		"next": "jayce_act2_scene3_hf_1"
	},
	
	"jayce_act2_scene3_hf_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Of course. People love those games.",
		"next": "mom_act2_scene3_hf_5"
	},
	
	"mom_act2_scene3_hf_5": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Our client is a company, not a Halloween party!",
		"next": "kyle_act2_scene3_hf_2"
	},
	
	"kyle_act2_scene3_hf_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "People wearing weird clothes and doing scary things in an eerie office building late into the night?",
		"next": "zach_act2_scene3_hf_1"
	},
	
	"zach_act2_scene3_hf_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Looks the same to me.",
		"next": "mom_act2_scene3_hf_6"
	},
	
	"mom_act2_scene3_hf_6": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Your job is not to think, it's to meet their requirements by the deadline.",
		"next": "mom_act2_scene3_hf_7"
	},
	
	"mom_act2_scene3_hf_7": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "And the requirements didn't include a crappy kids game.",
		"next": "mom_act2_scene3_hf_8"
	},
	
	"mom_act2_scene3_hf_8": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "This is how it's always been done and it hasn't failed us yet.",
		"next": "mom_act2_scene3_hf_9"
	},
	
	"mom_act2_scene3_hf_9": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Now get back to work.",
		"next": "jayce_act2_scene3_hf_2"
	},
	
	"jayce_act2_scene3_hf_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "You're a horrible boss.",
		"next": "mom_act2_scene3_hf_10"
	},
	
	"mom_act2_scene3_hf_10": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "*sigh* Come on Zach, it's time to see your future office.",
		"next": "narration_act2_scene3_hf_1"
	},
	
	"narration_act2_scene3_hf_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce turns to Zach.",
		"next": "jayce_act2_scene3_hf_3"
	},
	
	"jayce_act2_scene3_hf_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Come on. We both know this isn't what you want.",
		"next": "narrator_act2_scene3_hf_7"
	},
	
	"narrator_act2_scene3_hf_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach's parents' time as the heads of the company is coming to a close.",
		"next": "narrator_act2_scene3_hf_8"
	},
	
	"narrator_act2_scene3_hf_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, The Hero must fix his past mistake, go to the highest floor, and be who he's supposed to be.",
		"next": "act2_scene3_hf_choice"
	},
	
	"act2_scene3_hf_choice": {
		"type": "choice",
		"map": "Office or Basement",
		"choices": [
			{
				"text": "Go to the Office",
				"next": "act2_scene3_hfo_background"
			},
			{
				"text": "Go to the Basement",
				"next": "act2_scene3_hfb_background"
			}
		]
	},
	
	"act2_scene3_hfo_background": {
		"type": "background",
		"background": "",
		"music": "The Sword.mp3",
		"next": "act2_scene3_hfo_meet_friends"
	},
	
	"act2_scene3_hfo_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "zach_act2_scene3_hfo_0"
	},
	
	"zach_act2_scene3_hfo_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Let's just get this over with.",
		"next": "narrator_act2_scene3_hfo_0"
	},
	
	"narrator_act2_scene3_hfo_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero embraces his destiny and enters the elevator to the highest floor of the building.",
		"next": "narrator_act2_scene3_hfo_1"
	},
	
	"narrator_act2_scene3_hfo_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric and Rogue follow behind him into the elevator.",
		"next": "act2_scene3_hfo_elevator"
	},
	
	"act2_scene3_hfo_elevator": {
		"type": "background",
		"background": "",
		"next": "zach_act2_scene3_hfo_1"
	},
	
	"zach_act2_scene3_hfo_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "...",
		"next": "kyle_act2_scene3_hfo_0"
	},
	
	"kyle_act2_scene3_hfo_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "...",
		"next": "jayce_act2_scene3_hfo_0"
	},
	
	"jayce_act2_scene3_hfo_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "...",
		"next": "kyle_act2_scene3_hfo_1"
	},
	
	"kyle_act2_scene3_hfo_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Zach, what are you doing?",
		"next": "jayce_act2_scene3_hfo_1"
	},
	
	"jayce_act2_scene3_hfo_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We know you don't want to do this.",
		"next": "zach_act2_scene3_hfo_2"
	},
	
	"zach_act2_scene3_hfo_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No, I don't.",
		"next": "zach_act2_scene3_hfo_3"
	},
	
	"zach_act2_scene3_hfo_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "But I don't have a choice.",
		"next": "zach_act2_scene3_hfo_4"
	},
	
	"zach_act2_scene3_hfo_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "A good actor follows the script.",
		"next": "narrator_act2_scene3_hfo_2"
	},
	
	"narrator_act2_scene3_hfo_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They arrive at the highest floor.",
		"next": "act2_scene3_hfo_background_3"
	},
	
	"act2_scene3_hfo_background_3": {
		"type": "background",
		"background": "",
		"next": "act2_scene3_hfo_meet_friends_2"
	},
	
	"act2_scene3_hfo_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act2_scene3_hfo_3"
	},
	
	"narrator_act2_scene3_hfo_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The elevator doors open to a large waiting room in front of The Hero's future office.",
		"next": "narrator_act2_scene3_hfo_4"
	},
	
	"narrator_act2_scene3_hfo_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "In the middle of the room is The Dragon bound by chains of ice on its wings and a muzzle over its mouth.",
		"next": "narrator_act2_scene3_hfo_5"
	},
	
	"narrator_act2_scene3_hfo_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his parents step out into the room.",
		"next": "narrator_act2_scene3_hfo_6"
	},
	
	"narrator_act2_scene3_hfo_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "On the floor in front of them, between The Hero and The Dragon, sits a long sword with an ornate handle.",
		"next": "act2_scene3_hfo_sword"
	},
	
	"act2_scene3_hfo_sword": {
		"type": "character",
		"character": "res://Assets/sword.png",
		"position": {
			"x": 575,
			"y": 375
		},
		"next": "narrator_act2_scene3_hfo_7"
	},
	
	"narrator_act2_scene3_hfo_7": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero steps forward and picks up the cold metal blade.",
		"next": "narrator_act2_scene3_hfo_8"
	},
	
	"narrator_act2_scene3_hfo_8": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time to slay The Dragon.",
		"next": "act2_scene3_hfo_choice"
	},
	
	"act2_scene3_hfo_choice": {
		"type": "choice",
		"map": "Fight the Dragon",
		"choices": [
			{
				"text": "Fight the Dragon",
				"next": "act3_scene1_hfo_background"
			}
		]
	},
	
	"act2_scene3_hfb_background": {
		"type": "background",
		"background": "",
		"music": "The Scar.mp3",
		"next": "act2_scene3_hfb_meet_friends"
	},
	
	"act2_scene3_hfb_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene3_hfb_0"
	},
	
	"narration_act2_scene3_hfb_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach smiles and turns towards the basement door.",
		"next": "zach_act2_scene3_hfb_0"
	},
	
	"zach_act2_scene3_hfb_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I already hated the thought of following their plan for me.",
		"next": "zach_act2_scene3_hfb_1"
	},
	
	"zach_act2_scene3_hfb_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "But seeing how my parents treated their employees, how they expected me to treat them...",
		"next": "zach_act2_scene3_hfb_2"
	},
	
	"zach_act2_scene3_hfb_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Kyle, Jayce and I snuck towards the red basement door.",
		"next": "zach_act2_scene3_hfb_3"
	},
	
	"zach_act2_scene3_hfb_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "We descended the strangely ominous stairway before reaching the building's unfinished basement.",
		"next": "zach_act2_scene3_hfb_4"
	},
	
	"zach_act2_scene3_hfb_4": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The basement was full of random discarded junk.",
		"next": "zach_act2_scene3_hfb_5"
	},
	
	"zach_act2_scene3_hfb_5": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Posters, desks, cleaning supplies, a fuse box on the wall, and a blanket covering something.",
		"next": "zach_act2_scene3_hfb_6"
	},
	
	"zach_act2_scene3_hfb_6": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I pulled the blanket off, revealing two large boxes labeled \"Failed Projects\" and \"Failed Workers\".",
		"next": "zach_act2_scene3_hfb_7"
	},
	
	"zach_act2_scene3_hfb_7": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Inside the first box was stacks and stacks of papers detailing projects that were either late, over budget, or both.",
		"next": "zach_act2_scene3_hfb_8"
	},
	
	"zach_act2_scene3_hfb_8": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Though it looks like my parents blamed them on clients who asked too much and employees who worked too little.",
		"next": "zach_act2_scene3_hfb_9"
	},
	
	"zach_act2_scene3_hfb_9": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Inside the second box was several more stacks of paper about various employees they'd fired, the official reason why they were fired, and the real reason scrawled over it in red pen.",
		"next": "zach_act2_scene3_hfb_10"
	},
	
	"zach_act2_scene3_hfb_10": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Didn't do things on time. Didn't meet expectations. Didn't follow orders.",
		"next": "zach_act2_scene3_hfb_11"
	},
	
	"zach_act2_scene3_hfb_11": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Then I heard footsteps coming down the stairs.",
		"next": "mom_act2_scene3_hfb_0"
	},
	
	"mom_act2_scene3_hfb_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom",
		"text": "Honey, you're not supposed to be down here.",
		"next": "zach_act2_scene3_hfb_12"
	},
	
	"zach_act2_scene3_hfb_12": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I picked up a handful of documents from the Failed Projects box and turned to face her.",
		"next": "zach_act2_scene3_hfb_13"
	},
	
	"zach_act2_scene3_hfb_13": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Well I figured if I'm gonna take over the company, I should know all its dirty secrets.",
		"next": "zach_act2_scene3_hfb_14"
	},
	
	"zach_act2_scene3_hfb_14": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I picked up a red lighter off the floor.",
		"next": "zach_act2_scene3_hfb_15"
	},
	
	"zach_act2_scene3_hfb_15": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Although, I'd rather not take them with me.",
		"next": "zach_act2_scene3_hfb_16"
	},
	
	"zach_act2_scene3_hfb_16": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I flicked the lighter and lit the paper in my hand on fire.",
		"next": "zach_act2_scene3_hfb_17"
	},
	
	"zach_act2_scene3_hfb_17": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The higher-ups rushed towards me, knocking the shelf of cleaning supplies onto the ground.",
		"next": "zach_act2_scene3_hfb_18"
	},
	
	"zach_act2_scene3_hfb_18": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "They tackled me to the floor, covering my hand in the spilled cleaning solution.",
		"next": "zach_act2_scene3_hfb_19"
	},
	
	"zach_act2_scene3_hfb_19": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The fuse box began sparking.",
		"next": "zach_act2_scene3_hfb_20"
	},
	
	"zach_act2_scene3_hfb_20": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The cleaning solution on the floor ignited, lighting my arm on fire.",
		"next": "zach_act2_scene3_hfb_21"
	},
	
	"zach_act2_scene3_hfb_21": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The higher-ups jumped back in horror as I screamed.",
		"next": "zach_act2_scene3_hfb_22"
	},
	
	"zach_act2_scene3_hfb_22": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "They took a step towards me, but before they could do anything Kyle and Jayce rushed over and wrapped my arm in the blanket, putting out the fire.",
		"next": "zach_act2_scene3_hfb_23"
	},
	
	"zach_act2_scene3_hfb_23": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The burning liquid continued to spread across the floor, engulfing the room around us.",
		"next": "narration_act2_scene3_hfb_1"
	},
	
	"narration_act2_scene3_hfb_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach chuckles to himself.",
		"next": "zach_act2_scene3_hfb_24"
	},
	
	"zach_act2_scene3_hfb_24": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The fire grows.",
		"next": "narration_act2_scene3_hfb_2"
	},
	
	"narration_act2_scene3_hfb_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly a small bright fire appears in the air in front of him.",
		"next": "act2_scene3_hfb_flame"
	},
	
	"act2_scene3_hfb_flame": {
		"type": "character",
		"character": "res://Assets/flame.png",
		"position": {
			"x": 425,
			"y": 250
		},
		"next": "narration_act2_scene3_hfb_3"
	},
	
	"narration_act2_scene3_hfb_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach holds the fire in his hands and the fire becomes a part of him.",
		"next": "narration_act2_scene3_hfb_4"
	},
	
	"narration_act2_scene3_hfb_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "It feels warm.",
		"next": "narration_act2_scene3_hfb_5"
	},
	
	"narration_act2_scene3_hfb_5": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach's scar returns.",
		"next": "zach_act2_scene3_hfb_25"
	},
	
	"zach_act2_scene3_hfb_25": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "That's better.",
		"next": "narration_act2_scene3_hfb_6"
	},
	
	"narration_act2_scene3_hfb_6": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach snaps his fingers and a flame appears in his hand.",
		"next": "narration_act2_scene3_hfb_7"
	},
	
	"narration_act2_scene3_hfb_7": {
		"type": "dialogue",
		"speaker": "",
		"text": "He turns towards the wall and shoots a continuous blast of fire at it from his hand.",
		"next": "zach_act2_scene3_hfb_26"
	},
	
	"zach_act2_scene3_hfb_26": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "haha...",
		"next": "narration_act2_scene3_hfb_8"
	},
	
	"narration_act2_scene3_hfb_8": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach focuses and feels the fire grow hotter.",
		"next": "narration_act2_scene3_hfb_9"
	},
	
	"narration_act2_scene3_hfb_9": {
		"type": "dialogue",
		"speaker": "",
		"text": "Then he shoots a stronger fire blast at the box of failed projects.",
		"next": "zach_act2_scene3_hfb_27"
	},
	
	"zach_act2_scene3_hfb_27": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "HAHAHA! This is awesome!",
		"next": "narration_act2_scene3_hfb_10"
	},
	
	"narration_act2_scene3_hfb_10": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal from the top floor to the basement and steps through.",
		"next": "narration_act2_scene3_hfb_11"
	},
	
	"narration_act2_scene3_hfb_11": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks the Narrator in the eyes.",
		"next": "zach_act2_scene3_hfb_28"
	},
	
	"zach_act2_scene3_hfb_28": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Maybe I can't run from my fate, but I can still choose my own ending.",
		"next": "narration_act2_scene3_hfb_12"
	},
	
	"narration_act2_scene3_hfb_12": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce run through the portal behind him into the top floor of the building.",
		"next": "act2_scene3_hfb_background_2"
	},
	
	"act2_scene3_hfb_background_2": {
		"type": "background",
		"background": "",
		"next": "act2_scene3_hfb_meet_friends_2"
	},
	
	"act2_scene3_hfb_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act2_scene3_hfb_13"
	},
	
	"narration_act2_scene3_hfb_13": {
		"type": "dialogue",
		"speaker": "",
		"text": "At the end of the room is Zach's future office.",
		"next": "narration_act2_scene3_hfb_14"
	},
	
	"narration_act2_scene3_hfb_14": {
		"type": "dialogue",
		"speaker": "",
		"text": "Sitting in the middle of the room is the large fluffy dragon bound by chains of ice on its wings and a muzzle over its mouth.",
		"next": "kyle_act2_scene3_hfb_0"
	},
	
	"kyle_act2_scene3_hfb_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Wow.",
		"next": "narration_act2_scene3_hfb_15"
	},
	
	"narration_act2_scene3_hfb_15": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce walks up to The Dragon and pets its right leg.",
		"next": "jayce_act2_scene3_hfb_0"
	},
	
	"jayce_act2_scene3_hfb_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "He's so soft!",
		"next": "narration_act2_scene3_hfb_16"
	},
	
	"narration_act2_scene3_hfb_16": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce gives The Dragon a big hug.",
		"next": "narration_act2_scene3_hfb_17"
	},
	
	"narration_act2_scene3_hfb_17": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach sees a large scar on The Dragon's front right leg.",
		"next": "narration_act2_scene3_hfb_18"
	},
	
	"narration_act2_scene3_hfb_18": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach walks up to The Dragon and uses his fire to melt the muzzle.",
		"next": "narration_act2_scene3_hfb_19"
	},
	
	"narration_act2_scene3_hfb_19": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach touches The Dragon's forehead and The Dragon licks his face.",
		"next": "narration_act2_scene3_hfb_20"
	},
	
	"narration_act2_scene3_hfb_20": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach starts using his fire to melt The Dragon's chains.",
		"next": "narration_act2_scene3_hfb_21"
	},
	
	"narration_act2_scene3_hfb_21": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator bursts through the portal behind them.",
		"next": "narrator_act2_scene3_hfb_0"
	},
	
	"narrator_act2_scene3_hfb_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "WHAT ARE YOU DOING?",
		"next": "zach_act2_scene3_hfb_29"
	},
	
	"zach_act2_scene3_hfb_29": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Fixing the mistakes of the past!",
		"next": "narration_act2_scene3_hfb_22"
	},
	
	"narration_act2_scene3_hfb_22": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce hop on The Dragon's back, run through the office, smash through the window in the back, and start flying towards the sunrise.",
		"next": "act2_scene3_hfb_choice"
	},
	
	"act2_scene3_hfb_choice": {
		"type": "choice",
		"map": "Free the Dragon",
		"choices": [
			{
				"text": "Free the Dragon",
				"next": "act3_scene2_hfb_background"
			}
		]
	}
}
