extends AudioStreamPlayer3D


@export var streams : Array[AudioStream]

func _ready() -> void:
	Global.connect("pickUpPhone", playRandom)

func playRandom():
	var track = randi_range(0, streams.size()-1)
	play_track(track)

func play_track(id : int) -> void:
	stop()
	stream = streams[id]
	play()
	
	
