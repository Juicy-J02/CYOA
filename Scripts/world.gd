extends Node2D

@onready var background = $Background

func _ready():
	StoryManager.background_request.connect(update_background)
	StoryManager.character_request.connect(insert_character)

func update_background(bg):
	for child in get_children():
		if child is Sprite2D and child != background:
			child.queue_free()
	
	if bg == "":
		background.texture = null
	else:
		background.texture = load(bg)

func insert_character(character, character_position):
	var texture = load(character) as Texture2D
	var used_rect = texture.get_image().get_used_rect()

	if used_rect.size == Vector2i.ZERO:
		return

	var cropped_texture = AtlasTexture.new()
	cropped_texture.atlas = texture
	cropped_texture.region = Rect2(used_rect)

	var sprite = Sprite2D.new()
	sprite.texture = cropped_texture
	sprite.position = character_position

	var max_size = Vector2(400, 500)
	var visible_size = Vector2(used_rect.size)
	var scale_factor = min(
		max_size.x / visible_size.x,
		max_size.y / visible_size.y
	)

	sprite.scale = Vector2.ONE * scale_factor
	add_child(sprite)
