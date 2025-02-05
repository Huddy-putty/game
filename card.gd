extends Control

@export var backs: Array[Texture2D] = []
@export var fronts: Array[Texture2D] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_front(number: String, family: String):
	#	("2", "diamond")
	print(number)
	print(family)
	$Front.texture = fronts[1]
	if family == "clubs":
		$Front.texture = fronts[int(number) - 1]
	if family == "diamonds":
		$Front.texture = fronts[int(number) + 13 - 1]
	if family == "hearts":
		$Front.texture = fronts[int(number) + 26 - 1]
	if family == "spades":
		$Front.texture = fronts[int(number) + 38]
func set_back(id: String):
	
	pass
