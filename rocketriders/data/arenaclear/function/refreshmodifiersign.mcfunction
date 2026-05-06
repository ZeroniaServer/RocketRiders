##Refreshes signs for individual Game Modifiers (warped/crimson)
#Wrap counter around (0-21)
execute unless predicate game:feature_flags/1_4_0_update/on run scoreboard players set $wrap_size var 23
execute if predicate game:feature_flags/1_4_0_update/on run scoreboard players set $wrap_size var 24
scoreboard players operation $modification_room.selected_modifier global %= $wrap_size var
execute unless predicate game:feature_flags/1_4_0_update/on if score $modification_room.selected_modifier global matches 2 run scoreboard players set $modification_room.selected_modifier global 3

#Instamine
execute if score $modification_room.selected_modifier global matches 0 if predicate game:modifiers/instamine/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 0 unless predicate game:modifiers/instamine/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#No Fall
execute if score $modification_room.selected_modifier global matches 1 if predicate game:modifiers/no_fall/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 1 unless predicate game:modifiers/no_fall/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Yes Fall
execute if predicate game:feature_flags/1_4_0_update/on if score $modification_room.selected_modifier global matches 2 if predicate game:modifiers/yes_fall/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if predicate game:feature_flags/1_4_0_update/on if score $modification_room.selected_modifier global matches 2 unless predicate game:modifiers/yes_fall/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Explosive
execute if score $modification_room.selected_modifier global matches 3 if predicate game:modifiers/explosive/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 3 unless predicate game:modifiers/explosive/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Rocket Residers
execute if score $modification_room.selected_modifier global matches 4 if predicate game:modifiers/rocket_residers/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 4 unless predicate game:modifiers/rocket_residers/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Sonar
execute if score $modification_room.selected_modifier global matches 5 if predicate game:modifiers/sonar/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 5 unless predicate game:modifiers/sonar/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Molerat
execute if score $modification_room.selected_modifier global matches 6 if predicate game:modifiers/molerat/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 6 unless predicate game:modifiers/molerat/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Minute Mix
execute if score $modification_room.selected_modifier global matches 7 if predicate game:modifiers/minute_mix/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 7 unless predicate game:modifiers/minute_mix/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Surprise Eggs
execute if score $modification_room.selected_modifier global matches 8 if predicate game:modifiers/surprise_eggs/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 8 unless predicate game:modifiers/surprise_eggs/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Wind Down
execute if score $modification_room.selected_modifier global matches 9 if predicate game:modifiers/wind_down/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 9 unless predicate game:modifiers/wind_down/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Splash Streams
execute if score $modification_room.selected_modifier global matches 10 if predicate game:modifiers/splash_streams/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 10 unless predicate game:modifiers/splash_streams/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Spam Click
execute if score $modification_room.selected_modifier global matches 11 if predicate game:modifiers/spam_click/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 11 unless predicate game:modifiers/spam_click/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Ninja Jump
execute if score $modification_room.selected_modifier global matches 12 if predicate game:modifiers/ninja_jump/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 12 unless predicate game:modifiers/ninja_jump/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Hardcore
execute if score $modification_room.selected_modifier global matches 13 if predicate game:modifiers/hardcore/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 13 unless predicate game:modifiers/hardcore/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Double Portal
execute if score $modification_room.selected_modifier global matches 14 if predicate game:modifiers/double_portal/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 14 unless predicate game:modifiers/double_portal/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Clutter Collector
execute if score $modification_room.selected_modifier global matches 15 if predicate game:modifiers/clutter_collector/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 15 unless predicate game:modifiers/clutter_collector/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Special Treatment
execute if score $modification_room.selected_modifier global matches 16 if predicate game:modifiers/special_treatment/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 16 unless predicate game:modifiers/special_treatment/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Collision Control
execute if score $modification_room.selected_modifier global matches 17 if predicate game:modifiers/collision_control/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 17 unless predicate game:modifiers/collision_control/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Punchable TNT
execute if score $modification_room.selected_modifier global matches 18 if predicate game:modifiers/punchable_tnt/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 18 unless predicate game:modifiers/punchable_tnt/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Unstable TNT
execute if score $modification_room.selected_modifier global matches 19 if predicate game:modifiers/unstable_tnt/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 19 unless predicate game:modifiers/unstable_tnt/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Instant TNT
execute if score $modification_room.selected_modifier global matches 20 if predicate game:modifiers/instant_tnt/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 20 unless predicate game:modifiers/instant_tnt/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Hobbits
execute if score $modification_room.selected_modifier global matches 21 if predicate game:modifiers/hobbits/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 21 unless predicate game:modifiers/hobbits/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Long Arms
execute if score $modification_room.selected_modifier global matches 22 if predicate game:modifiers/long_arms/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if score $modification_room.selected_modifier global matches 22 unless predicate game:modifiers/long_arms/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Rotting
execute if predicate game:feature_flags/1_4_0_update/on if score $modification_room.selected_modifier global matches 23 if predicate game:modifiers/rotting/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if predicate game:feature_flags/1_4_0_update/on if score $modification_room.selected_modifier global matches 23 unless predicate game:modifiers/rotting/on run setblock -69 191 75 crimson_wall_sign[facing=east]

##MODIFIER SELECTION
function modifiers:modifierselect

execute unless entity @s[tag=refreshing_all_signs] run function arenaclear:refreshoptionssigns
execute unless entity @s[tag=refreshing_all_signs] run function arenaclear:refreshcustomizer

tag @s add SignsRefreshed

##Update facade
function game:place_facade

##Update nav book
function lobby:update_nav_book
execute as @a[x=0,predicate=custom:team/lobby] run function custom:player/reset_inventory
