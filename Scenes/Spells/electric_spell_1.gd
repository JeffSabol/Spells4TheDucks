extends AnimatedSprite2D

var damage = 10

func _ready():
	play("default")  # Play the initial animation
	$Timer.start()  # Start a timer if you want to auto-destroy

func _on_Area2D_body_entered(body):
	if body.name == "EyeballYellow":  # Assuming enemies are in this group
		body.get_parent().take_damage(damage)

func _on_timer_timeout() -> void:
	queue_free()  # Destroy the spell after the animation ends
