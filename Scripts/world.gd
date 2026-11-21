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
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	sprite.position = character_position

	add_child(sprite)
