# Art checks for the story (R4). A bad image path crashes world.gd mid-scene,
# so every path in the story data must load.
extends GutTest

const H = preload("res://test/story_helpers.gd")

# Background nodes that are allowed to have no image (black screen) on purpose.
# Add a node ID here only if the art team confirms it is intentional.
const ALLOWED_EMPTY_BACKGROUNDS := []

var nodes: Dictionary


func before_each():
	nodes = H.all_nodes()


func _nodes_of_type(type: String) -> Array:
	return nodes.keys().filter(func(id): return nodes[id].get("type") == type)


func test_every_background_image_is_set_and_exists():
	var problems := []
	for id in _nodes_of_type("background"):
		var path: String = nodes[id].get("background", "")
		if path == "":
			if not id in ALLOWED_EMPTY_BACKGROUNDS:
				problems.append("%s: no background image (shows a black screen)" % id)
		elif not ResourceLoader.exists(path):
			problems.append("%s: file not found '%s'" % [id, path])
		elif not load(path) is Texture2D:
			problems.append("%s: '%s' is not an image" % [id, path])
	assert_true(problems.is_empty(), H.report(problems))


func test_every_character_image_exists():
	var problems := []
	for id in _nodes_of_type("character"):
		var path: String = nodes[id].get("character", "")
		if path == "" or not ResourceLoader.exists(path):
			problems.append("%s: file not found '%s'" % [id, path])
		elif not load(path) is Texture2D:
			problems.append("%s: '%s' is not an image" % [id, path])
	assert_true(problems.is_empty(), H.report(problems))


func test_every_character_image_has_visible_pixels():
	# world.gd silently skips a fully transparent image, so it would never show.
	var problems := []
	for id in _nodes_of_type("character"):
		var path: String = nodes[id].get("character", "")
		if not ResourceLoader.exists(path):
			continue  # reported by the test above
		var image := (load(path) as Texture2D).get_image()
		if image == null or image.get_used_rect().size == Vector2i.ZERO:
			problems.append("%s: '%s' is fully transparent" % [id, path])
	assert_true(problems.is_empty(), H.report(problems))


func test_character_positions_are_on_screen():
	var width: int = ProjectSettings.get_setting("display/window/size/viewport_width")
	var height: int = ProjectSettings.get_setting("display/window/size/viewport_height")
	var problems := []
	for id in _nodes_of_type("character"):
		var pos = nodes[id].get("position", {})
		if not pos is Dictionary:
			continue  # reported by test_story_data
		var x = pos.get("x", -1)
		var y = pos.get("y", -1)
		if x < 0 or x > width or y < 0 or y > height:
			problems.append("%s: position (%s, %s) is off a %dx%d screen" % [id, x, y, width, height])
	assert_true(problems.is_empty(), H.report(problems))
