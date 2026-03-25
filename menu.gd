extends Node2D
signal start_game
signal quit_game



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$StartGame.text = "Start the Game"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_start_game_pressed() -> void:
	emit_signal("start_game")
	
func _on_quit_game_pressed() -> void:
	emit_signal("quit_game")
