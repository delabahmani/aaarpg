class_name State_Walk extends State

@export var move_speed : float = 100.0
@onready var idle: State = $"../Idle"



## When player enters State
func Enter() -> void:
	player.UpdateAnimation("walk")
	pass


## When player exits State
func Exit() -> void:
	pass


## What happens during the _process update in this State
func Process(_delta : float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		player.UpdateAnimation("walk")
	
	return null


## What happens during the _physics_process update in this State
func Physics(_delta : float) -> State:
	return null


## What happens with input events in this State
func HandleInput(_event : InputEvent) -> State:
	return null
