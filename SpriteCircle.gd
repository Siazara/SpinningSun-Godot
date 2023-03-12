extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#func draw_circle_arc(center, radius, angle_from, angle_to, color):
#	var nb_points = 32
#	var points_arc = PoolVector2Array()
#
#	for i in range(nb_points + 1):
#		var angle_point = deg2rad(angle_from + i * (angle_to-angle_from) / nb_points - 90)
#		points_arc.push_back(center + Vector2(cos(angle_point), sin(angle_point)) * radius)
#
#	for index_point in range(nb_points):
#		draw_line(points_arc[index_point], points_arc[index_point + 1], color)
		
# Called when the node enters the scene tree for the first time.

func _ready():
	set_position(Vector2(400, 150))

func _draw():
#	print('all good')
#	draw_circle(Vector2(100, 150), 10.5, Color.aqua)
#	draw_arc(Vector2(400, 150), 30, 0, 2*PI, 500, Color.aqua)
	draw_arc(Vector2(0, 0), 30, 0, 2*PI, 500, Color.aqua)
#	draw_line(Vector2(200, 200), Vector2(300, 300), Color.aqua, 1.0)
#	var center = Vector2(200, 200)
#	var radius = 80
#	var angle_from = 75
#	var angle_to = 195
#	var color = Color(1.0, 0.0, 0.0)
#	draw_circle_arc(center, radius, angle_from, angle_to, color)
#func _process(delta):
#
#	# Note: put a minus sign to spin in the opposite direction
#	var degrees_per_second = 360.0
#
#	rotate(delta * deg2rad(degrees_per_second) * 0.1)
#
#func _physics_process(delta):
##	position = point + (position - point).rotated(angle)
#	if rotation_degrees < 90:
#		print(position.x)
##		rotation_degrees += 0.5
#		transform = transform.rotated(deg2rad(0.5))
#		rotate(0.5)
#		set_rotation(rotation_degrees+0.5)
#		set_global_rotation(rotation_degrees+0.5)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	set_offset(Vector2(800, 800))
#	print(get_offset())
	rotation_degrees += 0.5
#	print(global_transform)

func _on_Area2D_body_enter(body):
	print(str('Body entered: ', body.get_name()))
	if body.is_in_group("ball"):
		print(str('Player has entered'))
