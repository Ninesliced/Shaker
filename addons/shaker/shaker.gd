@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_autoload_singleton("TransitionManager", "res://addons/ninesliced_kit/components/ui/transition_manager/TransitionManager.tscn")
	# Initialization of the plugin goes here.
	pass


func _exit_tree() -> void:
	remove_autoload_singleton("TransitionManager")
	# Clean-up of the plugin goes here.
	pass
