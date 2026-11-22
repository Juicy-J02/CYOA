class_name Scene8
extends RefCounted

# Act 3: endings and game overs.
static func get_nodes() -> Dictionary:
	return {
	"act3_scene3_ue_background": {
		"type": "background",
		"background": "",
		"music": "After the Fight.mp3",
		"next": "narration_act3_scene3_ue_0"
	},
	
	"narration_act3_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach steps down from on top of its head, looks at his reflection in the bloody sword, and drops it to the ground.",
		"next": "narration_act3_scene3_ue_1"
	},
	
	"narration_act3_scene3_ue_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach's parents walk over and hug him.",
		"next": "mom_dad_act3_scene3_ue_0"
	},
	
	"mom_dad_act3_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom and Dad",
		"text": "We knew you were meant for greatness.",
		"next": "narrator_act3_scene3_ue_0"
	},
	
	"narrator_act3_scene3_ue_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Finally! The Dragon is dead. The fire is out. And the Hero is victorious!",
		"next": "narration_act3_scene3_ue_2"
	},
	
	"narration_act3_scene3_ue_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle and Jayce drop the bow and shield as they walk back to the elevator.",
		"next": "zach_act3_scene3_slay_0"
	},
	
	"act3_scene3_he_background": {
		"type": "background",
		"background": "",
		"music": "After the Fight.mp3",
		"next": "narration_act3_scene3_he_0"
	},
	
	"narration_act3_scene3_he_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach steps down from on top of its head, looks at his reflection in the bloody sword, and drops it to the ground.",
		"next": "narration_act3_scene3_he_1"
	},
	
	"narration_act3_scene3_he_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach's parents walk over and hug him.",
		"next": "mom_dad_act3_scene3_he_0"
	},
	
	"mom_dad_act3_scene3_he_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom and Dad",
		"text": "We knew you were meant for greatness.",
		"next": "narrator_act3_scene3_he_0"
	},
	
	"narrator_act3_scene3_he_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Finally! The Dragon is dead. The fire is out. And the Hero is victorious!",
		"next": "narration_act3_scene3_he_2"
	},
	
	"narration_act3_scene3_he_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce drops the shield as he and Kyle walk back to the elevator.",
		"next": "zach_act3_scene3_slay_0"
	},
	
	"act3_scene3_uf_background": {
		"type": "background",
		"background": "",
		"music": "After the Fight.mp3",
		"next": "narration_act3_scene3_uf_0"
	},
	
	"narration_act3_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach steps down from on top of its head, looks at his reflection in the bloody sword, and drops it to the ground.",
		"next": "narration_act3_scene3_uf_1"
	},
	
	"narration_act3_scene3_uf_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach's parents walk over and hug him.",
		"next": "mom_dad_act3_scene3_uf_0"
	},
	
	"mom_dad_act3_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom and Dad",
		"text": "We knew you were meant for greatness.",
		"next": "narrator_act3_scene3_uf_0"
	},
	
	"narrator_act3_scene3_uf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Finally! The Dragon is dead. The fire is out. And the Hero is victorious!",
		"next": "narration_act3_scene3_uf_2"
	},
	
	"narration_act3_scene3_uf_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle drops the bow as he and Jayce walk back to the elevator.",
		"next": "zach_act3_scene3_slay_0"
	},
	
	"act3_scene3_hf_background": {
		"type": "background",
		"background": "",
		"music": "After the Fight.mp3",
		"next": "narration_act3_scene3_hf_0"
	},
	
	"narration_act3_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach steps down from on top of its head, looks at his reflection in the bloody sword, and drops it to the ground.",
		"next": "narration_act3_scene3_hf_1"
	},
	
	"narration_act3_scene3_hf_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach's parents walk over and hug him.",
		"next": "mom_dad_act3_scene3_hf_0"
	},
	
	"mom_dad_act3_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "Zach's Mom and Dad",
		"text": "We knew you were meant for greatness.",
		"next": "narrator_act3_scene3_hf_0"
	},
	
	"narrator_act3_scene3_hf_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Finally! The Dragon is dead. The fire is out. And the Hero is victorious!",
		"next": "narration_act3_scene3_hf_2"
	},
	
	"narration_act3_scene3_hf_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle and Jayce walk back to the elevator.",
		"next": "zach_act3_scene3_slay_0"
	},
	
	"zach_act3_scene3_slay_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Guys?",
		"next": "narration_act3_scene3_slay_0"
	},
	
	"narration_act3_scene3_slay_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach slowly walks over to them.",
		"next": "jayce_act3_scene3_slay_0"
	},
	
	"jayce_act3_scene3_slay_0": {
		"type": "dialogue",
		"speaker": "Jayce",
		"text": "You followed his script. Why?",
		"next": "zach_act3_scene3_slay_1"
	},
	
	"zach_act3_scene3_slay_1": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "I didn-",
		"next": "kyle_act3_scene3_slay_0"
	},
	
	"kyle_act3_scene3_slay_0": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "You did, and you know that.",
		"next": "kyle_act3_scene3_slay_1"
	},
	
	"kyle_act3_scene3_slay_1": {
		"type": "dialogue",
		"speaker": "Kyle",
		"text": "See you later, Hero.",
		"next": "narration_act3_scene3_slay_1"
	},
	
	"narration_act3_scene3_slay_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach watches Kyle and Jayce step inside the elevator, the doors closing behind them.",
		"next": "narrator_act3_scene3_slay_0"
	},
	
	"narrator_act3_scene3_slay_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "Where are they going?",
		"next": "act3_scene3_slay_background"
	},
	
	"act3_scene3_slay_background": {
		"type": "background",
		"background": "",
		"next": "narration_act3_scene3_slay_2"
	},
	
	"narration_act3_scene3_slay_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "THE END.",
		"next": "narration_act3_scene3_slay_3"
	},
	
	"narration_act3_scene3_slay_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Ending 1/2: Normal Ending",
		"next": "end_game",
		"ending": "Normal Ending"
	},
	
	"act3_scene3_fail_background": {
		"type": "background",
		"background": "",
		"music": "Failure.mp3",
		"next": "narration_act3_scene3_fail_0"
	},
	
	"narration_act3_scene3_fail_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Game Over.",
		"next": "narration_act3_scene3_fail_1"
	},
	
	"narration_act3_scene3_fail_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "You failed to slay The Dragon.",
		"next": "end_game",
		"ending": "Failed to Slay the Dragon"
	},
	
	"act3_scene3_escape_background": {
		"type": "background",
		"background": "",
		"next": "narration_act3_scene3_escape_0"
	},
	
	"narration_act3_scene3_escape_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "THE END.",
		"next": "narration_act3_scene3_escape_1"
	},
	
	"narration_act3_scene3_escape_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "Ending 2/2: FUN Ending",
		"next": "end_game",
		"ending": "FUN Ending"
	},
	
	"act3_scene3_caught_background": {
		"type": "background",
		"background": "",
		"music": "Keep Trying.mp3",
		"next": "narration_act3_scene3_caught_0"
	},
	
	"narration_act3_scene3_caught_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Game Over.",
		"next": "narration_act3_scene3_caught_1"
	},
	
	"narration_act3_scene3_caught_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "You failed to escape.",
		"next": "end_game",
		"ending": "Failed to Escape"
	},
	
	"end_game": {
		"type": "end_game"
	}
}
