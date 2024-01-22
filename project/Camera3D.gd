extends Camera3D

var radius: float = 8.6
var time = 0.0;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta * 1.0;
	var x = radius * cos(time);
	var z = radius * sin(time);
	global_position = Vector3(x, global_position.y, z)
	look_at(Vector3(0, 0, 0))
	
