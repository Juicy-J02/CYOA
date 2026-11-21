extends Node

var story_data = {}

func _ready():
	story_data.merge(Scene1.get_nodes())
	story_data.merge(Scene2.get_nodes())
	story_data.merge(Scene3.get_nodes())
	story_data.merge(Scene4.get_nodes())
	story_data.merge(Scene5.get_nodes())
	story_data.merge(Scene6.get_nodes())
	story_data.merge(Scene7.get_nodes())
	story_data.merge(Scene8.get_nodes())
