extends Node

const HEART = preload("res://element/Heart.tscn")

const CONTROLLER_INPUT = preload("uid://bcrr3er8vt1r4")
const CONTROLLER_AI = preload("uid://cmbprtxvm61fr")

const BULLET_FORK = preload("res://element/Bullet/Bullet_Fork.tscn")
const BULLET_POPCORN = preload("res://element/Bullet/Bullet_Popcorn.tscn")
const BULLET_SNOW = preload("res://element/Bullet/Bullet_Snow.tscn")
const BULLET_THIRTEEN = preload("res://element/Bullet/Bullet_Thirteen.tscn")

const ITEM_CRAB = preload("res://element/Item/Item_Crab.tscn")
const ITEM_STARBUCK = preload("res://element/Item/Item_Starbuck.tscn")
const ITEM_WALLACE = preload("res://element/Item/Item_Wallace.tscn")
const ITEM_BOX = preload("res://element/Item/Item_Box.tscn")

const SFX_AWAKE = preload("uid://uda3o1o7yl0w")
const SFX_DEAD_1 = preload("uid://cig4a4rjfr47b")
const SFX_DEAD_2 = preload("uid://bnisxcumgx8yb")
const SFX_HIT = preload("uid://o03d62y565jp")
const SFX_JUMP = preload("uid://ox4hqmjb7r2q")
const SFX_BOX = preload("uid://s74u6d0kcrba")
const SFX_CRAB = preload("uid://dvqrypqngphch")
const SFX_STARBUCK = preload("uid://b0qu0k8wvusby")
const SFX_WALLACE = preload("uid://drqaclwh42f1x")
const SFX_SHOOT_FORK = preload("uid://baobtou453w6t")
const SFX_SHOOT_POPCORN = preload("uid://ccbpaiit3q0o")
const SFX_SHOOT_SNOW = preload("uid://bn4d12ts6q30p")
const SFX_SHOOT_THIRTEEN = preload("uid://dfa1t6hcd7g8t")

const EFFECT_FIREWORK = preload("res://effect/Firework.tscn")
const EFFECT_TIP = preload("res://effect/Tip.tscn")

const TEXTURE_CHA1 = preload("res://assets/character/cha_1.png")
const TEXTURE_CHA2 = preload("res://assets/character/cha_2.png")

var is_pvp:bool=false
var lastWin:int=-1
var winTimes:int=0

var nodeAmmo:Node2D
var nodeParticle:Node2D

@onready var area_2d: Area2D = $Area2D
@onready var node_sfx: Node = $NodeSfx

func play_sfx(sfx:PackedScene):node_sfx.add_child(sfx.instantiate())
