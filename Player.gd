extends RigidBody2D

var force = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

# Project settings Windows altında Vsync diye bir seçenek var. Bu enable olursa bütün bilgisayarlar 
# oyunu aynı frame'de çalıştırmaya çalışacak. _process fonksiyonu burdaki kurala bakarak çalışır.
func _process(delta):
	pass

# _physics_process bir phsic function'i, bunu da gene project setting--> physic
#  sekmesi altında görebiliriz. Bu update fonksiyonu buradaki ayarlara göre çalışır vSync'e gore degil.
func _physics_process(delta):
	if Input.is_action_pressed("MOVE_UP"):
		apply_force(Vector2(0,-force))
	if Input.is_action_pressed("MOVE_DOWN"):
		apply_force(Vector2(0,force))
	if Input.is_action_pressed("MOVE_LEFT"):
		apply_force(Vector2(-force,0))
	if Input.is_action_pressed("MOVE_RIGHT"):
		apply_force(Vector2(force,0)) 

# collisionTrigger gibi dusun bunu, player script'ine bagladim.
func _on_maze_body_exited(body):
	get_tree().reload_current_scene()
