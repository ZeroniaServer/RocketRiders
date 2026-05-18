function arenaclear:selected_modifier/wrap_around
execute if score $modification_room.selected_modifier global matches 2 unless predicate game:feature_flags/1_4_0_update/on run return run function arenaclear:selected_modifier/next
execute if score $modification_room.selected_modifier global matches 20 unless predicate game:feature_flags/1_4_0_update/on run return run function arenaclear:selected_modifier/next
execute if score $modification_room.selected_modifier global matches 24 unless predicate game:feature_flags/1_4_0_update/on run return run function arenaclear:selected_modifier/next
