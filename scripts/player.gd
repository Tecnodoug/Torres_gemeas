extends KinematicBody2D

var dir_x
var dir_y
var nova_dir_x #variaver que recebrá nova posição do touch
var nova_dir_y #variaver que recebrá nova posição do touch
var touch_pos = Vector2() #variavel para armazenar a posição do touch
var area_touch = false #variavel para sentir se o touch foi pressionado

func _ready():
	pass # Replace with function body.

func _on_TouchScreenButton_pressed():
	area_touch = true

func _on_TouchScreenButton_released():
	area_touch = false

func _input(event):
	if area_touch == true:
		if event is InputEventScreenTouch and event.is_pressed(): # confere se o touch está pressionado
			touch_pos = event.get_position()
			dir_x = touch_pos.x - position.x
			#dir_y = touch_pos.y - position.y # habilitar se quiser utilizar o eixo y
		elif event is InputEventScreenDrag:
			touch_pos = event.get_position()
			nova_dir_x = touch_pos.x - dir_x
			if nova_dir_x > 290:
				nova_dir_x = 290 #delimita para não fugir da tela pela direita
			if nova_dir_x < 30:
				nova_dir_x = 30 #delimita para não fugir da tela pela esquerda
			#nova_dir_y = touch_pos.y - dir_y # habilitar se quiser utilizar o eixo y
			set_position(Vector2(nova_dir_x, 450)) # substituir o 450 por "nova_dir_y se quiser usar eixo y
			
		
		
