extends Node2D
var scroll_speed:float = 300.0
@onready var screen_width = get_window().size.x
@onready var pipes = preload("res://pipes.tscn") # preload the pipe for the function
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	
	$BG1.position = Vector2(0, 0) 
	$BG2.position = Vector2(screen_width, 0)
	$Timer.start(3)
#
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$BG1.position.x = $BG1.position.x - 3
	$BG2.position.x -= scroll_speed * delta
	#$BG1.position.x = $BG1.position.x + 3
	
	if $BG1.position.x <= - screen_width:
		$BG1.position.x = screen_width
	else: return
	if $BG2.position.x <= -screen_width:
		$BG2.position.x = screen_width
		
func create_pipes() -> void:
	var new_pipes = pipes.instantiate()
	add_child(new_pipes)
	new_pipes.position.x = screen_width
	
	
  


func _on_timer_timeout() -> void:
	create_pipes()
	$Timer.start(3)
	
