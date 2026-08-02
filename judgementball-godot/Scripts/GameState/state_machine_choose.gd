class_name StateMachine
extends Node

@export var initalState : State

var currentState : State
var states: Dictionary = {}

func _ready() -> void:
	for child in get_children():
		if child is State:
			states[child.name.to_lower()] = child
			child.Transitioned.connect(on_child_transition)
	if initalState:
		initalState.Enter()
		currentState = initalState
	print(currentState)

func _process(delta: float) -> void:
	if currentState:
		currentState.Update(delta)

func _physics_process(delta: float) -> void:
	if currentState:
		currentState.Physics_Update(delta)

func on_child_transition(state, new_state_name):
	if state != currentState:
		return
	var newState = states.get(new_state_name.to_lower())
	if !newState:
		return
	if currentState:
		currentState.Exit()
	
	currentState = newState
		
	newState.Enter()
