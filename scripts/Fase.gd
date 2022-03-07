extends Node2D

var score = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	$HUD/Score.text="Score: "+ str(score) #carrega score no inicio do jogo
	
func count_score():
	score += 1
	$HUD/Score.text = "Score: " + str(score) #Altera valor do score no decorrer do jogo



