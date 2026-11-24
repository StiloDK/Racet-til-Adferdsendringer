extends Area2D





func _on_body_entered(body):
	queue_free() # destoys the gameobject
	print("Plus one coin")
