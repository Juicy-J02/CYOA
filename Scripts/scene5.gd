class_name Scene5
extends RefCounted

static func get_nodes() -> Dictionary:
	return {
	"act2_scene2_u_background": {
		"type": "background",
		"background": "",
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
		"text": "The Cleric had just had a fight with his girlfriend.",
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
		"text": "So, The Hero brought him here, and brought him a gift.",
		"next": "zach_act2_scene2_u_0"
	},
	
	"zach_act2_scene2_u_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No, that was Kyle's idea.",
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
		"text": "The Cleric told them what happened between them.",
		"next": "narrator_act2_scene2_u_5"
	},
	
	"narrator_act2_scene2_u_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They got in a fight and he said something he shouldn't have said. Something he didn't mean to say.",
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
		"text": "And I meant what I said. We both did.",
		"next": "narrator_act2_scene2_u_6"
	},
	
	"narrator_act2_scene2_u_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric told her he didn't want to see her anymore, that they shouldn't be together.",
		"next": "jayce_act2_scene2_u_2"
	},
	
	"jayce_act2_scene2_u_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "*sigh*",
		"next": "narrator_act2_scene2_u_7"
	},
	
	"narrator_act2_scene2_u_7": {
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
		"next": "jayce_act2_scene2_u_3"
	},
	
	"jayce_act2_scene2_u_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We both knew that this wasn't what either of us wanted. She said-",
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
		"choices": [
			{
				"text": "Go back to your Ex",
				"next": "zach_act2_scene2_ue_0"
			},
			{
				"text": "Stay with your Friends",
				"next": "zach_act2_scene2_uf_0"
			}
		]
	},
	
	"act2_scene2_h_background": {
		"type": "background",
		"background": "",
		"next": "narrator_act2_scene2_h_0"
	},
	
	"narrator_act2_scene2_h_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Hero and his friends went through the portal and found themselves in their favorite restaurant.",
		"next": "zach_act2_scene2_h_0"
	},
	
	"zach_act2_scene2_h_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Can you stop calling me that?",
		"next": "narrator_act2_scene2_h_1"
	},
	
	"narrator_act2_scene2_h_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric had just had a fight with his girlfriend.",
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
		"text": "So, The Hero brought him here, and brought him a gift.",
		"next": "zach_act2_scene2_h_1"
	},
	
	"zach_act2_scene2_h_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "No, that was Kyle's idea.",
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
		"text": "The Cleric told them what happened between them.",
		"next": "narrator_act2_scene2_h_5"
	},
	
	"narrator_act2_scene2_h_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "They got in a fight and he said something he shouldn't have said. Something he didn't mean to say.",
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
		"text": "And I meant what I said. We both did.",
		"next": "narrator_act2_scene2_h_6"
	},
	
	"narrator_act2_scene2_h_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric told her he didn't want to see her anymore, that they shouldn't be together.",
		"next": "jayce_act2_scene2_h_2"
	},
	
	"jayce_act2_scene2_h_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "*sigh*",
		"next": "narrator_act2_scene2_h_7"
	},
	
	"narrator_act2_scene2_h_7": {
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
		"next": "jayce_act2_scene2_h_3"
	},
	
	"jayce_act2_scene2_h_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We both knew that this wasn't what either of us wanted. She said-",
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
		"choices": [
			{
				"text": "Go back to your Ex",
				"next": "zach_act2_scene2_he_0"
			},
			{
				"text": "Stay with your Friends",
				"next": "zach_act2_scene2_hf_0"
			}
		]
	},
	
	"zach_act2_scene2_ue_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I think you should keep trying to make it work.",
		"next": "jayce_act2_scene2_ue_0"
	},
	
	"jayce_act2_scene2_ue_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Zach...",
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
		"text": "Zach, I thought you didn't like Jessica?",
		"next": "zach_act2_scene2_ue_1"
	},
	
	"zach_act2_scene2_ue_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I don't have to. She's your girlfriend, not mine.",
		"next": "zach_act2_scene2_ue_2"
	},
	
	"zach_act2_scene2_ue_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "If you're meant to be together, then...",
		"next": "jayce_act2_scene2_ue_2"
	},
	
	"jayce_act2_scene2_ue_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "And what if we're not?",
		"next": "narrator_act2_scene2_ue_2"
	},
	
	"narrator_act2_scene2_ue_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric turns down the red scarf and decides to go back to his love.",
		"next": "jayce_act2_scene2_ue_3"
	},
	
	"jayce_act2_scene2_ue_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Really?",
		"next": "narrator_act2_scene2_ue_3"
	},
	
	"narrator_act2_scene2_ue_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric puts down the red scarf.",
		"next": "narrator_act2_scene2_ue_4"
	},
	
	"narrator_act2_scene2_ue_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Suddenly, a beautiful shield appeared before him. He took the shield.",
		"next": "jayce_act2_scene2_ue_4"
	},
	
	"jayce_act2_scene2_ue_4": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "It's a lot heavier than it looks.",
		"next": "narrator_act2_scene2_ue_5"
	},
	
	"narrator_act2_scene2_ue_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You can bear it.",
		"next": "narration_act2_scene2_ue_0"
	},
	
	"narration_act2_scene2_ue_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_ue_6"
	},
	
	"narrator_act2_scene2_ue_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your third quest.",
		"next": "act2_scene2_ue_portal"
	},
	
	"act2_scene2_ue_portal": {
		"type": "choice",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "end_act2"
			}
		]
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
		"text": "You still care about each other, right?",
		"next": "jayce_act2_scene2_he_0"
	},
	
	"jayce_act2_scene2_he_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Well, yeah, but not like-",
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
		"text": "You did look good together.",
		"next": "jayce_act2_scene2_he_2"
	},
	
	"jayce_act2_scene2_he_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Why should that matter?",
		"next": "narrator_act2_scene2_he_2"
	},
	
	"narrator_act2_scene2_he_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric turns down the red scarf and decides to go back to his love.",
		"next": "jayce_act2_scene2_he_3"
	},
	
	"jayce_act2_scene2_he_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Really?",
		"next": "narrator_act2_scene2_he_3"
	},
	
	"narrator_act2_scene2_he_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The Cleric puts down the red scarf.",
		"next": "narrator_act2_scene2_he_4"
	},
	
	"narrator_act2_scene2_he_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Suddenly, a beautiful shield appeared before him. He took the shield.",
		"next": "jayce_act2_scene2_he_4"
	},
	
	"jayce_act2_scene2_he_4": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "It's a lot heavier than it looks.",
		"next": "narrator_act2_scene2_he_5"
	},
	
	"narrator_act2_scene2_he_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You can bear it.",
		"next": "narration_act2_scene2_he_0"
	},
	
	"narration_act2_scene2_he_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_he_6"
	},
	
	"narrator_act2_scene2_he_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your third quest.",
		"next": "act2_scene2_he_portal"
	},
	
	"act2_scene2_he_portal": {
		"type": "choice",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "end_act2"
			}
		]
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
		"text": "Again!",
		"next": "jayce_act2_scene2_uf_0"
	},
	
	"jayce_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "She said she wasn't feeling the same spark with me as her previous partners.",
		"next": "narrator_act2_scene2_uf_1"
	},
	
	"narrator_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "I thought you were actors? You should be able to-",
		"next": "jayce_act2_scene2_uf_1"
	},
	
	"jayce_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Since we became friends in freshman year, everyone said we looked so good together.",
		"next": "jayce_act2_scene2_uf_2"
	},
	
	"jayce_act2_scene2_uf_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Her friends would tease her anytime we hung out.",
		"next": "jayce_act2_scene2_uf_3"
	},
	
	"jayce_act2_scene2_uf_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "My parents would ask when I was finally going to ask her out.",
		"next": "jayce_act2_scene2_uf_4"
	},
	
	"jayce_act2_scene2_uf_4": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Eventually the pressure became too much and we both caved.",
		"next": "jayce_act2_scene2_uf_5"
	},
	
	"jayce_act2_scene2_uf_5": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "For a while we tried to make it work.",
		"next": "jayce_act2_scene2_uf_6"
	},
	
	"jayce_act2_scene2_uf_6": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We went on dates, watched movies together, held hands while we walked between classes...",
		"next": "jayce_act2_scene2_uf_7"
	},
	
	"jayce_act2_scene2_uf_7": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We only started dating to get everyone off our backs, but forcing ourselves to be together was worse.",
		"next": "jayce_act2_scene2_uf_8"
	},
	
	"jayce_act2_scene2_uf_8": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "So we said goodbye.",
		"next": "narration_act2_scene2_uf_0"
	},
	
	"narration_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce puts on the red scarf.",
		"next": "narration_act2_scene2_uf_1"
	},
	
	"narration_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly, a small bright fire appears in the air in front of Jayce.",
		"next": "narration_act2_scene2_uf_2"
	},
	
	"narration_act2_scene2_uf_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce holds the fire in his hands. He feels a warmth run through his body as the fire becomes a part of him.",
		"next": "jayce_act2_scene2_uf_9"
	},
	
	"jayce_act2_scene2_uf_9": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "It's warm.",
		"next": "narration_act2_scene2_uf_3"
	},
	
	"narration_act2_scene2_uf_3": {
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
		"next": "narrator_act2_scene2_uf_2"
	},
	
	"narrator_act2_scene2_uf_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You're only making this harder for yourselves, right?",
		"next": "narrator_act2_scene2_uf_3"
	},
	
	"narrator_act2_scene2_uf_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It would be so much easier if you just stuck to what works.",
		"next": "jayce_act2_scene2_uf_11"
	},
	
	"jayce_act2_scene2_uf_11": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "It clearly isn't working for us.",
		"next": "narrator_act2_scene2_uf_4"
	},
	
	"narrator_act2_scene2_uf_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach. Please, for the good of everyone, make the right choice next time.",
		"next": "zach_act2_scene2_uf_1"
	},
	
	"zach_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Oh, I will.",
		"next": "narration_act2_scene2_uf_4"
	},
	
	"narration_act2_scene2_uf_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_uf_5"
	},
	
	"narrator_act2_scene2_uf_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your third quest.",
		"next": "act2_scene2_uf_portal"
	},
	
	"act2_scene2_uf_portal": {
		"type": "choice",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "end_act2"
			}
		]
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
		"text": "Again!",
		"next": "jayce_act2_scene2_hf_0"
	},
	
	"jayce_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "She said she wasn't feeling the same spark with me as her previous partners.",
		"next": "narrator_act2_scene2_hf_1"
	},
	
	"narrator_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "I thought you were actors? You should be able to-",
		"next": "jayce_act2_scene2_hf_1"
	},
	
	"jayce_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Since we became friends in freshman year, everyone said we looked so good together.",
		"next": "jayce_act2_scene2_hf_2"
	},
	
	"jayce_act2_scene2_hf_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Her friends would tease her anytime we hung out.",
		"next": "jayce_act2_scene2_hf_3"
	},
	
	"jayce_act2_scene2_hf_3": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "My parents would ask when I was finally going to ask her out.",
		"next": "jayce_act2_scene2_hf_4"
	},
	
	"jayce_act2_scene2_hf_4": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Eventually the pressure became too much and we both caved.",
		"next": "jayce_act2_scene2_hf_5"
	},
	
	"jayce_act2_scene2_hf_5": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "For a while we tried to make it work.",
		"next": "jayce_act2_scene2_hf_6"
	},
	
	"jayce_act2_scene2_hf_6": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We went on dates, watched movies together, held hands while we walked between classes...",
		"next": "jayce_act2_scene2_hf_7"
	},
	
	"jayce_act2_scene2_hf_7": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We only started dating to get everyone off our backs, but forcing ourselves to be together was worse.",
		"next": "jayce_act2_scene2_hf_8"
	},
	
	"jayce_act2_scene2_hf_8": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "So we said goodbye.",
		"next": "narration_act2_scene2_hf_0"
	},
	
	"narration_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce puts on the red scarf.",
		"next": "narration_act2_scene2_hf_1"
	},
	
	"narration_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Suddenly, a small bright fire appears in the air in front of Jayce.",
		"next": "narration_act2_scene2_hf_2"
	},
	
	"narration_act2_scene2_hf_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce holds the fire in his hands. He feels a warmth run through his body as the fire becomes a part of him.",
		"next": "jayce_act2_scene2_hf_9"
	},
	
	"jayce_act2_scene2_hf_9": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "It's warm.",
		"next": "narration_act2_scene2_hf_3"
	},
	
	"narration_act2_scene2_hf_3": {
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
		"text": "You're only making this harder for yourselves, right?",
		"next": "narrator_act2_scene2_hf_3"
	},
	
	"narrator_act2_scene2_hf_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It would be so much easier if you just stuck to what works.",
		"next": "jayce_act2_scene2_hf_11"
	},
	
	"jayce_act2_scene2_hf_11": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "It clearly isn't working for us.",
		"next": "narrator_act2_scene2_hf_4"
	},
	
	"narrator_act2_scene2_hf_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach. Please, for the good of everyone, make the right choice next time.",
		"next": "zach_act2_scene2_hf_1"
	},
	
	"zach_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Oh, I will.",
		"next": "narration_act2_scene2_hf_4"
	},
	
	"narration_act2_scene2_hf_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_hf_5"
	},
	
	"narrator_act2_scene2_hf_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "It's time for your third quest.",
		"next": "act2_scene2_hf_portal"
	},
	
	"act2_scene2_hf_portal": {
		"type": "choice",
		"choices": [
			{
				"text": "Go through the portal",
				"next": "end_act2"
			}
		]
	},
	
	"end_act2": {
		"type": "dialogue",
		"speaker": "",
		"text": "End Act 2",
		"next": "end_game"
	},
}
