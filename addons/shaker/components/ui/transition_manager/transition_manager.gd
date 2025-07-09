extends CanvasLayer
@onready var animation_player = $AnimationPlayer

func _ready() -> void:
    change_scene(null)

func change_scene(packed_scene: PackedScene) -> void:
    animation_player.play("transition")
    await get_tree().process_frame
    if animation_player.is_playing():
        await animation_player.animation_finished
    animation_player.play_backwards("transition")