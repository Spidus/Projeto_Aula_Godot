extends KinematicBody2D


var velocidade=Vector2.ZERO
var pontos=0;

func _physics_process(delta):
	var vetor_entrada=Vector2.ZERO
	vetor_entrada.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	vetor_entrada.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	velocidade=vetor_entrada
	#$AnimationPlayer.play("Andando_direita")
	if(vetor_entrada == Vector2.ZERO):
		$AnimationPlayer.play("parado")
		$Camera2D/HUD.Score(get_global_transform().get_origin())
	else:
		if(vetor_entrada.x>0):
			$AnimationPlayer.play("Andando_direita")
			$Camera2D/HUD.Score(get_global_transform().get_origin())
		else:
			$AnimationPlayer.play("Andando_esquerda")
			$Camera2D/HUD.Score("Para a esquerda")
	$Camera2D/HUD.Mensagem("Oláaaaaaaaaaaaaa!")
	#$Camera2D/HUD.Score(vetor_entrada.x)
#	if(vetor_entrada == Vector2.ZERO):
#		$AnimationPlayer.play("parado")
#	else:
#		$AnimationPlayer.stop()
#	$Camera2D/CanvasLayer_HUD.Msg("Heeeeeeeeee!")
#	$Camera2D/CanvasLayer_HUD.Score(vetor_entrada.x)
	move_and_slide(velocidade*100)
