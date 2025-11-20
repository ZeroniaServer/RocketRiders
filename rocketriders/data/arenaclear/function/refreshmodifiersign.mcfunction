##Refreshes signs for individual Game Modifiers (warped/crimson)
#Wrap counter around (0-21)
scoreboard players set $total_modifiers constant 22
scoreboard players operation @s modifierID %= $total_modifiers constant

#Instamine
execute if entity @s[scores={modifierID=0},tag=Instamine,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=0},tag=!Instamine,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#No Fall
execute if entity @s[scores={modifierID=1},tag=NoFall,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=1},tag=!NoFall,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Explosive
execute if entity @s[scores={modifierID=2},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/explosive/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=2},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/explosive/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Rocket Residers
execute if entity @s[scores={modifierID=3},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/rocket_residers/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=3},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/rocket_residers/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Sonar
execute if entity @s[scores={modifierID=4},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/sonar/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=4},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/sonar/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Molerat
execute if entity @s[scores={modifierID=5},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/molerat/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=5},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/molerat/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Minute Mix
execute if entity @s[scores={modifierID=6},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/minute_mix/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=6},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/minute_mix/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Surprise Eggs
execute if entity @s[scores={modifierID=7},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/surprise_eggs/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=7},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/surprise_eggs/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Wind Down
execute if entity @s[scores={modifierID=8},tag=WindDown,predicate=!game:modifiers/minute_mix/on,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=8},tag=!WindDown,predicate=!game:modifiers/minute_mix/on,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=8},predicate=game:modifiers/minute_mix/on,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=8},tag=WindDown,tag=WindDownForce] run setblock -69 191 75 warped_wall_sign[facing=east]

#Splash Streams
execute if entity @s[scores={modifierID=9},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/splash_streams/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=9},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/splash_streams/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Spam Click
execute if entity @s[scores={modifierID=10},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/spam_click/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=10},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/spam_click/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Ninja Jump
execute if entity @s[scores={modifierID=11},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/ninja_jump/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=11},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/ninja_jump/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Hardcore
execute if entity @s[scores={modifierID=12},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/hardcore/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=12},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/hardcore/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Double Portal
execute if entity @s[scores={modifierID=13},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/double_portal/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=13},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/double_portal/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Clutter Collector
execute if entity @s[scores={modifierID=14},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/clutter_collector/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=14},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/clutter_collector/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Special Treatment
execute if entity @s[scores={modifierID=15},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/special_treatment/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=15},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/special_treatment/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Collision Control
execute if entity @s[scores={modifierID=16},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/collision_control/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=16},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/collision_control/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Punchable TNT
execute if entity @s[scores={modifierID=17},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/punchable_tnt/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=17},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/punchable_tnt/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Unstable TNT
execute if entity @s[scores={modifierID=18},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/unstable_tnt/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=18},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/unstable_tnt/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Instant TNT
execute if entity @s[scores={modifierID=19},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/instant_tnt_explosions/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=19},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/instant_tnt_explosions/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Hobbits
execute if entity @s[scores={modifierID=20},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/hobbits/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=20},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/hobbits/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Long Arms
execute if entity @s[scores={modifierID=21},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/long_arms/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=21},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/long_arms/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#All locked
execute if entity @s[predicate=game:gamemode_components/settings_locked] unless entity @s[scores={modifierID=8},tag=WindDownForce] run setblock -69 191 75 crimson_wall_sign[facing=east]

##MODIFIER SELECTION
function modifiers:modifierselect

tag @s add SignsRefreshed

##Update facade
function game:place_facade
