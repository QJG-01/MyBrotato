extends Node

enum Sound {
	ENEMY_HIT,
	FIRE,
	PUNCH,
	UI
}

var sound_dictionary: Dictionary[Sound, Resource] = {
	Sound.ENEMY_HIT: preload("uid://blonjlaa37md0"),
	Sound.FIRE: preload("uid://g72hyxdnaath"),
	Sound.PUNCH: preload("uid://bah5akwld6a1"),
	Sound.UI: preload("uid://6nolwqlami52")
}

@export var stream_players: Array[AudioStreamPlayer]

func play_sound(type: int) -> void:
	var stream := get_free_stream_player()
	if not stream:
		return
	
	var audio := sound_dictionary[type]
	stream.stream = audio
	stream.pitch_scale = randf_range(0.8, 1.3)
	stream.play()

func get_free_stream_player() -> AudioStreamPlayer:
	for stream: AudioStreamPlayer in stream_players:
		if not stream.playing:
			return stream
	
	return null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
