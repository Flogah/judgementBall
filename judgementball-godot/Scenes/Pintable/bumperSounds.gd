extends AudioStreamPlayer3D


@export var streams : Array[AudioStream]

func _ready() -> void:
	Global.connect("hitBumper", playRandom)

func playRandom():
	var track = randi_range(0, streams.size()-1)
	play_track(track)

func play_track(id : int) -> void:
	set_pitch_scale(randf_range(0.9, 1.2))
	stop()
	stream = streams[id]
	play()
