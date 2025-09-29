extends Item
func EffectPlayer(player:Player)->void:
	player.timer_wallace.start(10)
	player.particle_wallace.emitting=true
	Global.play_sfx(Global.SFX_WALLACE)
	var tip=Global.EFFECT_TIP.instantiate()
	#tip.label.text="华莱士 移速1.3倍 持续10s"
	Global.nodeParticle.add_child(tip)
	tip.SetContent("华莱士 移速1.3倍 持续10s")
	tip.position=player.global_position
	
