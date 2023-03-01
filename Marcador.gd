extends Node2D
signal game_over()
const templateContador = "{0} ] {1} - {2}    {3}"
var vidas = 3
var nivel = 1
const nivelActual = "res://Nivel{0}.tscn"
var nivelSiguiente = ""
var puntos = 0
var monedasTotales = 8
func _ready():
	pause_mode=Node.PAUSE_MODE_PROCESS
func _process(delta):
	$Contador.text = templateContador.format([puntos, monedasTotales, vidas, nivel - 1])
	$Timer.text = str(int($Timer2.time_left))
func _on_Timer2_timeout():
	if nivel < 5:
		nivelSiguiente = nivelActual.format([nivel])
		get_tree().change_scene(nivelSiguiente)
		nivel += 1
	else:
		emit_signal("game_over")
		$Button.visible=true
		$Timer2.stop()
		get_tree().paused=true
	print(nivelSiguiente)
func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_P:
			print("Tecla P presionada")
func _on_Button_pressed():
	get_tree().paused=false
	get_tree().change_scene("res://Inicio.tscn");
	print("Hola")
