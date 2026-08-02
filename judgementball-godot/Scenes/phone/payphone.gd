extends Interactable


@onready var handle: MeshInstance3D = $Handle
@onready var handlePosActive: Node3D = $handlePosActive
@onready var handlePosPassive: Node3D = $handlePosPassive
@export var transition_duration: float = 2.0
var tween : Tween

var phoneActive: bool = false
	
func interact():
	CameraSignal.changeToTelephone.emit()
	if !phoneActive:
		if tween:
			tween.kill()
		tween = create_tween().set_parallel(true)
		tween.set_trans(Tween.TRANS_CUBIC) 
		tween.set_ease(Tween.EASE_IN_OUT)

		tween.tween_property(
			handle, 
			"global_transform", 
			handlePosActive.global_transform, 
			transition_duration
		)
		phoneActive = true
		tween.finished.connect(func(): Global.pickUpPhone.emit())


func _on_telefonate_finished() -> void:
	if tween:
		tween.kill()
	tween = create_tween().set_parallel(true)
	tween.set_trans(Tween.TRANS_CUBIC) 
	tween.set_ease(Tween.EASE_IN_OUT)

	tween.tween_property(
		handle, 
		"global_transform", 
		handlePosPassive.global_transform, 
		transition_duration
		)
	phoneActive = false
	tween.finished.connect(func(): CameraSignal.changeToFree.emit())
