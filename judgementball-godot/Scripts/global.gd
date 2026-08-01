extends Node


var score : float = 0
signal changeScore(addScore: float)

signal changeFlipperLength
signal hitBumper

signal flipperUp
signal flipperDown

signal openPaper(text: String)

var clues: int = 0
signal updateClues
var currentCase : int = 1

var cases: Dictionary = {
	"1" : {
				"1" : "Tatort so und so",
				"2" : "Waffe so und so",
				"3" : "Motiv ja blabla",
				"4" : "Alibi habibi",
				"5" : "Zeugen meugen",
				"Guilty" : true,
				"Name" : "Tobsucht"
				}
}
