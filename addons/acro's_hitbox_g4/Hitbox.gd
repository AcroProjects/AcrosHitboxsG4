@tool
class_name Hitbox
extends Area2D

@export_category("CollisionShape2D")
@export var shape : Shape2D = null : set = update_shape
@export var color: Color = Color(1,0,0,0.5): set = update_color
@export var debug: bool = false

@export_category("Hitbox Data")
@export var hitbox_id: int = 0
@export var attack_type: int = 0
@export var hitbox_priority: int = 0
@export var frames_active: int = 1
@export var damage: int = 0
@export var hit_pause: int = 0
@export var hit_stun: int = 0
@export var block_stun: int = 0
@export var angle: int = 0
@export var base_knockback: float = 0.0
@export_range(0,1) var knockback_scale: float = 0.0
@export var group: int = 0

@export var parent: CharacterBody2D

var objects_hit = [false]

var reverse = false

var frame = 1

func _init(_shape: Shape2D = null, _hitbox_id: int = 0, _attack_type: int = 0,
		_hitbox_priority: int = 0, _frames_active: int = 0, _damage: int = 0,
		_hit_pause: int = 0, _hit_stun: int = 0, _block_stun: int = 0, _angle: int = 0,
		_base_knockback: float = 0.0, _knockback_scale: float = 0.0, _group: int = 0):
	shape = _shape
	hitbox_id = _hitbox_id
	attack_type = _attack_type
	hitbox_priority = _hitbox_priority
	frames_active = _frames_active
	damage = _damage
	hit_pause = _hit_pause
	hit_stun = _hit_stun
	block_stun = _block_stun
	angle = _angle
	base_knockback = _base_knockback
	knockback_scale = _knockback_scale
	group = _group

# Updates the hitbox's collision shape
func update_shape(newVal):
	shape = newVal
	for collision in get_children():
		if collision is CollisionShape2D:
			collision.set_shape(newVal)

# Updates the hitbox's color
func update_color(newVal):
	for child in get_children():
		if child is CollisionShape2D:
			child.debug_color = newVal
	color = newVal

func _ready():
	var collision = CollisionShape2D.new()
	collision.debug_color = Color(1,0,0,0.5)
	collision.set_shape(shape)
	add_child(collision)
	frame = 1

# Calculates the launch vector to apply knockback
# @param launch_angle - angle (int)
# @param force - base_knockback (int)
# @returns Vector to apply knockback
func get_launch_vector(launch_angle,force):
	#Converts angle to radians
	launch_angle = launch_angle * PI / 180
	
	#Get X and Y components of vector
	var fx = force * cos(launch_angle)
	var fy = -force * sin(launch_angle)
	
	#Returns the vector of fx and fy
	match reverse:
		true:
			return Vector2(fx*-1,fy)
		false:
			return Vector2(fx,fy)

func _process(_delta):
	if Engine.is_editor_hint() or debug:
		update_shape(shape)
		queue_redraw()
	else:
		if frame < frames_active:
			frame += 1
		else:
			queue_free()

func _draw():
	if Engine.is_editor_hint() or debug:
		draw_line(Vector2(),get_launch_vector(angle,base_knockback), Color('#ffffff'),5)
