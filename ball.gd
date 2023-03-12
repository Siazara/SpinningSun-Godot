extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var R
var Y
var thornL
var thornR
onready var thorns = get_node("/root/platform/Circle/Thorns")

func _ready():
	R = get_parent().R
	Y = get_parent().Y
	thornL = get_parent().thornL
	thornR = get_parent().thornR
	set_position(Vector2(0, 300))

var letGo = false
var reached = false

func _unhandled_input(event):
	if event is InputEventMouseButton:
		letGo = true

func throw():
	position.y -= 5
	if position.y < (Y + (R + thornL) + (thornR / 2)):
		reached = true
#		rotation = thorns.rotation
#		print(thorns.rotation_degrees)
#		print(thorns.rotation_degrees)
#		set_position(Vector2(0, 0))
		get_parent().remove_child(self)
		thorns.add_child(self)
		update()
#		transform = 
	

func _draw():
	if reached:
#		draw_line(Vector2(0, 0), Vector2(0, -(Y + thornL)), Color.aqua, 1.0)
		set_position(Vector2(0, 0))
		draw_circle(Vector2(0, R + thornL), thornR, Color.aqua)
		draw_line(Vector2(0, R), Vector2(0, R + thornL), Color.aqua, 1.0)
		rotation_degrees = -thorns.rotation_degrees
	else:
		draw_circle(Vector2(0, 0), thornR, Color.aqua)

		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if letGo && !reached:
		throw()
#	if reached:
#		print(rotation_degrees)
#		rotation_degrees += 0.5
#		position = Vector2(0, 0) + (position - Vector2(0, 0)).rotated(deg2rad(0.5))
#		look_at(Vector2(0, 0))
#		pass
#		look_at(Vector2(0, -(Y + thornL)))
