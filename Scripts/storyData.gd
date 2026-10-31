extends Node

var story_data = {}

func _ready():
	story_data.merge(Scene1.get_nodes())
	story_data.merge(Scene2.get_nodes())
	story_data.merge(Scene3.get_nodes())
