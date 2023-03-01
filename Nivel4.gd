extends Node2D
func _ready():
	marcador.connect("game_over",self,"gameOver")
	pause_mode=Node.PAUSE_MODE_PROCESS
func gameOver():
	$CenterContainer/LevelLabel.text="GAME OVER"
	$CaraTriste.visible=true
	get_tree().change_scene("res://marcador.tscn")
