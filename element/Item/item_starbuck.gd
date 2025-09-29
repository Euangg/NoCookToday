extends Item

func EffectPlayer(player:Player)->void:
	player.timer_starbuck.start(10)
	Global.play_sfx(Global.SFX_STARBUCK)
	var tip=Global.EFFECT_TIP.instantiate()
	#tip.label.text="星巴克 攻速1.3倍 持续10s"
	Global.nodeParticle.add_child(tip)
	tip.SetContent("星巴克 攻速1.3倍 持续10s")
	tip.position=player.global_position
	
