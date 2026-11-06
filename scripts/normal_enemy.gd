extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_play_pressed() -> void:

	
	inGameVariables.enemy_choice = inGameVariables.Choice.values().pick_random()
	
	
	if inGameVariables.player_choice == inGameVariables.enemy_choice:
		inGameVariables.result = "draw"
		
	elif inGameVariables.player_choice == inGameVariables.Choice.ROCK and inGameVariables.enemy_choice == inGameVariables.Choice.SCISSORS:
		inGameVariables.result = "win"
		
	elif inGameVariables.player_choice == inGameVariables.Choice.ROCK and inGameVariables.enemy_choice == inGameVariables.Choice.PAPER:
		inGameVariables.result = "lose"
		inGameVariables.player_HP -= 1
		
	elif inGameVariables.player_choice == inGameVariables.Choice.PAPER and inGameVariables.enemy_choice == inGameVariables.Choice.ROCK:
		inGameVariables.result = "win"
		
	elif inGameVariables.player_choice == inGameVariables.Choice.PAPER and inGameVariables.enemy_choice == inGameVariables.Choice.SCISSORS:
		inGameVariables.result = "lose"
		inGameVariables.player_HP -= 1
		
	elif inGameVariables.player_choice == inGameVariables.Choice.SCISSORS and inGameVariables.enemy_choice == inGameVariables.Choice.ROCK:
		inGameVariables.result = "lose"
		inGameVariables.player_HP -= 1
		
	elif inGameVariables.player_choice == inGameVariables.Choice.SCISSORS and inGameVariables.enemy_choice == inGameVariables.Choice.PAPER:
		inGameVariables.result = "win"
		
		
		
		
