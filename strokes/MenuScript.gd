extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("leftMouse"): 
		$OldMan/Grow.play("Menu-FirstAnimation")
		$"continue Label/AnimationPlayer".stop()
		$"continue Label".visible = false
		
		$Brain.play("default")

		
	pass


func _on_grow_animation_finished(anim_name: StringName) -> void:
	

	$Cloud.visible = true
	$Cloud.play("CloudSpawn")
	$Cloud2.visible = true
	$Cloud2.play("CloudSpawn")
	
	
	
	
	pass # Replace with function body.


func _on_cloud_animation_finished() -> void:
	$Cloud.play("Cloud")
	$Cloud2.play("Cloud")
	pass # Replace with function body.


func _on_brain_animation_finished() -> void:
	$Brain.play("BrainIdle")
	pass # Replace with function body.


func _on_texture_button_pressed() -> void:
	push_error(str("yipee"))
	pass # Replace with function body.
