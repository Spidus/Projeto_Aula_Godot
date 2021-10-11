extends CanvasLayer


func Msg(texto):
	$Label_msg.text = texto
	$AnimationPlayer.play("appear")
	
func Esconder_msg():
	$MarginContainer_Scorebox.hide()
	
func Mostrar_msg():
	$MarginContainer_Scorebox.show()
	
func Score(value):
	$MarginContainer_Scorebox/HBoxContainer/Label_Score.text = str(value)
