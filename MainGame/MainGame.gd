extends Control

export(int) var countdownMax
var currentTimer


func _ready():
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer - 1
		print(currentTimer)
	$HUD/Countdown.text = str("Game Over")
	# storing in arrays
	GlobalVariables.previousScores.push_front( GlobalVariables.scoringInformation["currentScore"])
	print(GlobalVariables.previousScores)
	get_tree().change_scene("res://endscene.tscn")
func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
