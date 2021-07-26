extends Control



var dialog2 = [
	"Hey joe. Thanks for finding me.(press e)",
	"I got lost exploring this cave." ,
	"Lets go home"
]

var dialog_index2 = 0 
var finsihed2 = false

func _ready():
	load_dialog2()
	
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog2()

func load_dialog2():
	if dialog_index2 < dialog2.size():
		$RichTextLabel2.bbcode_text = dialog2[dialog_index2]
		
	else:
		queue_free()
	dialog_index2 += 1
