extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		rotation.y += delta
	if Input.is_key_pressed(KEY_RIGHT):
		rotation.y -= delta
	if Input.is_key_pressed(KEY_UP):
		rotation.x += delta
	if Input.is_key_pressed(KEY_DOWN):
		rotation.x -= delta
