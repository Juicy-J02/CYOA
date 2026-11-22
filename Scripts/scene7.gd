class_name Scene7
extends RefCounted

# Act 3: fighting the Dragon (o) or freeing it (b). QTE timing is StoryManager.qte_seconds.
static func get_nodes() -> Dictionary:
	return {
	"act3_scene1_ueo_background": {
		"type": "background",
		"background": "",
		"music": "The Fight (U->E).mp3",
		"next": "act3_scene1_ueo_meet_friends"
	},
	
	"act3_scene1_ueo_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act3_scene1_ueo_0"
	},
	
	"narration_act3_scene1_ueo_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks the chain on its right arm and swings at Zach's dad.",
		"next": "act3_scene1_ueo_qte_shoot"
	},
	
	"act3_scene1_ueo_qte_shoot": {
		"type": "qte",
		"map": "Fight: Shoot",
		"prompt": "SHOOT",
		"next": "act3_scene1_ueo_qte_shoot_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ueo_qte_shoot_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle raises the bow and shoots an arrow through The Dragon's arm.",
		"next": "narration_act3_scene1_ueo_shoot_0"
	},
	
	"narration_act3_scene1_ueo_shoot_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "It lets out a muffled growl.",
		"next": "narration_act3_scene1_ueo_shoot_1"
	},
	
	"narration_act3_scene1_ueo_shoot_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator makes another chain of ice and binds its right arm again.",
		"next": "narration_act3_scene1_ueo_shoot_2"
	},
	
	"narration_act3_scene1_ueo_shoot_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks the chain on its left arm and swings at Zach's mom.",
		"next": "act3_scene1_ueo_qte_block"
	},
	
	"act3_scene1_ueo_qte_block": {
		"type": "qte",
		"map": "Fight: Block",
		"prompt": "BLOCK",
		"next": "act3_scene1_ueo_qte_block_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ueo_qte_block_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce blocks The Dragon's attack.",
		"next": "narration_act3_scene1_ueo_block_0"
	},
	
	"narration_act3_scene1_ueo_block_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "It lets out a muffled roar.",
		"next": "narration_act3_scene1_ueo_block_1"
	},
	
	"narration_act3_scene1_ueo_block_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator makes another chain of ice and binds its left arm again.",
		"next": "narration_act3_scene1_ueo_block_2"
	},
	
	"narration_act3_scene1_ueo_block_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks its muzzle and attacks The Narrator.",
		"next": "act3_scene1_ueo_qte_stab_1"
	},
	
	"act3_scene1_ueo_qte_stab_1": {
		"type": "qte",
		"map": "Fight: Stab 1",
		"prompt": "STAB",
		"next": "act3_scene1_ueo_qte_stab_1_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ueo_qte_stab_1_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach jumps in front of The Narrator and stabs The Dragon in the mouth.",
		"next": "narration_act3_scene1_ueo_stab_1_0"
	},
	
	"narration_act3_scene1_ueo_stab_1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon roars in pain.",
		"next": "act3_scene1_ueo_qte_stab_2"
	},
	
	"act3_scene1_ueo_qte_stab_2": {
		"type": "qte",
		"map": "Fight: Stab 2",
		"prompt": "STAB",
		"next": "act3_scene1_ueo_qte_stab_2_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ueo_qte_stab_2_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon's right eye out.",
		"next": "narration_act3_scene1_ueo_stab_2_0"
	},
	
	"narration_act3_scene1_ueo_stab_2_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon whines in pain, its blood pooling on the floor.",
		"next": "act3_scene1_ueo_qte_stab_3"
	},
	
	"act3_scene1_ueo_qte_stab_3": {
		"type": "qte",
		"map": "Fight: Stab 3",
		"prompt": "STAB",
		"next": "act3_scene1_ueo_qte_stab_3_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ueo_qte_stab_3_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon's left eye out.",
		"next": "narration_act3_scene1_ueo_stab_3_0"
	},
	
	"narration_act3_scene1_ueo_stab_3_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon cries out in pain, its blood mixing with its tears.",
		"next": "act3_scene1_ueo_qte_stab_4"
	},
	
	"act3_scene1_ueo_qte_stab_4": {
		"type": "qte",
		"map": "Fight: Stab 4",
		"prompt": "STAB",
		"next": "act3_scene1_ueo_qte_stab_4_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ueo_qte_stab_4_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon between the eyes.",
		"next": "narration_act3_scene1_ueo_stab_4_0"
	},
	
	"narration_act3_scene1_ueo_stab_4_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon goes limp.",
		"next": "act3_scene1_ueo_choice"
	},
	
	"act3_scene1_ueo_choice": {
		"type": "choice",
		"map": "Slay the Dragon",
		"choices": [
			{
				"text": "Slay the Dragon",
				"next": "act3_scene3_ue_background"
			}
		]
	},
	
	"act3_scene2_ueb_background": {
		"type": "background",
		"background": "",
		"music": "The Chase (U->E).mp3",
		"next": "act3_scene2_ueb_meet_friends"
	},
	
	"act3_scene2_ueb_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act3_scene2_ueb_0"
	},
	
	"narrator_act3_scene2_ueb_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "THIS ISN'T HOW THIS STORY IS SUPPOSED TO GO!",
		"next": "narration_act3_scene2_ueb_0"
	},
	
	"narration_act3_scene2_ueb_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "He opens a portal to Zach's parents' house in front of you.",
		"next": "narration_act3_scene2_ueb_1"
	},
	
	"narration_act3_scene2_ueb_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "A block of ice flies through the portal.",
		"next": "act3_scene2_ueb_qte_shoot"
	},
	
	"act3_scene2_ueb_qte_shoot": {
		"type": "qte",
		"map": "Chase: Shoot",
		"prompt": "SHOOT",
		"next": "act3_scene2_ueb_qte_shoot_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_ueb_qte_shoot_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach lights the tip of an arrow on fire.",
		"next": "narration_act3_scene2_ueb_shoot_0"
	},
	
	"narration_act3_scene2_ueb_shoot_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle raises the bow and shoots the arrow, shattering the ice block.",
		"next": "act3_scene2_ueb_qte_swerve_1"
	},
	
	"act3_scene2_ueb_qte_swerve_1": {
		"type": "qte",
		"map": "Chase: Swerve 1",
		"prompt": "SWERVE",
		"next": "act3_scene2_ueb_qte_swerve_1_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_ueb_qte_swerve_1_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon swerves around the portal and keeps flying towards the sun.",
		"next": "narrator_act3_scene2_ueb_swerve_1_0"
	},
	
	"narrator_act3_scene2_ueb_swerve_1_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "YOU ARE THE HERO AND I AM THE MENTOR THAT GUIDES YOU TO VICTORY!",
		"next": "narration_act3_scene2_ueb_swerve_1_0"
	},
	
	"narration_act3_scene2_ueb_swerve_1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "He opens a portal to Zach's parents' office in front of you.",
		"next": "narration_act3_scene2_ueb_swerve_1_1"
	},
	
	"narration_act3_scene2_ueb_swerve_1_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "An icicle shoots through the portal.",
		"next": "act3_scene2_ueb_qte_block"
	},
	
	"act3_scene2_ueb_qte_block": {
		"type": "qte",
		"map": "Chase: Block",
		"prompt": "BLOCK",
		"next": "act3_scene2_ueb_qte_block_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_ueb_qte_block_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach lights Jayce's shield on fire.",
		"next": "narration_act3_scene2_ueb_block_0"
	},
	
	"narration_act3_scene2_ueb_block_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce raises the shield, shattering the icicle.",
		"next": "act3_scene2_ueb_qte_swerve_2"
	},
	
	"act3_scene2_ueb_qte_swerve_2": {
		"type": "qte",
		"map": "Chase: Swerve 2",
		"prompt": "SWERVE",
		"next": "act3_scene2_ueb_qte_swerve_2_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_ueb_qte_swerve_2_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon swerves around the portal and keeps flying towards the sun.",
		"next": "narrator_act3_scene2_ueb_swerve_2_0"
	},
	
	"narrator_act3_scene2_ueb_swerve_2_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "THIS ISN'T WHO WE'RE MEANT TO BE!",
		"next": "narration_act3_scene2_ueb_swerve_2_0"
	},
	
	"narration_act3_scene2_ueb_swerve_2_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal to The Statue in front of you.",
		"next": "narration_act3_scene2_ueb_swerve_2_1"
	},
	
	"narration_act3_scene2_ueb_swerve_2_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "A jagged wall of ice tears through the portal.",
		"next": "act3_scene2_ueb_qte_blast"
	},
	
	"act3_scene2_ueb_qte_blast": {
		"type": "qte",
		"map": "Chase: Blast",
		"prompt": "BLAST",
		"next": "act3_scene2_ueb_qte_blast_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_ueb_qte_blast_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach bends down to The Dragon.",
		"next": "zach_act3_scene2_ueb_blast_0"
	},
	
	"zach_act3_scene2_ueb_blast_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Ok buddy, let's do this.",
		"next": "narration_act3_scene2_ueb_blast_0"
	},
	
	"narration_act3_scene2_ueb_blast_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach raises his hand and a bright flame appears in front of him.",
		"next": "narration_act3_scene2_ueb_blast_1"
	},
	
	"narration_act3_scene2_ueb_blast_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon growls and a bright flame appears in its mouth.",
		"next": "narration_act3_scene2_ueb_blast_2"
	},
	
	"narration_act3_scene2_ueb_blast_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach and The Dragon focus on the fire.",
		"next": "act3_scene2_blast_0"
	},
	
	"act3_scene1_heo_background": {
		"type": "background",
		"background": "",
		"music": "The Fight (H->E).mp3",
		"next": "act3_scene1_heo_meet_friends"
	},
	
	"act3_scene1_heo_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act3_scene1_heo_0"
	},
	
	"narration_act3_scene1_heo_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks the chain on its right arm and swings at Zach's dad.",
		"next": "act3_scene1_heo_qte_shoot"
	},
	
	"act3_scene1_heo_qte_shoot": {
		"type": "qte",
		"map": "Fight: Shoot",
		"prompt": "SHOOT",
		"next": "act3_scene1_heo_qte_shoot_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_heo_qte_shoot_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle shoots a fire ball at The Dragon's arm.",
		"next": "narration_act3_scene1_heo_shoot_0"
	},
	
	"narration_act3_scene1_heo_shoot_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "It lets out a muffled growl.",
		"next": "narration_act3_scene1_heo_shoot_1"
	},
	
	"narration_act3_scene1_heo_shoot_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator makes another chain of ice and binds its right arm again.",
		"next": "narration_act3_scene1_heo_shoot_2"
	},
	
	"narration_act3_scene1_heo_shoot_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks the chain on its left arm and swings at Zach's mom.",
		"next": "act3_scene1_heo_qte_block"
	},
	
	"act3_scene1_heo_qte_block": {
		"type": "qte",
		"map": "Fight: Block",
		"prompt": "BLOCK",
		"next": "act3_scene1_heo_qte_block_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_heo_qte_block_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce blocks The Dragon's swing with the shield.",
		"next": "narration_act3_scene1_heo_block_0"
	},
	
	"narration_act3_scene1_heo_block_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "It lets out a muffled roar.",
		"next": "narration_act3_scene1_heo_block_1"
	},
	
	"narration_act3_scene1_heo_block_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator makes another chain of ice and binds its left arm again.",
		"next": "narration_act3_scene1_heo_block_2"
	},
	
	"narration_act3_scene1_heo_block_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks its muzzle and attacks The Narrator.",
		"next": "act3_scene1_heo_qte_stab_1"
	},
	
	"act3_scene1_heo_qte_stab_1": {
		"type": "qte",
		"map": "Fight: Stab 1",
		"prompt": "STAB",
		"next": "act3_scene1_heo_qte_stab_1_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_heo_qte_stab_1_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach jumps in front of The Narrator and stabs The Dragon in the mouth.",
		"next": "narration_act3_scene1_heo_stab_1_0"
	},
	
	"narration_act3_scene1_heo_stab_1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon roars in pain.",
		"next": "act3_scene1_heo_qte_stab_2"
	},
	
	"act3_scene1_heo_qte_stab_2": {
		"type": "qte",
		"map": "Fight: Stab 2",
		"prompt": "STAB",
		"next": "act3_scene1_heo_qte_stab_2_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_heo_qte_stab_2_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon's right eye out.",
		"next": "narration_act3_scene1_heo_stab_2_0"
	},
	
	"narration_act3_scene1_heo_stab_2_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon whines in pain, its blood pooling on the floor.",
		"next": "act3_scene1_heo_qte_stab_3"
	},
	
	"act3_scene1_heo_qte_stab_3": {
		"type": "qte",
		"map": "Fight: Stab 3",
		"prompt": "STAB",
		"next": "act3_scene1_heo_qte_stab_3_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_heo_qte_stab_3_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon's left eye out.",
		"next": "narration_act3_scene1_heo_stab_3_0"
	},
	
	"narration_act3_scene1_heo_stab_3_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon cries out in pain, its blood mixing with its tears.",
		"next": "act3_scene1_heo_qte_stab_4"
	},
	
	"act3_scene1_heo_qte_stab_4": {
		"type": "qte",
		"map": "Fight: Stab 4",
		"prompt": "STAB",
		"next": "act3_scene1_heo_qte_stab_4_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_heo_qte_stab_4_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon between the eyes.",
		"next": "narration_act3_scene1_heo_stab_4_0"
	},
	
	"narration_act3_scene1_heo_stab_4_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon goes limp.",
		"next": "act3_scene1_heo_choice"
	},
	
	"act3_scene1_heo_choice": {
		"type": "choice",
		"map": "Slay the Dragon",
		"choices": [
			{
				"text": "Slay the Dragon",
				"next": "act3_scene3_he_background"
			}
		]
	},
	
	"act3_scene2_heb_background": {
		"type": "background",
		"background": "",
		"music": "The Chase (H->E).mp3",
		"next": "act3_scene2_heb_meet_friends"
	},
	
	"act3_scene2_heb_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act3_scene2_heb_0"
	},
	
	"narrator_act3_scene2_heb_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "THIS ISN'T HOW THIS STORY IS SUPPOSED TO GO!",
		"next": "narration_act3_scene2_heb_0"
	},
	
	"narration_act3_scene2_heb_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "He opens a portal to Zach's parents' house in front of you.",
		"next": "narration_act3_scene2_heb_1"
	},
	
	"narration_act3_scene2_heb_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "A block of ice flies through the portal.",
		"next": "act3_scene2_heb_qte_shoot"
	},
	
	"act3_scene2_heb_qte_shoot": {
		"type": "qte",
		"map": "Chase: Shoot",
		"prompt": "SHOOT",
		"next": "act3_scene2_heb_qte_shoot_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_heb_qte_shoot_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle shoots a fire ball, melting the ice block.",
		"next": "act3_scene2_heb_qte_swerve_1"
	},
	
	"act3_scene2_heb_qte_swerve_1": {
		"type": "qte",
		"map": "Chase: Swerve 1",
		"prompt": "SWERVE",
		"next": "act3_scene2_heb_qte_swerve_1_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_heb_qte_swerve_1_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon swerves around the portal and keeps flying towards the sun.",
		"next": "narrator_act3_scene2_heb_swerve_1_0"
	},
	
	"narrator_act3_scene2_heb_swerve_1_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "YOU ARE THE HERO AND I AM THE MENTOR THAT GUIDES YOU TO VICTORY!",
		"next": "narration_act3_scene2_heb_swerve_1_0"
	},
	
	"narration_act3_scene2_heb_swerve_1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "He opens a portal to Zach's parents' office in front of you.",
		"next": "narration_act3_scene2_heb_swerve_1_1"
	},
	
	"narration_act3_scene2_heb_swerve_1_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "An icicle shoots through the portal.",
		"next": "act3_scene2_heb_qte_block"
	},
	
	"act3_scene2_heb_qte_block": {
		"type": "qte",
		"map": "Chase: Block",
		"prompt": "BLOCK",
		"next": "act3_scene2_heb_qte_block_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_heb_qte_block_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach lights Jayce's shield on fire.",
		"next": "narration_act3_scene2_heb_block_0"
	},
	
	"narration_act3_scene2_heb_block_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce raises the shield, shattering the icicle.",
		"next": "act3_scene2_heb_qte_swerve_2"
	},
	
	"act3_scene2_heb_qte_swerve_2": {
		"type": "qte",
		"map": "Chase: Swerve 2",
		"prompt": "SWERVE",
		"next": "act3_scene2_heb_qte_swerve_2_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_heb_qte_swerve_2_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon swerves around the portal and keeps flying towards the sun.",
		"next": "narrator_act3_scene2_heb_swerve_2_0"
	},
	
	"narrator_act3_scene2_heb_swerve_2_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "THIS ISN'T WHO WE'RE MEANT TO BE!",
		"next": "narration_act3_scene2_heb_swerve_2_0"
	},
	
	"narration_act3_scene2_heb_swerve_2_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal to The Statue in front of you.",
		"next": "narration_act3_scene2_heb_swerve_2_1"
	},
	
	"narration_act3_scene2_heb_swerve_2_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "A jagged wall of ice tears through the portal.",
		"next": "act3_scene2_heb_qte_blast"
	},
	
	"act3_scene2_heb_qte_blast": {
		"type": "qte",
		"map": "Chase: Blast",
		"prompt": "BLAST",
		"next": "act3_scene2_heb_qte_blast_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_heb_qte_blast_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach bends down to The Dragon.",
		"next": "zach_act3_scene2_heb_blast_0"
	},
	
	"zach_act3_scene2_heb_blast_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Ok buddy, let's do this.",
		"next": "narration_act3_scene2_heb_blast_0"
	},
	
	"narration_act3_scene2_heb_blast_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach and Kyle raise their hands and two bright flames appear in front of them.",
		"next": "narration_act3_scene2_heb_blast_1"
	},
	
	"narration_act3_scene2_heb_blast_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon growls and a bright flame appears in its mouth.",
		"next": "narration_act3_scene2_heb_blast_2"
	},
	
	"narration_act3_scene2_heb_blast_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and The Dragon focus on the fire.",
		"next": "act3_scene2_blast_0"
	},
	
	"act3_scene1_ufo_background": {
		"type": "background",
		"background": "",
		"music": "The Fight (U->F).mp3",
		"next": "act3_scene1_ufo_meet_friends"
	},
	
	"act3_scene1_ufo_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act3_scene1_ufo_0"
	},
	
	"narration_act3_scene1_ufo_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks the chain on its right arm and swings at Zach's dad.",
		"next": "act3_scene1_ufo_qte_shoot"
	},
	
	"act3_scene1_ufo_qte_shoot": {
		"type": "qte",
		"map": "Fight: Shoot",
		"prompt": "SHOOT",
		"next": "act3_scene1_ufo_qte_shoot_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ufo_qte_shoot_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle raises the bow and shoots an arrow through The Dragon's arm.",
		"next": "narration_act3_scene1_ufo_shoot_0"
	},
	
	"narration_act3_scene1_ufo_shoot_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "It lets out a muffled growl.",
		"next": "narration_act3_scene1_ufo_shoot_1"
	},
	
	"narration_act3_scene1_ufo_shoot_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator makes another chain of ice and binds its right arm again.",
		"next": "narration_act3_scene1_ufo_shoot_2"
	},
	
	"narration_act3_scene1_ufo_shoot_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks the chain on its left arm and swings at Zach's mom.",
		"next": "act3_scene1_ufo_qte_block"
	},
	
	"act3_scene1_ufo_qte_block": {
		"type": "qte",
		"map": "Fight: Block",
		"prompt": "BLOCK",
		"next": "act3_scene1_ufo_qte_block_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ufo_qte_block_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce blocks The Dragon's swing with a wall of fire.",
		"next": "narration_act3_scene1_ufo_block_0"
	},
	
	"narration_act3_scene1_ufo_block_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "It lets out a muffled roar.",
		"next": "narration_act3_scene1_ufo_block_1"
	},
	
	"narration_act3_scene1_ufo_block_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator makes another chain of ice and binds its left arm again.",
		"next": "narration_act3_scene1_ufo_block_2"
	},
	
	"narration_act3_scene1_ufo_block_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks its muzzle and attacks The Narrator.",
		"next": "act3_scene1_ufo_qte_stab_1"
	},
	
	"act3_scene1_ufo_qte_stab_1": {
		"type": "qte",
		"map": "Fight: Stab 1",
		"prompt": "STAB",
		"next": "act3_scene1_ufo_qte_stab_1_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ufo_qte_stab_1_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach jumps in front of The Narrator and stabs The Dragon in the mouth.",
		"next": "narration_act3_scene1_ufo_stab_1_0"
	},
	
	"narration_act3_scene1_ufo_stab_1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon roars in pain.",
		"next": "act3_scene1_ufo_qte_stab_2"
	},
	
	"act3_scene1_ufo_qte_stab_2": {
		"type": "qte",
		"map": "Fight: Stab 2",
		"prompt": "STAB",
		"next": "act3_scene1_ufo_qte_stab_2_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ufo_qte_stab_2_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon's right eye out.",
		"next": "narration_act3_scene1_ufo_stab_2_0"
	},
	
	"narration_act3_scene1_ufo_stab_2_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon whines in pain, its blood pooling on the floor.",
		"next": "act3_scene1_ufo_qte_stab_3"
	},
	
	"act3_scene1_ufo_qte_stab_3": {
		"type": "qte",
		"map": "Fight: Stab 3",
		"prompt": "STAB",
		"next": "act3_scene1_ufo_qte_stab_3_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ufo_qte_stab_3_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon's left eye out.",
		"next": "narration_act3_scene1_ufo_stab_3_0"
	},
	
	"narration_act3_scene1_ufo_stab_3_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon cries out in pain, its blood mixing with its tears.",
		"next": "act3_scene1_ufo_qte_stab_4"
	},
	
	"act3_scene1_ufo_qte_stab_4": {
		"type": "qte",
		"map": "Fight: Stab 4",
		"prompt": "STAB",
		"next": "act3_scene1_ufo_qte_stab_4_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_ufo_qte_stab_4_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon between the eyes.",
		"next": "narration_act3_scene1_ufo_stab_4_0"
	},
	
	"narration_act3_scene1_ufo_stab_4_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon goes limp.",
		"next": "act3_scene1_ufo_choice"
	},
	
	"act3_scene1_ufo_choice": {
		"type": "choice",
		"map": "Slay the Dragon",
		"choices": [
			{
				"text": "Slay the Dragon",
				"next": "act3_scene3_uf_background"
			}
		]
	},
	
	"act3_scene2_ufb_background": {
		"type": "background",
		"background": "",
		"music": "The Chase (U->F).mp3",
		"next": "act3_scene2_ufb_meet_friends"
	},
	
	"act3_scene2_ufb_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act3_scene2_ufb_0"
	},
	
	"narrator_act3_scene2_ufb_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "THIS ISN'T HOW THIS STORY IS SUPPOSED TO GO!",
		"next": "narration_act3_scene2_ufb_0"
	},
	
	"narration_act3_scene2_ufb_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "He opens a portal to Zach's parents' house in front of you.",
		"next": "narration_act3_scene2_ufb_1"
	},
	
	"narration_act3_scene2_ufb_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "A block of ice flies through the portal.",
		"next": "act3_scene2_ufb_qte_shoot"
	},
	
	"act3_scene2_ufb_qte_shoot": {
		"type": "qte",
		"map": "Chase: Shoot",
		"prompt": "SHOOT",
		"next": "act3_scene2_ufb_qte_shoot_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_ufb_qte_shoot_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach lights the tip of an arrow on fire.",
		"next": "narration_act3_scene2_ufb_shoot_0"
	},
	
	"narration_act3_scene2_ufb_shoot_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle raises the bow and shoots the arrow, shattering the ice block.",
		"next": "act3_scene2_ufb_qte_swerve_1"
	},
	
	"act3_scene2_ufb_qte_swerve_1": {
		"type": "qte",
		"map": "Chase: Swerve 1",
		"prompt": "SWERVE",
		"next": "act3_scene2_ufb_qte_swerve_1_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_ufb_qte_swerve_1_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon swerves around the portal and keeps flying towards the sun.",
		"next": "narrator_act3_scene2_ufb_swerve_1_0"
	},
	
	"narrator_act3_scene2_ufb_swerve_1_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "YOU ARE THE HERO AND I AM THE MENTOR THAT GUIDES YOU TO VICTORY!",
		"next": "narration_act3_scene2_ufb_swerve_1_0"
	},
	
	"narration_act3_scene2_ufb_swerve_1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "He opens a portal to Zach's parents' office in front of you.",
		"next": "narration_act3_scene2_ufb_swerve_1_1"
	},
	
	"narration_act3_scene2_ufb_swerve_1_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "An icicle shoots through the portal.",
		"next": "act3_scene2_ufb_qte_block"
	},
	
	"act3_scene2_ufb_qte_block": {
		"type": "qte",
		"map": "Chase: Block",
		"prompt": "BLOCK",
		"next": "act3_scene2_ufb_qte_block_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_ufb_qte_block_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce creates a wall of fire, melting the icicle.",
		"next": "act3_scene2_ufb_qte_swerve_2"
	},
	
	"act3_scene2_ufb_qte_swerve_2": {
		"type": "qte",
		"map": "Chase: Swerve 2",
		"prompt": "SWERVE",
		"next": "act3_scene2_ufb_qte_swerve_2_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_ufb_qte_swerve_2_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon swerves around the portal and keeps flying towards the sun.",
		"next": "narrator_act3_scene2_ufb_swerve_2_0"
	},
	
	"narrator_act3_scene2_ufb_swerve_2_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "THIS ISN'T WHO WE'RE MEANT TO BE!",
		"next": "narration_act3_scene2_ufb_swerve_2_0"
	},
	
	"narration_act3_scene2_ufb_swerve_2_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal to The Statue in front of you.",
		"next": "narration_act3_scene2_ufb_swerve_2_1"
	},
	
	"narration_act3_scene2_ufb_swerve_2_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "A jagged wall of ice tears through the portal.",
		"next": "act3_scene2_ufb_qte_blast"
	},
	
	"act3_scene2_ufb_qte_blast": {
		"type": "qte",
		"map": "Chase: Blast",
		"prompt": "BLAST",
		"next": "act3_scene2_ufb_qte_blast_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_ufb_qte_blast_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach bends down to The Dragon.",
		"next": "zach_act3_scene2_ufb_blast_0"
	},
	
	"zach_act3_scene2_ufb_blast_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Ok buddy, let's do this.",
		"next": "narration_act3_scene2_ufb_blast_0"
	},
	
	"narration_act3_scene2_ufb_blast_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach and Jayce raise their hands and two bright flames appear in front of them.",
		"next": "narration_act3_scene2_ufb_blast_1"
	},
	
	"narration_act3_scene2_ufb_blast_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon growls and a bright flame appears in its mouth.",
		"next": "narration_act3_scene2_ufb_blast_2"
	},
	
	"narration_act3_scene2_ufb_blast_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Jayce, and The Dragon focus on the fire.",
		"next": "act3_scene2_blast_0"
	},
	
	"act3_scene1_hfo_background": {
		"type": "background",
		"background": "",
		"music": "The Fight (H->F).mp3",
		"next": "act3_scene1_hfo_meet_friends"
	},
	
	"act3_scene1_hfo_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narration_act3_scene1_hfo_0"
	},
	
	"narration_act3_scene1_hfo_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks the chain on its right arm and swings at Zach's dad.",
		"next": "act3_scene1_hfo_qte_shoot"
	},
	
	"act3_scene1_hfo_qte_shoot": {
		"type": "qte",
		"map": "Fight: Shoot",
		"prompt": "SHOOT",
		"next": "act3_scene1_hfo_qte_shoot_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_hfo_qte_shoot_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle shoots a fire ball at The Dragon's arm.",
		"next": "narration_act3_scene1_hfo_shoot_0"
	},
	
	"narration_act3_scene1_hfo_shoot_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "It lets out a muffled growl.",
		"next": "narration_act3_scene1_hfo_shoot_1"
	},
	
	"narration_act3_scene1_hfo_shoot_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator makes another chain of ice and binds its right arm again.",
		"next": "narration_act3_scene1_hfo_shoot_2"
	},
	
	"narration_act3_scene1_hfo_shoot_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks the chain on its left arm and swings at Zach's mom.",
		"next": "act3_scene1_hfo_qte_block"
	},
	
	"act3_scene1_hfo_qte_block": {
		"type": "qte",
		"map": "Fight: Block",
		"prompt": "BLOCK",
		"next": "act3_scene1_hfo_qte_block_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_hfo_qte_block_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce blocks The Dragon's swing with a wall of fire.",
		"next": "narration_act3_scene1_hfo_block_0"
	},
	
	"narration_act3_scene1_hfo_block_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "It lets out a muffled roar.",
		"next": "narration_act3_scene1_hfo_block_1"
	},
	
	"narration_act3_scene1_hfo_block_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator makes another chain of ice and binds its left arm again.",
		"next": "narration_act3_scene1_hfo_block_2"
	},
	
	"narration_act3_scene1_hfo_block_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon breaks its muzzle and attacks The Narrator.",
		"next": "act3_scene1_hfo_qte_stab_1"
	},
	
	"act3_scene1_hfo_qte_stab_1": {
		"type": "qte",
		"map": "Fight: Stab 1",
		"prompt": "STAB",
		"next": "act3_scene1_hfo_qte_stab_1_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_hfo_qte_stab_1_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach jumps in front of The Narrator and stabs The Dragon in the mouth.",
		"next": "narration_act3_scene1_hfo_stab_1_0"
	},
	
	"narration_act3_scene1_hfo_stab_1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon roars in pain.",
		"next": "act3_scene1_hfo_qte_stab_2"
	},
	
	"act3_scene1_hfo_qte_stab_2": {
		"type": "qte",
		"map": "Fight: Stab 2",
		"prompt": "STAB",
		"next": "act3_scene1_hfo_qte_stab_2_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_hfo_qte_stab_2_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon's right eye out.",
		"next": "narration_act3_scene1_hfo_stab_2_0"
	},
	
	"narration_act3_scene1_hfo_stab_2_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon whines in pain, its blood pooling on the floor.",
		"next": "act3_scene1_hfo_qte_stab_3"
	},
	
	"act3_scene1_hfo_qte_stab_3": {
		"type": "qte",
		"map": "Fight: Stab 3",
		"prompt": "STAB",
		"next": "act3_scene1_hfo_qte_stab_3_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_hfo_qte_stab_3_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon's left eye out.",
		"next": "narration_act3_scene1_hfo_stab_3_0"
	},
	
	"narration_act3_scene1_hfo_stab_3_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon cries out in pain, its blood mixing with its tears.",
		"next": "act3_scene1_hfo_qte_stab_4"
	},
	
	"act3_scene1_hfo_qte_stab_4": {
		"type": "qte",
		"map": "Fight: Stab 4",
		"prompt": "STAB",
		"next": "act3_scene1_hfo_qte_stab_4_hit",
		"fail": "act3_scene3_fail_background"
	},
	
	"act3_scene1_hfo_qte_stab_4_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach stabs The Dragon between the eyes.",
		"next": "narration_act3_scene1_hfo_stab_4_0"
	},
	
	"narration_act3_scene1_hfo_stab_4_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon goes limp.",
		"next": "act3_scene1_hfo_choice"
	},
	
	"act3_scene1_hfo_choice": {
		"type": "choice",
		"map": "Slay the Dragon",
		"choices": [
			{
				"text": "Slay the Dragon",
				"next": "act3_scene3_hf_background"
			}
		]
	},
	
	"act3_scene2_hfb_background": {
		"type": "background",
		"background": "",
		"music": "The Chase (H->F).mp3",
		"next": "act3_scene2_hfb_meet_friends"
	},
	
	"act3_scene2_hfb_meet_friends": {
		"type": "character",
		"character": "res://Assets/Characters/meet_friends.png",
		"position": {
			"x": 700,
			"y": 425
		},
		"next": "narrator_act3_scene2_hfb_0"
	},
	
	"narrator_act3_scene2_hfb_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "THIS ISN'T HOW THIS STORY IS SUPPOSED TO GO!",
		"next": "narration_act3_scene2_hfb_0"
	},
	
	"narration_act3_scene2_hfb_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "He opens a portal to Zach's parents' house in front of you.",
		"next": "narration_act3_scene2_hfb_1"
	},
	
	"narration_act3_scene2_hfb_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "A block of ice flies through the portal.",
		"next": "act3_scene2_hfb_qte_shoot"
	},
	
	"act3_scene2_hfb_qte_shoot": {
		"type": "qte",
		"map": "Chase: Shoot",
		"prompt": "SHOOT",
		"next": "act3_scene2_hfb_qte_shoot_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_hfb_qte_shoot_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Kyle shoots a fire ball, melting the ice block.",
		"next": "act3_scene2_hfb_qte_swerve_1"
	},
	
	"act3_scene2_hfb_qte_swerve_1": {
		"type": "qte",
		"map": "Chase: Swerve 1",
		"prompt": "SWERVE",
		"next": "act3_scene2_hfb_qte_swerve_1_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_hfb_qte_swerve_1_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon swerves around the portal and keeps flying towards the sun.",
		"next": "narrator_act3_scene2_hfb_swerve_1_0"
	},
	
	"narrator_act3_scene2_hfb_swerve_1_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "YOU ARE THE HERO AND I AM THE MENTOR THAT GUIDES YOU TO VICTORY!",
		"next": "narration_act3_scene2_hfb_swerve_1_0"
	},
	
	"narration_act3_scene2_hfb_swerve_1_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "He opens a portal to Zach's parents' office in front of you.",
		"next": "narration_act3_scene2_hfb_swerve_1_1"
	},
	
	"narration_act3_scene2_hfb_swerve_1_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "An icicle shoots through the portal.",
		"next": "act3_scene2_hfb_qte_block"
	},
	
	"act3_scene2_hfb_qte_block": {
		"type": "qte",
		"map": "Chase: Block",
		"prompt": "BLOCK",
		"next": "act3_scene2_hfb_qte_block_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_hfb_qte_block_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Jayce creates a wall of fire, melting the icicle.",
		"next": "act3_scene2_hfb_qte_swerve_2"
	},
	
	"act3_scene2_hfb_qte_swerve_2": {
		"type": "qte",
		"map": "Chase: Swerve 2",
		"prompt": "SWERVE",
		"next": "act3_scene2_hfb_qte_swerve_2_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_hfb_qte_swerve_2_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon swerves around the portal and keeps flying towards the sun.",
		"next": "narrator_act3_scene2_hfb_swerve_2_0"
	},
	
	"narrator_act3_scene2_hfb_swerve_2_0": {
		"type": "dialogue",
		"speaker": "The Narrator",
		"text": "THIS ISN'T WHO WE'RE MEANT TO BE!",
		"next": "narration_act3_scene2_hfb_swerve_2_0"
	},
	
	"narration_act3_scene2_hfb_swerve_2_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Narrator opens a portal to The Statue in front of you.",
		"next": "narration_act3_scene2_hfb_swerve_2_1"
	},
	
	"narration_act3_scene2_hfb_swerve_2_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "A jagged wall of ice tears through the portal.",
		"next": "act3_scene2_hfb_qte_blast"
	},
	
	"act3_scene2_hfb_qte_blast": {
		"type": "qte",
		"map": "Chase: Blast",
		"prompt": "BLAST",
		"next": "act3_scene2_hfb_qte_blast_hit",
		"fail": "act3_scene3_caught_background"
	},
	
	"act3_scene2_hfb_qte_blast_hit": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach bends down to The Dragon.",
		"next": "zach_act3_scene2_hfb_blast_0"
	},
	
	"zach_act3_scene2_hfb_blast_0": {
		"type": "dialogue",
		"speaker": "Zach",
		"text": "Ok buddy, let's do this.",
		"next": "narration_act3_scene2_hfb_blast_0"
	},
	
	"narration_act3_scene2_hfb_blast_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, and Jayce raise their hands and three bright flames appear in front of them.",
		"next": "narration_act3_scene2_hfb_blast_1"
	},
	
	"narration_act3_scene2_hfb_blast_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "The Dragon growls and a bright flame appears in its mouth.",
		"next": "narration_act3_scene2_hfb_blast_2"
	},
	
	"narration_act3_scene2_hfb_blast_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, Jayce, and The Dragon focus on the fire.",
		"next": "act3_scene2_blast_0"
	},
	
	"act3_scene2_blast_0": {
		"type": "dialogue",
		"speaker": "",
		"text": "The fire grows.",
		"next": "act3_scene2_blast_1"
	},
	
	"act3_scene2_blast_1": {
		"type": "dialogue",
		"speaker": "",
		"text": "It feels warm.",
		"next": "act3_scene2_blast_2"
	},
	
	"act3_scene2_blast_2": {
		"type": "dialogue",
		"speaker": "",
		"text": "Then hot.",
		"next": "act3_scene2_blast_3"
	},
	
	"act3_scene2_blast_3": {
		"type": "dialogue",
		"speaker": "",
		"text": "Then hotter and hotter.",
		"next": "act3_scene2_blast_4"
	},
	
	"act3_scene2_blast_4": {
		"type": "dialogue",
		"speaker": "",
		"text": "Finally they fire a massive fire blast towards the Narrator, melting the wall of ice in seconds.",
		"next": "act3_scene2_blast_5"
	},
	
	"act3_scene2_blast_5": {
		"type": "dialogue",
		"speaker": "",
		"text": "The blast throws The Narrator backwards into The Statue.",
		"next": "act3_scene2_blast_6"
	},
	
	"act3_scene2_blast_6": {
		"type": "dialogue",
		"speaker": "",
		"text": "The middle figure's right hand cracks.",
		"next": "act3_scene2_blast_7"
	},
	
	"act3_scene2_blast_7": {
		"type": "dialogue",
		"speaker": "",
		"text": "The portal closes.",
		"next": "act3_scene2_blast_8"
	},
	
	"act3_scene2_blast_8": {
		"type": "dialogue",
		"speaker": "",
		"text": "Zach, Kyle, Jayce, and The Dragon fly into the sunrise.",
		"next": "act3_scene2_choice"
	},
	
	"act3_scene2_choice": {
		"type": "choice",
		"map": "Escape the Narrator",
		"choices": [
			{
				"text": "Escape the Narrator",
				"next": "act3_scene3_escape_background"
			}
		]
	}
}
