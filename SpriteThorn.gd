extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var n = 6
var R = 30
#var X = 400
#var Y = 150
var X = 0
var Y = 0
var thornL = 70

# Called when the node enters the scene tree for the first time.
func _draw():
	for i in range(n):
		var thornStartX = X + R * cos(i * 2 * PI / n)
		var thornStartY = Y + R * sin(i * 2 * PI / n)
		var thornEndX = X + (R + thornL) * cos(i * 2 * PI / n)
		var thornEndY = Y + (R + thornL) * sin(i * 2 * PI / n)
		draw_line(Vector2(thornStartX, thornStartY), Vector2(thornEndX, thornEndY), Color.aqua, 1.0)
		draw_circle(Vector2(thornEndX, thornEndY), 10, Color.aqua)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
