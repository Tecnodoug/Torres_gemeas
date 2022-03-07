extends RigidBody2D

var global


# Called when the node enters the scene tree for the first time.
func _ready():
	global = get_tree().current_scene



func _on_Area2D_body_entered(body):
	if body.name == "player":
		global.count_cash()
		queue_free()
		



func _on_Area2D_area_entered(area):
	if area.name =="Limite_objetos":
		queue_free()
		
