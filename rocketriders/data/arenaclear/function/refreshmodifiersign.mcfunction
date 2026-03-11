##Refreshes signs for individual Game Modifiers (warped/crimson)
#Wrap counter around (0-21)
execute unless predicate game:feature_flags/1_4_0_update run scoreboard players set $total_modifiers constant 22
execute if predicate game:feature_flags/1_4_0_update run scoreboard players set $total_modifiers constant 23
scoreboard players operation @s modifierID %= $total_modifiers constant

#Instamine
execute if entity @s[scores={modifierID=0}] if predicate game:modifiers/instamine/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=0}] unless predicate game:modifiers/instamine/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#No Fall
execute if entity @s[scores={modifierID=1}] if predicate game:modifiers/no_fall_damage/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=1}] unless predicate game:modifiers/no_fall_damage/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Explosive
execute if entity @s[scores={modifierID=2}] if predicate game:modifiers/explosive/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=2}] unless predicate game:modifiers/explosive/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Rocket Residers
execute if entity @s[scores={modifierID=3}] if predicate game:modifiers/rocket_residers/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=3}] unless predicate game:modifiers/rocket_residers/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Sonar
execute if entity @s[scores={modifierID=4}] if predicate game:modifiers/sonar/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=4}] unless predicate game:modifiers/sonar/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Molerat
execute if entity @s[scores={modifierID=5}] if predicate game:modifiers/molerat/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=5}] unless predicate game:modifiers/molerat/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Minute Mix
execute if entity @s[scores={modifierID=6}] if predicate game:modifiers/minute_mix/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=6}] unless predicate game:modifiers/minute_mix/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Surprise Eggs
execute if entity @s[scores={modifierID=7}] if predicate game:modifiers/surprise_eggs/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=7}] unless predicate game:modifiers/surprise_eggs/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Wind Down
execute if entity @s[scores={modifierID=8}] if predicate game:modifiers/wind_down/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=8}] unless predicate game:modifiers/wind_down/on run setblock -69 191 75 crimson_wall_sign[facing=east]


#Splash Streams
execute if entity @s[scores={modifierID=9}] if predicate game:modifiers/splash_streams/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=9}] unless predicate game:modifiers/splash_streams/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Spam Click
execute if entity @s[scores={modifierID=10}] if predicate game:modifiers/spam_click/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=10}] unless predicate game:modifiers/spam_click/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Ninja Jump
execute if entity @s[scores={modifierID=11}] if predicate game:modifiers/ninja_jump/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=11}] unless predicate game:modifiers/ninja_jump/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Hardcore
execute if entity @s[scores={modifierID=12}] if predicate game:modifiers/hardcore/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=12}] unless predicate game:modifiers/hardcore/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Double Portal
execute if entity @s[scores={modifierID=13}] if predicate game:modifiers/double_portal/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=13}] unless predicate game:modifiers/double_portal/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Clutter Collector
execute if entity @s[scores={modifierID=14}] if predicate game:modifiers/clutter_collector/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=14}] unless predicate game:modifiers/clutter_collector/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Special Treatment
execute if entity @s[scores={modifierID=15}] if predicate game:modifiers/special_treatment/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=15}] unless predicate game:modifiers/special_treatment/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Collision Control
execute if entity @s[scores={modifierID=16}] if predicate game:modifiers/collision_control/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=16}] unless predicate game:modifiers/collision_control/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Punchable TNT
execute if entity @s[scores={modifierID=17}] if predicate game:modifiers/punchable_tnt/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=17}] unless predicate game:modifiers/punchable_tnt/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Unstable TNT
execute if entity @s[scores={modifierID=18}] if predicate game:modifiers/unstable_tnt/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=18}] unless predicate game:modifiers/unstable_tnt/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Instant TNT
execute if entity @s[scores={modifierID=19}] if predicate game:modifiers/instant_tnt_explosions/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=19}] unless predicate game:modifiers/instant_tnt_explosions/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Hobbits
execute if entity @s[scores={modifierID=20}] if predicate game:modifiers/hobbits/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=20}] unless predicate game:modifiers/hobbits/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Long Arms
execute if entity @s[scores={modifierID=21}] if predicate game:modifiers/long_arms/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=21}] unless predicate game:modifiers/long_arms/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Rotting
execute if predicate game:feature_flags/1_4_0_update if entity @s[scores={modifierID=22}] if predicate game:modifiers/rotting/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if predicate game:feature_flags/1_4_0_update if entity @s[scores={modifierID=22}] unless predicate game:modifiers/rotting/on run setblock -69 191 75 crimson_wall_sign[facing=east]

##MODIFIER SELECTION
function modifiers:modifierselect

execute unless entity @s[tag=refreshing_all_signs] run function arenaclear:refreshoptionssigns
execute unless entity @s[tag=refreshing_all_signs] run function arenaclear:refreshcustomizer

tag @s add SignsRefreshed

##Update facade
function game:place_facade

##Update nav book
function lobby:update_nav_book
execute as @a[x=0,predicate=custom:team/lobby] run function custom:reset_inventory
