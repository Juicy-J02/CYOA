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
		"text": "The hero and his friends were eating at their favorite restaurant after one of his friends broke up with his girlfriend.",
		"next": "narrator_act2_scene2_u_1"
	},
	
	"narrator_act2_scene2_u_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Jayce and Jessica, childhood sweethearts.",
		"next": "jayce_act2_scene2_u_0"
	},
	
	"jayce_act2_scene2_u_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We only dated for 2 months!",
		"next": "narrator_act2_scene2_u_2"
	},
	
	"narrator_act2_scene2_u_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Everyone said they were the perfect couple.",
		"next": "narrator_act2_scene2_u_3"
	},
	
	"narrator_act2_scene2_u_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "But eventually, like all relationships do, they faced their own challenges.",
		"next": "narrator_act2_scene2_u_4"
	},
	
	"narrator_act2_scene2_u_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero's friend couldn't take it and broke up with her.",
		"next": "narrator_act2_scene2_u_5"
	},
	
	"narrator_act2_scene2_u_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "In an attempt to cheer him up, his friend got him a gift.",
		"next": "narration_act2_scene2_u_0"
	},
	
	"narration_act2_scene2_u_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle notices a red scarf in his hands and offers it to Jayce.",
		"next": "narrator_act2_scene2_u_6"
	},
	
	"narrator_act2_scene2_u_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, the cleric must reunite with his lost love, let go of that silly gift, and become who he's meant to be.",
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
		"text": "The hero and his friends were eating at their favorite restaurant. He had just broken up with his girlfriend.",
		"next": "narrator_act2_scene2_h_1"
	},
	
	"narrator_act2_scene2_h_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Jayce and Jessica, childhood sweethearts.",
		"next": "jayce_act2_scene2_h_0"
	},
	
	"jayce_act2_scene2_h_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "We only dated for 2 months!",
		"next": "narrator_act2_scene2_h_2"
	},
	
	"narrator_act2_scene2_h_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Everyone said they were the perfect couple.",
		"next": "narrator_act2_scene2_h_3"
	},
	
	"narrator_act2_scene2_h_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "But eventually, like all relationships do, they faced their own challenges.",
		"next": "narrator_act2_scene2_h_4"
	},
	
	"narrator_act2_scene2_h_4": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero's friend couldn't take it and broke up with her.",
		"next": "narrator_act2_scene2_h_5"
	},
	
	"narrator_act2_scene2_h_5": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "In an attempt to cheer him up, his friend got him a gift and told him he was right to end things between them.",
		"next": "narration_act2_scene2_h_0"
	},
	
	"narration_act2_scene2_h_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle notices a red scarf in his hands and offers it to Jayce.",
		"next": "narrator_act2_scene2_h_6"
	},
	
	"narrator_act2_scene2_h_6": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero sees his friend feeling down and encourages him to try again with her.",
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
		"next": "zach_act2_scene2_ue_1"
	},
	
	"zach_act2_scene2_ue_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Give it more time.",
		"next": "narrator_act2_scene2_ue_0"
	},
	
	"narrator_act2_scene2_ue_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero reminded his friend that all relationships take work to maintain, especially when conflict arises.",
		"next": "jayce_act2_scene2_ue_0"
	},
	
	"jayce_act2_scene2_ue_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Might need to tell him again.",
		"next": "zach_act2_scene2_ue_2"
	},
	
	"zach_act2_scene2_ue_2": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "...You should go back to her.",
		"next": "narrator_act2_scene2_ue_1"
	},
	
	"narrator_act2_scene2_ue_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Every relationship has its ups and downs. If the cleric kept working at it, he could make it work.",
		"next": "narrator_act2_scene2_ue_2"
	},
	
	"narrator_act2_scene2_ue_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "And so he set aside his doubts and returned to the girl who was always meant for him.",
		"next": "jayce_act2_scene2_ue_1"
	},
	
	"jayce_act2_scene2_ue_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Zach, are you serious? You know how miserable we were.",
		"next": "zach_act2_scene2_ue_3"
	},
	
	"zach_act2_scene2_ue_3": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I know. But we don't want him doing anything to us. You saw what he did to my hand.",
		"next": "narration_act2_scene2_ue_0"
	},
	
	"narration_act2_scene2_ue_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce puts down the scarf and finds a shield under the table.",
		"next": "jayce_act2_scene2_ue_2"
	},
	
	"jayce_act2_scene2_ue_2": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "This thing is heavy.",
		"next": "narrator_act2_scene2_ue_3"
	},
	
	"narrator_act2_scene2_ue_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You'll get over it.",
		"next": "narration_act2_scene2_ue_1"
	},
	
	"narration_act2_scene2_ue_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_ue_4"
	},
	
	"narrator_act2_scene2_ue_4": {
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
				"next": "act2_scene3_ue_background"
			}
		]
	},
	
	"zach_act2_scene2_he_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "You should go back to her. Give it another shot.",
		"next": "narrator_act2_scene2_he_0"
	},
	
	"narrator_act2_scene2_he_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Every relationship has its ups and downs. If the cleric kept working at it, he could make it work.",
		"next": "narrator_act2_scene2_he_1"
	},
	
	"narrator_act2_scene2_he_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "And so he set aside his doubts and returned to the girl who was always meant for him.",
		"next": "jayce_act2_scene2_he_0"
	},
	
	"jayce_act2_scene2_he_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Zach, are you serious? You know how miserable we were.",
		"next": "zach_act2_scene2_he_1"
	},
	
	"zach_act2_scene2_he_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I know. But we don't want him doing anything to us. You saw what he did to my hand.",
		"next": "narration_act2_scene2_he_0"
	},
	
	"narration_act2_scene2_he_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce puts down the scarf and finds a shield under the table.",
		"next": "jayce_act2_scene2_he_1"
	},
	
	"jayce_act2_scene2_he_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "This thing is heavy.",
		"next": "narrator_act2_scene2_he_2"
	},
	
	"narrator_act2_scene2_he_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "You'll get over it.",
		"next": "narration_act2_scene2_he_1"
	},
	
	"narration_act2_scene2_he_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_he_3"
	},
	
	"narrator_act2_scene2_he_3": {
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
				"next": "act2_scene3_he_background"
			}
		]
	},
	
	"zach_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Honestly? You should stay broken up. You two clearly weren't happy together.",
		"next": "narration_act2_scene2_uf_0"
	},
	
	"narration_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce puts on the scarf.",
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
		"text": "Jayce takes the fire in his hands, and it becomes a part of him.",
		"next": "jayce_act2_scene2_uf_0"
	},
	
	"jayce_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Huh. I feel... lighter.",
		"next": "narration_act2_scene2_uf_3"
	},
	
	"narration_act2_scene2_uf_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce tries out his fire magic, and a ring of fire bursts up around the table.",
		"next": "jayce_act2_scene2_uf_1"
	},
	
	"jayce_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Did you guys see that!?",
		"next": "kyle_act2_scene2_uf_0"
	},
	
	"kyle_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Dude! That's awesome!",
		"next": "zach_act2_scene2_uf_1"
	},
	
	"zach_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Okay, that's actually incredible.",
		"next": "narrator_act2_scene2_uf_0"
	},
	
	"narrator_act2_scene2_uf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "No, no, NO! That is not how this was supposed to go!",
		"next": "narrator_act2_scene2_uf_1"
	},
	
	"narrator_act2_scene2_uf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach. You can still make the right choice. Remember what that dragon will do if it gets loose. Chaos. Destruction. Everything you know, burned to the ground.",
		"next": "narration_act2_scene2_uf_4"
	},
	
	"narration_act2_scene2_uf_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_uf_2"
	},
	
	"narrator_act2_scene2_uf_2": {
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
				"next": "act2_scene3_uf_background"
			}
		]
	},
	
	"zach_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Honestly? You should stay broken up. You two clearly weren't happy together.",
		"next": "narration_act2_scene2_hf_0"
	},
	
	"narration_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce puts on the scarf.",
		"next": "narrator_act2_scene2_hf_0"
	},
	
	"narrator_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Oh, come on! Not you too!",
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
		"text": "Jayce takes the fire in his hands, and it becomes a part of him.",
		"next": "jayce_act2_scene2_hf_0"
	},
	
	"jayce_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Huh. I feel... lighter.",
		"next": "narration_act2_scene2_hf_3"
	},
	
	"narration_act2_scene2_hf_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce tries out his fire magic, and a ring of fire bursts up around the table.",
		"next": "kyle_act2_scene2_hf_0"
	},
	
	"kyle_act2_scene2_hf_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Welcome to the club!",
		"next": "jayce_act2_scene2_hf_1"
	},
	
	"jayce_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Did you guys see that!?",
		"next": "zach_act2_scene2_hf_1"
	},
	
	"zach_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Okay, that's actually incredible.",
		"next": "narrator_act2_scene2_hf_1"
	},
	
	"narrator_act2_scene2_hf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "No, no, NO! That is not how this was supposed to go!",
		"next": "narrator_act2_scene2_hf_2"
	},
	
	"narrator_act2_scene2_hf_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Zach. You can still make the right choice. Remember what that dragon will do if it gets loose. Chaos. Destruction. Everything you know, burned to the ground.",
		"next": "narration_act2_scene2_hf_4"
	},
	
	"narration_act2_scene2_hf_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal.",
		"next": "narrator_act2_scene2_hf_3"
	},
	
	"narrator_act2_scene2_hf_3": {
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
				"next": "act2_scene3_hf_background"
			}
		]
	},
}
