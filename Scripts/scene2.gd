class_name Scene2
extends RefCounted

# Act 1, scene 2: hanging out with Kyle and Jayce.
static func get_nodes() -> Dictionary:
	return {
	"act1_scene2_background": {
		"type": "background",
		"background": "res://Assets/Backgrounds/House.jpg",
		"music": "Hanging Out.mp3",
		"next": "act1_scene2_meet_friends"
	},
	
	"act1_scene2_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 375
		},
		"next": "jayce_act1_scene2_0"
	},
	
	"jayce_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Another meeting with the higher ups?",
		"next": "zach_act1_scene2_0"
	},
	
	"zach_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Yep.",
		"next": "zach_act1_scene2_1"
	},
	
	"zach_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Mad I keep messing up their script.",
		"next": "act1_scene2_background_2"
	},
	
	"act1_scene2_background_2": {
		"type": "background",
		"background": "",
		"next": "act1_scene2_meet_friends_2"
	},
	
	"act1_scene2_meet_friends_2": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 375
		},
		"next": "zach_act1_scene2_2"
	},
	
	"zach_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Wear these clothes. Take these classes. Talk like a businessman.",
		"next": "zach_act1_scene2_3"
	},
	
	"zach_act1_scene2_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Never thought I'd miss drama club, but at least there I had some control over how I played the character.",
		"next": "zach_act1_scene2_4"
	},
	
	"zach_act1_scene2_4": {
		"type": "dialogue",
		"speaker": "Zach (as his mom)",
		"text": "Listen here young man. It's your destiny to continue this proud tradition of being a no-nonsense, professional who only knows how to do things by the book!",
		"next": "zach_act1_scene2_5"
	},
	
	"zach_act1_scene2_5": {
		"type": "dialogue",
		"speaker": "Zach (as his mom)",
		"text": "This book to be precise.",
		"next": "narration_act1_scene2_0"
	},
	
	"narration_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach pretends to lift a very large book.",
		"next": "zach_act1_scene2_6"
	},
	
	"zach_act1_scene2_6": {
		"type": "dialogue",
		"speaker": "Zach (as his mom)",
		"text": "*ughh* With this 3,926 page guide...",
		"next": "narration_act1_scene2_1"
	},
	
	"narration_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach pretends to drop the book on a desk.",
		"next": "zach_act1_scene2_7"
	},
	
	"zach_act1_scene2_7": {
		"type": "dialogue",
		"speaker": "Zach (as his mom)",
		"text": "...*phew* you'll never have to think again!",
		"next": "kyle_act1_scene2_0"
	},
	
	"kyle_act1_scene2_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Your improv was definitely the best thing about that class.",
		"next": "jayce_act1_scene2_1"
	},
	
	"jayce_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Even better than the costumes?",
		"next": "kyle_act1_scene2_1"
	},
	
	"kyle_act1_scene2_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "The wigs were nice but...",
		"next": "narration_act1_scene2_2"
	},
	
	"narration_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle runs his hand through his hair.",
		"next": "kyle_act1_scene2_2"
	},
	
	"kyle_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "...the real thing is much better.",
		"next": "zach_act1_scene2_8"
	},
	
	"zach_act1_scene2_8": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "The red looks great btw.",
		"next": "kyle_act1_scene2_3"
	},
	
	"kyle_act1_scene2_3": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Thanks.",
		"next": "act1_scene2_background_3"
	},
	
	"act1_scene2_background_3": {
		"type": "background",
		"background": "",
		"next": "act1_scene2_meet_friends_3"
	},
	
	"act1_scene2_meet_friends_3": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 375
		},
		"next": "jayce_act1_scene2_2"
	},
	
	"jayce_act1_scene2_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "My parents thought being with my ex would be good for me...",
		"next": "narration_act1_scene2_3"
	},
	
	"narration_act1_scene2_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce takes another bite of pizza.",
		"next": "jayce_act1_scene2_3"
	},
	
	"jayce_act1_scene2_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "...for some reason.",
		"next": "jayce_act1_scene2_4"
	},
	
	"jayce_act1_scene2_4": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "You helped me get out of that.",
		"next": "jayce_act1_scene2_5"
	},
	
	"jayce_act1_scene2_5": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Why not just leave? Move out? Run away?",
		"next": "narration_act1_scene2_4"
	},
	
	"narration_act1_scene2_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach takes a bite of pizza.",
		"next": "zach_act1_scene2_9"
	},
	
	"zach_act1_scene2_9": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You think I haven't tried?",
		"next": "zach_act1_scene2_10"
	},
	
	"zach_act1_scene2_10": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "But no matter where I go, they always drag me back.",
		"next": "zach_act1_scene2_11"
	},
	
	"zach_act1_scene2_11": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "At this point I wouldn't be surprised if they chained me to their desk.",
		"next": "kyle_act1_scene2_4"
	},
	
	"kyle_act1_scene2_4": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "I'd go with a muzzle.",
		"next": "zach_act1_scene2_12"
	},
	
	"zach_act1_scene2_12": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "haha",
		"next": "zach_act1_scene2_13"
	},
	
	"zach_act1_scene2_13": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I can't even hang out with you guys without going behind their backs.",
		"next": "zach_act1_scene2_14"
	},
	
	"zach_act1_scene2_14": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Guess they really don't want their investment wasted on a college drop out.",
		"next": "act1_scene2_background_4"
	},
	
	"act1_scene2_background_4": {
		"type": "background",
		"background": "",
		"next": "act1_scene2_meet_friends_4"
	},
	
	"act1_scene2_meet_friends_4": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 375
		},
		"next": "zach_act1_scene2_15"
	},
	
	"zach_act1_scene2_15": {
		"type": "dialogue",
		"speaker": "Zach (as his mom)",
		"text": "Welcome back investors. It's an honor to show you around.",
		"next": "kyle_act1_scene2_5"
	},
	
	"kyle_act1_scene2_5": {
		"type": "dialogue",
		"speaker": "Kyle (as a businessman)",
		"text": "Sure, sure. Just a quick question...",
		"next": "kyle_act1_scene2_6"
	},
	
	"kyle_act1_scene2_6": {
		"type": "dialogue",
		"speaker": "Kyle (as a businessman)",
		"text": "What's that sitting on your desk?",
		"next": "zach_act1_scene2_16"
	},
	
	"zach_act1_scene2_16": {
		"type": "dialogue",
		"speaker": "Zach (as his mom)",
		"text": "Oh, just the next boss in training.",
		"next": "zach_act1_scene2_17"
	},
	
	"zach_act1_scene2_17": {
		"type": "dialogue",
		"speaker": "Zach (as his mom)",
		"text": "Be careful though, even with the muzzle he still tries to chew through the wires.",
		"next": "kyle_act1_scene2_7"
	},
	
	"kyle_act1_scene2_7": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "This place burned down because of bad wiring right?",
		"next": "zach_act1_scene2_18"
	},
	
	"zach_act1_scene2_18": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Yeah. The head of the company kept overworking their employees.",
		"next": "zach_act1_scene2_19"
	},
	
	"zach_act1_scene2_19": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Eventually the best one left, including their only electrician.",
		"next": "zach_act1_scene2_20"
	},
	
	"zach_act1_scene2_20": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Then one night after everyone went home...",
		"next": "narration_act1_scene2_5"
	},
	
	"narration_act1_scene2_5": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach snaps his fingers.",
		"next": "zach_act1_scene2_21"
	},
	
	"zach_act1_scene2_21": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "...it all went up in flames.",
		"next": "zach_act1_scene2_22"
	},
	
	"zach_act1_scene2_22": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "They believed they were destined for greatness, but nothing is set in stone.",
		"next": "narration_act1_scene2_6"
	},
	
	"narration_act1_scene2_6": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce go up to the top floor of the burned down building.",
		"next": "narration_act1_scene2_7"
	},
	
	"narration_act1_scene2_7": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach runs his hand along one of the scorch covered walls.",
		"next": "zach_act1_scene2_23"
	},
	
	"zach_act1_scene2_23": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "How long do you bet I'd last before burning the place down?",
		"next": "kyle_act1_scene2_8"
	},
	
	"kyle_act1_scene2_8": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Maybe a month.",
		"next": "narration_act1_scene2_8"
	},
	
	"narration_act1_scene2_8": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce looks at the scar on Zach's hand.",
		"next": "jayce_act1_scene2_6"
	},
	
	"jayce_act1_scene2_6": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "I, um...",
		"next": "narration_act1_scene2_9"
	},
	
	"narration_act1_scene2_9": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach smirks.",
		"next": "zach_act1_scene2_24"
	},
	
	"zach_act1_scene2_24": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "What? That joke too spicy for ya?",
		"next": "zach_act1_scene2_25"
	},
	
	"zach_act1_scene2_25": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Too hot?",
		"next": "zach_act1_scene2_26"
	},
	
	"zach_act1_scene2_26": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Scared of burning some bridges?",
		"next": "jayce_act1_scene2_7"
	},
	
	"jayce_act1_scene2_7": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "I mean... yeah?",
		"next": "narration_act1_scene2_10"
	},
	
	"narration_act1_scene2_10": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach smiles softly.",
		"next": "zach_act1_scene2_27"
	},
	
	"zach_act1_scene2_27": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Don't worry. This bridge ain't burning anytime soon.",
		"next": "narration_act1_scene2_11"
	},
	
	"narration_act1_scene2_11": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce each pick up the cans of spray paint on the floor and add another small tree to the back wall.",
		"next": "zach_act1_scene2_28"
	},
	
	"zach_act1_scene2_28": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "After we graduate, we should write something together.",
		"next": "zach_act1_scene2_29"
	},
	
	"zach_act1_scene2_29": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "What do you think?",
		"next": "narration_act1_scene2_12"
	},
	
	"narration_act1_scene2_12": {
		"type": "dialogue",
		"speaker": "",
		"text": "...",
		"next": "kyle_act1_scene2_9"
	},
	
	"kyle_act1_scene2_9": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "What about...",
		"next": "kyle_act1_scene2_10"
	},
	
	"kyle_act1_scene2_10": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "3 actors get sucked into the world of their characters, but they take the place of their character's bitter rivals?",
		"next": "jayce_act1_scene2_8"
	},
	
	"jayce_act1_scene2_8": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "3 friends are given a chance to find love, but they lose themselves in the process.",
		"next": "narration_act1_scene2_13"
	},
	
	"narration_act1_scene2_13": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach notices something in the distance. A strange grey structure peeking out from the middle of the forest.",
		"next": "zach_act1_scene2_30"
	},
	
	"zach_act1_scene2_30": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "What about that?",
		"next": "narration_act1_scene2_14"
	},
	
	"narration_act1_scene2_14": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle and Jayce come over to see it.",
		"next": "zach_act1_scene2_31"
	},
	
	"zach_act1_scene2_31": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "3 misfits find something magical deep in the woods...",
		"next": "kyle_act1_scene2_11"
	},
	
	"kyle_act1_scene2_11": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "But...?",
		"next": "narration_act1_scene2_15"
	},
	
	"narration_act1_scene2_15": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach heads towards the stairs.",
		"next": "zach_act1_scene2_32"
	},
	
	"zach_act1_scene2_32": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Let's see...",
		"next": "investigate_structure"
	},
	
	"investigate_structure": {
		"type": "choice",
		"map": "Investigate the Structure",
		"choices": [
			{
				"text": "Investigate the structure",
				"next": "act1_scene3_background"
			}
		]
	}
}
