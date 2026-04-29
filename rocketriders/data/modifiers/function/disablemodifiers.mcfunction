##Disables all Modifiers
scoreboard players reset $instamine config
scoreboard players reset $no_fall_damage config
scoreboard players reset $explosive config
scoreboard players reset $rocket_residers config
scoreboard players reset $sonar config
scoreboard players reset $molerat config
scoreboard players reset $minute_mix config
scoreboard players reset $surprise_eggs config
scoreboard players reset $wind_down config
scoreboard players reset $splash_streams config
scoreboard players reset $spam_click config
scoreboard players reset $ninja_jump config
scoreboard players reset $hardcore config
scoreboard players reset $double_portal config
scoreboard players reset $clutter_collector config
scoreboard players reset $special_treatment config
scoreboard players reset $collision_control config
scoreboard players reset $punchable_tnt config
scoreboard players reset $unstable_tnt config
scoreboard players reset $hobbits config
scoreboard players reset $instant_tnt_explosions config
scoreboard players reset $long_arms config
execute if predicate game:feature_flags/1_4_0_update/on run scoreboard players reset $rotting config

function arenaclear:refreshcustomizer
