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
				"1" : "Das Opfer wurde im Gruppenraum der Station E der geschlossenen Psychiatrischen Institutsambulanz Hannover aufgefunden. Jeweils der Boden und die Wände sind Blutverschmiert und verwüstet.",
				"2" : "Trotz kompletter Absuchung des Parameters wurde keine Waffe aufgefunden.",
				"3" : "Das Opfer war bekannt dafür kleptomanische Züge zu haben und hätte schon öfter den Angeklagten bestohlen.",
				"4" : "Angeklagter behauptet er wäre draußen 'Eene Roochen' gewesen.",
				"5" : "Das Opfer ist eine gotisch bekleidete Patientin. Ihre Zähne ausgeschlagen, das Gesicht zugeschwollen. Blut und Hautfetzen wurden unter den Nägeln der Patientin gefunden.",
				"Guilty" : true,
				},
	"2" : {
				"1" : "Als einzige Waffe wurde am Tatort ein Seil gefunden, welches um das Bein des Opfers gewickelt war.",
				"2" : "Der Angeklagte hat seit Monaten einen Nachbarsstreit mit dem Opfer. Andere Anwohner berichten, dass es immer aggresiver und lauter wurde.",
				"3" : "Das Opfer wurde nackt auf dem Bürgersteig unter seiner Wohnung aufgefunden.",
				"4" : "Der Angeklagte betont zu dieser Zeit Fern gesehen zu haben.",
				"5" : "Bei dem Opfer handelt es sich um den Nachbar des Angeklagten. In der Umgebung ist er als der 'Nackte Nachbar' bekannt. Todesursache ist ein Schädeltrauma.",
				"Guilty" : true,
				},
	"3" : {
				"1" : "Der Angeklagte ist der Enkel des Opfers, welcher bekannt dafür ist teure Marken zu tragen. Er lebt beim Opfer und ist dessen Alleinerbe.",
				"2" : "Das Opfer ist die Oma des Angeklagten. Todesursache von außen nicht erkennbar.",
				"3" : "Neben dem Opfer wurden Herzmedikamente gefunden. Tests bestätigen eine erhöhte Menge dieser Medikamente im Körper des Opfers.",
				"4" : "Das Opfer wurde liegend und zugedeckt im eigenen Bett aufgefunden. Das Zimmer erscheint sauber und ordentlich.",
				"5" : "Der Angeklagte habe die Polizei gerufen, nachdem dieser von der Schule heimkehrte. Im Gepäck habe er eine Mathearbeit mit der Note '5'.",
				"Guilty" : false,
				},
	"4" : {
				"1" : "Bei dem Opfer handelt es sich um den Camp-Aufseher, welcher das Camp im Blick behält. Sein Kopf wurde noch nicht gefunden.",
				"2" : "Das Opfer ist dafür bekannt sehr streng und unbeliebt bei den Campern zu sein. Der Angeklagte wurde zuletzt von ihm bestraft.",
				"3" : "Eine blutige Axt, welche als Waffe dieses Mordes bestätigt wurde, wurde im Körper des Opfers gefunden.",
				"4" : "Das Opfer wurde im Camp gefunden, welches eine Waldhütte am See ist.",
				"5" : "Der Angeklagte scheint seit Stunden im 'Zelt für böse Jungs' eingesperrt gewesen zu sein",
				"Guilty" : false,
				},
	
}
