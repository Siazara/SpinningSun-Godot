extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var thorn = preload("thorn.tscn")
var n
var R
var X
var Y
var thornL
var thornR
var i

func _ready():
	n = get_parent().n
	R = get_parent().R
	X = get_parent().X
	Y = get_parent().Y
	thornL = get_parent().thornL
	thornR = get_parent().thornR

func _draw():
	for j in range(n):
		i = j
		var new_thorn = thorn.instance()
		add_child(new_thorn)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	rotation_degrees += 0.5

func _on_ball_area_entered(area):
#	print(area)
	print('ball came in!')
#	pass # Replace with function body.
