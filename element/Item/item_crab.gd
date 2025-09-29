extends Item
func EffectPlayer(player:Player)->void:
	player.timer_crab.start(10)
	Global.play_sfx(Global.SFX_CRAB)
	var tip=Global.EFFECT_TIP.instantiate()
	#tip.label.text="芝士汉堡 受力-50% 持续10s"
	Global.nodeParticle.add_child(tip)
	tip.SetContent("芝士汉堡 受力-50% 持续10s")
	tip.position=player.global_position
	
