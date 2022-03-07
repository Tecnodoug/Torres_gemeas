extends Position2D


export (PackedScene) var spawnScene #exporta variavel paa selecionar a cena
onready var spawnReference = load (spawnScene.get_path())

export (NodePath) var timerPath # exporta variavel para selecionar o tempo
onready var timerNode = get_node(timerPath)

export (float) var min_tempo_espera
export (float) var max_tempo_espera


# Called when the node enters the scene tree for the first time.
func _ready():
	$Animation.play("spawner_animation") #da play na animação
	randomize()
	timerNode.set_wait_time(rand_range(min_tempo_espera, max_tempo_espera))
	timerNode.start()


func _on_Timer_timeout():
	var spawnInstance = spawnReference.instance()
	
	get_parent().add_child(spawnInstance)
	spawnInstance.set_global_position(get_global_position())
	
	timerNode.set_wait_time(rand_range(min_tempo_espera, max_tempo_espera))
	timerNode.start()
	
