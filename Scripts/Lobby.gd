extends Control

func _ready():
	get_tree().connect("connected_to_server", self, "connected")

func connected():
	#print("CONNECTED")
	if not Net.is_host:
		rpc("begin_game")
		begin_game()

remote func begin_game():
	get_tree().change_scene("res://Scenes/Game.tscn")
