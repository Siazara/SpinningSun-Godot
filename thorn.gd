extends Area2D


var n
var i
var R
var X
var Y
var thornL
var thornR

var thornStartX
var thornStartY
var thornEndX
var thornEndY

func _ready():
	n = get_parent().n
	i = get_parent().i
	R = get_parent().R
	X = get_parent().X
	Y = get_parent().Y
	thornL = get_parent().thornL
	thornR = get_parent().thornR
	thornStartX = X + R * cos(i * 2 * PI / n)
	thornStartY = Y + R * sin(i * 2 * PI / n)
	thornEndX = X + (R + thornL) * cos(i * 2 * PI / n)
	thornEndY = Y + (R + thornL) * sin(i * 2 * PI / n)
	set_position(Vector2(thornEndX, thornEndY))

# Called when the node enters the scene tree for the first time.
func _draw():
	draw_line(Vector2(-(thornEndX-thornStartX), -(thornEndY-thornStartY)), Vector2(0, 0), Color.aqua, 1.0)
	draw_circle(Vector2(0, 0), thornR, Color.aqua)

#	var thornStartX = X + R * cos(i * 2 * PI / n)
#	var thornStartY = Y + R * sin(i * 2 * PI / n)
#	var thornEndX = X + (R + thornL) * cos(i * 2 * PI / n)
#	var thornEndY = Y + (R + thornL) * sin(i * 2 * PI / n)
#	draw_line(Vector2(thornStartX, thornStartY), Vector2(thornEndX, thornEndY), Color.aqua, 1.0)
#	draw_circle(Vector2(thornEndX, thornEndY), thornR, Color.aqua)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#func _process(delta):
#	rotation_degrees += 0.5
