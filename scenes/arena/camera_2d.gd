extends Camera2D
class_name Camera

@export var bounds_sprite_path: NodePath = NodePath("../Ground")
@export var auto_zoom_to_bounds := true

@onready var bounds_sprite := get_node_or_null(bounds_sprite_path) as Sprite2D


func _ready() -> void:
	if bounds_sprite:
		apply_bounds_from_sprite(bounds_sprite)


func _process(delta: float) -> void:
	if is_instance_valid(Global.player):
		global_position = Global.player.global_position


func apply_bounds_from_sprite(sprite: Sprite2D) -> void:
	if sprite.texture == null:
		return

	var world_size := sprite.texture.get_size() * sprite.global_scale.abs()
	var half_size := world_size * 0.5
	var center := sprite.global_position

	limit_left = floori(center.x - half_size.x)
	limit_right = ceili(center.x + half_size.x)
	limit_top = floori(center.y - half_size.y)
	limit_bottom = ceili(center.y + half_size.y)

	if auto_zoom_to_bounds:
		var viewport_size := get_viewport_rect().size
		var required_zoom := maxf(viewport_size.x / world_size.x, viewport_size.y / world_size.y)
		zoom = Vector2(max(zoom.x, required_zoom), max(zoom.y, required_zoom))
