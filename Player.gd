extends Node2D
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event is InputEventKey:
		var viewport_rect = get_viewport_rect()
		if event.scancode == KEY_LEFT:
			if $Gardener.position.x > -10:
				$Gardener.position -= Vector2(8, 0)
			else:
				$Gardener.position = Vector2((viewport_rect.size.x+10),400)
		elif event.scancode == KEY_RIGHT:
			if $Gardener.position.x < viewport_rect.size.x+10:
				$Gardener.position += Vector2(8, 0)
			else:
				$Gardener.position = Vector2(0,400)
		elif event.scancode == KEY_UP:
			if $Gardener.position.y > 0:
				$Gardener.position -= Vector2(0, 8) 
		elif event.scancode == KEY_DOWN:
			if $Gardener.position.y < viewport_rect.size.y:
				$Gardener.position += Vector2(0, 8) 


