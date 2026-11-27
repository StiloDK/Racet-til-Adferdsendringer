extends Area2D

var player_nearby = false

@export_file("*.tscn") var next_scene: String

func _ready() -> void:
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body: Node2D) -> void:
	player_nearby = true
	print("Player nearby - press E")

func _on_body_exited(body: Node2D) -> void:
	player_nearby = false

func _process(_delta: float) -> void:
	if player_nearby and Input.is_key_pressed(KEY_E):
		get_tree().change_scene_to_file(next_scene)
