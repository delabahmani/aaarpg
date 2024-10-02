class_name State extends Node

## Stores a reference to the player 
static var player: Player



func _ready() -> void:
	pass # Replace with function body.


## When player enters State
func Enter() -> void:
	pass


## When player exits State
func Exit() -> void:
	pass

## What happens during the _process update in this State
func Process(_delta : float) -> State:
	return null


## What happens during the _physics_process update in this State
func Physics(_delta : float) -> State:
	return null


## What happens with input events in this State
func HandleInput(_event : InputEvent) -> State:
	return null
