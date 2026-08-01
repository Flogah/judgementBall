extends Node


var score : float = 0
signal changeScore(addScore: float)

signal changeFlipperLength
signal hitBumper

signal openPaper(text: String)

var clues: int = 0
signal updateClues
