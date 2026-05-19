extends Button
class_name ItemCard

signal on_item_card_selected(card: ItemCard)

@export var item: ItemBase: set = _set_item

@onready var item_icon: TextureRect = $ItemIcon

func _set_item(value: ItemBase) -> void:
	item = value
	item_icon.texture = item.item_icon
	
	var style := Global.get_tier_style(item.item_tier)
	add_theme_stylebox_override("normal", style)
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_item_card_pressed() -> void:
	pass # Replace with function body.


func _on_pressed() -> void:
	SoundManager.play_sound(SoundManager.Sound.UI)
	if item.item_tier == ItemBase.ItemType.WEAPON:
		on_item_card_selected.emit(self)
