extends MeshInstance3D

var tween : Tween

@onready var up : Node3D = $"../handlePosActiveUp"
@onready var down : Node3D = $"../handlePosActiveDown"
@export var transition_duration: float = 2
var kill = false
# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#Global.connect("pickUpPhone", animateUp)
#
#
#func animateUp():
	#if tween:
		#tween.kill()
	#tween = create_tween().set_parallel(true)
	#tween.set_trans(Tween.TRANS_CUBIC) 
	#tween.set_ease(Tween.EASE_IN_OUT)
#
	#tween.tween_property(
		#self, 
		#"global_transform", 
		#up.global_transform, 
		#transition_duration
	#)
	#if !kill:
		#tween.finished.connect(func(): animateDown())
#
#func animateDown():
	#if tween:
		#tween.kill()
	#tween = create_tween().set_parallel(true)
	#tween.set_trans(Tween.TRANS_CUBIC) 
	#tween.set_ease(Tween.EASE_IN_OUT)
#
	#tween.tween_property(
		#self, 
		#"global_transform", 
		#down.global_transform, 
		#transition_duration
	#)
	#if !kill:
		#tween.finished.connect(func(): animateUp())
#
#
#
#func _on_telefonate_finished() -> void:
	#kill = true
