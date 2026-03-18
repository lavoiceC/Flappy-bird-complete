extends Area2D

var flap_power:int = 5 # set the flapping speed
var grav:float = 4 # set the gravity effect up and down
var velocity:float = 0 # sets speed
var rotationSpeed: float = 4 # set rotation speed, the amount of degrees in a circle is 360. 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = position.y + velocity # set the position of the entire object. adds upon velocity. 
	#velocity = velocity + grav # velocity should always be add to gravity 
	
	velocity += grav * delta
	print(position.y)
	if Input.is_action_just_pressed("Flap"):
		velocity = -flap_power # set velocity subtract flap power to make it positive
		
	if velocity >= 0: # velocity is greater than equal to zero
		rotation += deg_to_rad(rotationSpeed)
		# rotation += 1  # Rotate left because positive go down 

	elif velocity < 0: # velocity is less than 0 
		rotation -= deg_to_rad(rotationSpeed)
		# rotation -= 1 # Rotate right because negative go up 
	else:
		return 
	rotation = clamp(rotation, deg_to_rad(-30), deg_to_rad(30))
		
# instruction for getting a key assigned.
# 1. Click Project in top left corner 
# 2. Click under in project Setting 
# 3. Assign a variable to it and key
# # instruction for window position 
# 1. Click project 
# 2. in general click on window 
# 3. in viewpoint set it 600 to 800ls
