class_name Scene7
extends RefCounted

static func get_nodes() -> Dictionary:
	return {
	"act2_scene4_ue_background": {
		"type": "background",
		"background": "",
		"next": "narration_act2_scene4_ue_0"
	},
	
	"narration_act2_scene4_ue_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach follows his parents into the elevator, and they ride up to the top floor.",
		"next": "narrator_act2_scene4_ue_0"
	},
	
	"narrator_act2_scene4_ue_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Yes! The hero finally made the right choice. He followed his parents to the top, ready to take his place.",
		"next": "narrator_act2_scene4_ue_1"
	},
	
	"narrator_act2_scene4_ue_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "And there, at the top of the tower, his destiny waited for him.",
		"next": "narration_act2_scene4_ue_1"
	},
	
	"narration_act2_scene4_ue_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "In the top floor office, a dragon lies in chains, its jaws held shut by a muzzle made of ice.",
		"next": "narration_act2_scene4_ue_2"
	},
	
	"narration_act2_scene4_ue_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "On the floor in front of Zach is a sword.",
		"next": "narration_act2_scene4_ue_3"
	},
	
	"narration_act2_scene4_ue_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach silently picks up the sword and looks up at the dragon.",
		"next": "narration_act2_scene4_ue_4"
	},
	
	"narration_act2_scene4_ue_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "The dragon thrashes, breaking its chains and shattering the muzzle.",
		"next": "act2_scene4_ue_choice"
	},
	
	"act2_scene4_ue_choice": {
		"type": "choice",
		"choices": [
			{
				"text": "Fight the Dragon",
				"next": "end_act2"
			}
		]
	},
	
	"act2_scene4_uf_background": {
		"type": "background",
		"background": "",
		"next": "narration_act2_scene4_uf_0"
	},
	
	"narration_act2_scene4_uf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach follows his parents into the elevator, and they ride up to the top floor.",
		"next": "narrator_act2_scene4_uf_0"
	},
	
	"narrator_act2_scene4_uf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Yes! The hero finally made the right choice. He followed his parents to the top, ready to take his place.",
		"next": "narrator_act2_scene4_uf_1"
	},
	
	"narrator_act2_scene4_uf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "And there, at the top of the tower, his destiny waited for him.",
		"next": "narration_act2_scene4_uf_1"
	},
	
	"narration_act2_scene4_uf_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "In the top floor office, a dragon lies in chains, its jaws held shut by a muzzle made of ice.",
		"next": "narration_act2_scene4_uf_2"
	},
	
	"narration_act2_scene4_uf_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "On the floor in front of Zach is a sword.",
		"next": "narration_act2_scene4_uf_3"
	},
	
	"narration_act2_scene4_uf_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach silently picks up the sword and looks up at the dragon.",
		"next": "narration_act2_scene4_uf_4"
	},
	
	"narration_act2_scene4_uf_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "The dragon thrashes, breaking its chains and shattering the muzzle.",
		"next": "act2_scene4_uf_choice"
	},
	
	"act2_scene4_uf_choice": {
		"type": "choice",
		"choices": [
			{
				"text": "Fight the Dragon",
				"next": "end_act2"
			}
		]
	},
	
	"act2_scene4_he_background": {
		"type": "background",
		"background": "",
		"next": "narration_act2_scene4_he_0"
	},
	
	"narration_act2_scene4_he_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach follows his parents into the elevator, and they ride up to the top floor.",
		"next": "narrator_act2_scene4_he_0"
	},
	
	"narrator_act2_scene4_he_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Yes! The hero finally made the right choice. He followed his parents to the top, ready to take his place.",
		"next": "narrator_act2_scene4_he_1"
	},
	
	"narrator_act2_scene4_he_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "And there, at the top of the tower, his destiny waited for him.",
		"next": "narration_act2_scene4_he_1"
	},
	
	"narration_act2_scene4_he_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "In the top floor office, a dragon lies in chains, its jaws held shut by a muzzle made of ice.",
		"next": "narration_act2_scene4_he_2"
	},
	
	"narration_act2_scene4_he_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "On the floor in front of Zach is a sword.",
		"next": "narration_act2_scene4_he_3"
	},
	
	"narration_act2_scene4_he_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach silently picks up the sword and looks up at the dragon.",
		"next": "narration_act2_scene4_he_4"
	},
	
	"narration_act2_scene4_he_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "The dragon thrashes, breaking its chains and shattering the muzzle.",
		"next": "act2_scene4_he_choice"
	},
	
	"act2_scene4_he_choice": {
		"type": "choice",
		"choices": [
			{
				"text": "Fight the Dragon",
				"next": "end_act2"
			}
		]
	},
	
	"act2_scene4_hf_background": {
		"type": "background",
		"background": "",
		"next": "narration_act2_scene4_hf_0"
	},
	
	"narration_act2_scene4_hf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach follows his parents into the elevator, and they ride up to the top floor.",
		"next": "narrator_act2_scene4_hf_0"
	},
	
	"narrator_act2_scene4_hf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Yes! The hero finally made the right choice. He followed his parents to the top, ready to take his place.",
		"next": "narrator_act2_scene4_hf_1"
	},
	
	"narrator_act2_scene4_hf_1": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "And there, at the top of the tower, his destiny waited for him.",
		"next": "narration_act2_scene4_hf_1"
	},
	
	"narration_act2_scene4_hf_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "In the top floor office, a dragon lies in chains, its jaws held shut by a muzzle made of ice.",
		"next": "narration_act2_scene4_hf_2"
	},
	
	"narration_act2_scene4_hf_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "On the floor in front of Zach is a sword.",
		"next": "narration_act2_scene4_hf_3"
	},
	
	"narration_act2_scene4_hf_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach silently picks up the sword and looks up at the dragon.",
		"next": "narration_act2_scene4_hf_4"
	},
	
	"narration_act2_scene4_hf_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "The dragon thrashes, breaking its chains and shattering the muzzle.",
		"next": "act2_scene4_hf_choice"
	},
	
	"act2_scene4_hf_choice": {
		"type": "choice",
		"choices": [
			{
				"text": "Fight the Dragon",
				"next": "end_act2"
			}
		]
	},
}
