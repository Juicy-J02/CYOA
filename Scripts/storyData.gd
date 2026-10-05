extends Node

var story_data = {
	"intro": {
		"type": "dialogue",
		"speaker": "Henry",
		"text": "Alright, Let's do this.",
		"next": "bank"
	},

	"bank": {
		"type": "dialogue",
		"speaker": "Henry",
		"text": "So... how am I getting inside?",
		"next": "entry_choice"
	},

	"entry_choice": {
		"type": "choice",
		"choices": [
			{
				"text": "Use the window",
				"next": "window"
			},
			{
				"text": "Use the door",
				"next": "door"
			},
			{
				"text": "Climb onto the roof",
				"next": "roof"
			}
		]
	},

	"window": {
		"type": "dialogue",
		"speaker": "Henry",
		"text": "So... how am I getting inside?",
		"next": "entry_choice"
	},
}
