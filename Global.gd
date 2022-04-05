extends Node

var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var enemyBulletInstanceCount = 0

var previousScores = []

var scoringInformation = {
	"currentScore": -000,
	"currentPlayer": "User",
	"highScore": 1500000,
	"highScorePlayersName" : "Winner"
}

# This is updated Code
