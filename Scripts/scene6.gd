class_name Scene6
extends RefCounted

static func get_nodes() -> Dictionary:
	return {
	"act2_scene3_ue_background": {
		"type": "background",
		"background": "",
		"next": "narrator_act2_scene3_ue_0"
	},
	
	"narrator_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero's parents were giving him and his friends a tour of the family office, preparing him for the day he would take it over.",
		"next": "employee_act2_scene3_ue_0"
	},
	
	"employee_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "Employee",
		"text": "Excuse me, ma'am? I think the way we're handling this project is going to cause problems down the road.",
		"next": "mom_act2_scene3_ue_0"
	},
	
	"mom_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "This is how we've done every project so far, and it's never done me wrong.",
		"next": "employee_act2_scene3_ue_1"
	},
	
	"employee_act2_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "Employee",
		"text": "...Yes, ma'am.",
		"next": "narrator_act2_scene3_ue_1"
	},
	
	"narrator_act2_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero had been going to college, preparing to take over the company once he graduated.",
		"next": "narration_act2_scene3_ue_0"
	},
	
	"narration_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks around, and a basement door catches his eye. His parents have never mentioned a basement.",
		"next": "narrator_act2_scene3_ue_2"
	},
	
	"narrator_act2_scene3_ue_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, the hero must undo the foolish mistake that gave him his scar, follow his parents to his future office, and become who he was meant to be.",
		"next": "kyle_act2_scene3_ue_0"
	},
	
	"kyle_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Zach, we've done everything he wanted. I've got the bow, Jayce has the shield.",
		"next": "jayce_act2_scene3_ue_0"
	},
	
	"jayce_act2_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "And none of us are happy about it. Maybe this is what the prophecy wants, but it's not what you want.",
		"next": "mom_act2_scene3_ue_1"
	},
	
	"mom_act2_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "Zach, honey, the elevator is this way.",
		"next": "jayce_act2_scene3_ue_1"
	},
	
	"jayce_act2_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Or... we could see what's down in the basement.",
		"next": "act2_scene3_ue_choice"
	},
	
	"act2_scene3_ue_choice": {
		"type": "choice",
		"choices": [
			{
				"text": "Go to the Office",
				"next": "act2_scene4_ue_background"
			},
			{
				"text": "Go to the Basement",
				"next": "act2_scene5_ue_background"
			}
		]
	},
	
	"act2_scene3_he_background": {
		"type": "background",
		"background": "",
		"next": "narrator_act2_scene3_he_0"
	},
	
	"narrator_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero's parents were giving him and his friends a tour of the family office, preparing him for the day he would take it over.",
		"next": "dad_act2_scene3_he_0"
	},
	
	"dad_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "Dad",
		"text": "Our son had always known this day would come.",
		"next": "mom_act2_scene3_he_0"
	},
	
	"mom_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "He'd been working towards it his whole life.",
		"next": "narrator_act2_scene3_he_1"
	},
	
	"narrator_act2_scene3_he_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero had been going to college, preparing to take over the company once he graduated.",
		"next": "narration_act2_scene3_he_0"
	},
	
	"narration_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks around, and a basement door catches his eye. His parents have never mentioned a basement.",
		"next": "narrator_act2_scene3_he_2"
	},
	
	"narrator_act2_scene3_he_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, the hero must undo the foolish mistake that gave him his scar, follow his parents to his future office, and become who he was meant to be.",
		"next": "jayce_act2_scene3_he_0"
	},
	
	"jayce_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Zach, you've been following him because you're scared of what he'll do. That's not the same as wanting it.",
		"next": "kyle_act2_scene3_he_0"
	},
	
	"kyle_act2_scene3_he_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "...Huh. I guess I still followed the prophecy, didn't I? Just in my own way.",
		"next": "mom_act2_scene3_he_1"
	},
	
	"mom_act2_scene3_he_1": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "Zach, honey, the elevator is this way.",
		"next": "jayce_act2_scene3_he_1"
	},
	
	"jayce_act2_scene3_he_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Or... we could see what's down in the basement.",
		"next": "act2_scene3_he_choice"
	},
	
	"act2_scene3_he_choice": {
		"type": "choice",
		"choices": [
			{
				"text": "Go to the Office",
				"next": "act2_scene4_he_background"
			},
			{
				"text": "Go to the Basement",
				"next": "act2_scene5_he_background"
			}
		]
	},
	
	"act2_scene3_uf_background": {
		"type": "background",
		"background": "",
		"next": "narrator_act2_scene3_uf_0"
	},
	
	"narrator_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero's parents were giving him and his friends a tour of the family office, preparing him for the day he would take it over.",
		"next": "dad_act2_scene3_uf_0"
	},
	
	"dad_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "Dad",
		"text": "Our son had always known this day would come.",
		"next": "mom_act2_scene3_uf_0"
	},
	
	"mom_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "He'd been working towards it his whole life.",
		"next": "narrator_act2_scene3_uf_1"
	},
	
	"narrator_act2_scene3_uf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero had been going to college, preparing to take over the company once he graduated.",
		"next": "narration_act2_scene3_uf_0"
	},
	
	"narration_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks around, and a basement door catches his eye. His parents have never mentioned a basement.",
		"next": "narrator_act2_scene3_uf_2"
	},
	
	"narrator_act2_scene3_uf_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, the hero must undo the foolish mistake that gave him his scar, follow his parents to his future office, and become who he was meant to be.",
		"next": "kyle_act2_scene3_uf_0"
	},
	
	"kyle_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "Zach, you've been following him because you're scared of what he'll do. That's not the same as wanting it.",
		"next": "jayce_act2_scene3_uf_0"
	},
	
	"jayce_act2_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "...Huh. I guess I still followed the prophecy, didn't I? Just in my own way.",
		"next": "mom_act2_scene3_uf_1"
	},
	
	"mom_act2_scene3_uf_1": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "Zach, honey, the elevator is this way.",
		"next": "jayce_act2_scene3_uf_1"
	},
	
	"jayce_act2_scene3_uf_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Or... we could see what's down in the basement.",
		"next": "act2_scene3_uf_choice"
	},
	
	"act2_scene3_uf_choice": {
		"type": "choice",
		"choices": [
			{
				"text": "Go to the Office",
				"next": "act2_scene4_uf_background"
			},
			{
				"text": "Go to the Basement",
				"next": "act2_scene5_uf_background"
			}
		]
	},
	
	"act2_scene3_hf_background": {
		"type": "background",
		"background": "",
		"next": "narrator_act2_scene3_hf_0"
	},
	
	"narrator_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero's parents were giving him and his friends a tour of the family office, preparing him for the day he would take it over.",
		"next": "dad_act2_scene3_hf_0"
	},
	
	"dad_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "Dad",
		"text": "Our son had always known this day would come.",
		"next": "mom_act2_scene3_hf_0"
	},
	
	"mom_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "He'd been working towards it his whole life.",
		"next": "narrator_act2_scene3_hf_1"
	},
	
	"narrator_act2_scene3_hf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "The hero had been going to college, preparing to take over the company once he graduated.",
		"next": "narration_act2_scene3_hf_0"
	},
	
	"narration_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach looks around, and a basement door catches his eye. His parents have never mentioned a basement.",
		"next": "narrator_act2_scene3_hf_2"
	},
	
	"narrator_act2_scene3_hf_2": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "To find what he's looking for, the hero must undo the foolish mistake that gave him his scar, follow his parents to his future office, and become who he was meant to be.",
		"next": "narrator_act2_scene3_hf_3"
	},
	
	"narrator_act2_scene3_hf_3": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Let me make this VERY clear. The hero follows his parents. The hero takes his place. The hero becomes who he was meant to be. That is the story.",
		"next": "kyle_act2_scene3_hf_0"
	},
	
	"kyle_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "We still went on his quests, though. We just did them our way.",
		"next": "jayce_act2_scene3_hf_0"
	},
	
	"jayce_act2_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Yeah. We followed the prophecy... just not his version of it.",
		"next": "mom_act2_scene3_hf_1"
	},
	
	"mom_act2_scene3_hf_1": {
		"type": "dialogue",
		"speaker": "Mom",
		"text": "Zach, honey, the elevator is this way.",
		"next": "jayce_act2_scene3_hf_1"
	},
	
	"jayce_act2_scene3_hf_1": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "Or... we could see what's down in the basement.",
		"next": "act2_scene3_hf_choice"
	},
	
	"act2_scene3_hf_choice": {
		"type": "choice",
		"choices": [
			{
				"text": "Go to the Office",
				"next": "act2_scene4_hf_background"
			},
			{
				"text": "Go to the Basement",
				"next": "act2_scene5_hf_background"
			}
		]
	},
}
