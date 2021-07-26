extends Control

var dialog = [
	"Hey joe. Can you go find your mother? (Press e)",
	"She went into the cave a while ago but she hasnt come back yet." ,
	"Try not to get lost"
]

var dialog_index = 0 
var finsihed = false

func _ready():
	load_dialog()
	
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()

func load_dialog():
	if dialog_index < dialog.size():
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		
	else:
		queue_free()
	dialog_index += 1
