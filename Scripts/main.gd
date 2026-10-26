extends Node

func _ready():
	var state = SaveManager.pending_load
	SaveManager.pending_load = {}

	# Ignore states that point at a story node that was renamed or removed.
	if not state.is_empty() and StoryData.story_data.has(state.node_id):
		StoryManager.continue_story(state)
		return

	StoryManager.start_story("act1_scene1_background")
