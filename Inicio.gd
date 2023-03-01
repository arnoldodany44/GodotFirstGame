extends Node2D
signal newGame()
func _ready():
	pause_mode=Node.PAUSE_MODE_PROCESS
	emit_signal("newGame")
