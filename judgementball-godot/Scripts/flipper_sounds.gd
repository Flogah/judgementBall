extends AudioStreamPlayer3D


@export var streams : Array[AudioStream]

func _ready() -> void:
	Global.connect("flipperDown", playDown)
	Global.connect("flipperUp", playUp)
	

func playUp():
	play_track(0)
	
func playDown():
	play_track(1)

func play_track(id : int) -> void:
	set_pitch_scale(randf_range(0.9, 1.2))
	stop()
	stream = streams[id]
	play()
