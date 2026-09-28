extends Area3D

@export var haptic_frequency : float = 10.0
@export var haptic_amplitude : float = 0.5
@export var duration : float = 0.1

func on_area_entered(area: Area3D) -> void:
	if area.is_in_group("player_hands"):
		var controller = area.get_parent()
		
		if controller.has_method("trigger_haptic_pulse"):
			controller.trigger_haptic_pulse("haptic", haptic_frequency, haptic_amplitude, duration, 0)
