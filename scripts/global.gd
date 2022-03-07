extends Node

var Score: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	
func add_Score(amount: int) -> void:
	Score += amount


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
