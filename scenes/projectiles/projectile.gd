extends Node2D
class_name  Projectile

@onready var hitbox: HitboxComponent = $HitboxComponent


var velocity: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += velocity * delta


func set_projectile(velocity: Vector2, damage: float, critical: bool, knockback: float, unit: Node2D) -> void:
	self.velocity = velocity
	rotation = velocity.angle()
	if hitbox:
		hitbox.setup(damage, critical, knockback, unit)

	
func _on_visible_on_screen_enabler_2d_screen_exited() -> void:
	queue_free()


func _on_hitbox_component_on_hit_hurtbox(hurtbox: HurtboxComponent) -> void:
	queue_free()
