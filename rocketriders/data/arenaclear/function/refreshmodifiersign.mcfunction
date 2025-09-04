##Refreshes signs for individual Game Modifiers (warped/crimson)
#Reset counter
execute unless score @s modifierID matches 0..20 run scoreboard players set @s modifierID 0

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
execute if entity @s[scores={modifierID=4},tag=Sonar,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=4},tag=!Sonar,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Molerat
execute if entity @s[scores={modifierID=5},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/molerat/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=5},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/molerat/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Minute Mix
execute if entity @s[scores={modifierID=6},tag=Minute,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=6},tag=!Minute,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Surprise Eggs
execute if entity @s[scores={modifierID=7},tag=SurpriseEgg,tag=!SurpriseEggOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=7},tag=!SurpriseEgg,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=7},tag=SurpriseEggOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Wind Down
execute if entity @s[scores={modifierID=8},tag=WindDown,tag=!Minute,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=8},tag=!WindDown,tag=!Minute,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=8},tag=Minute,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=8},tag=WindDown,tag=WindDownForce] run setblock -69 191 75 warped_wall_sign[facing=east]

#Splash Streams
execute if entity @s[scores={modifierID=9},tag=SplashStreams,tag=!SplashStreamsOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=9},tag=!SplashStreams,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=9},tag=SplashStreamsOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Spam Click
execute if entity @s[scores={modifierID=10},tag=SpamClick,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=10},tag=!SpamClick,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Ninja Jump
execute if entity @s[scores={modifierID=11},tag=NinjaJump,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=11},tag=!NinjaJump,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Hardcore
execute if entity @s[scores={modifierID=12},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/hardcore/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=12},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/hardcore/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Double Portal
execute if entity @s[scores={modifierID=13},tag=DoublePortal,predicate=game:portal_type/default,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=13},tag=!DoublePortal,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=13},predicate=!game:portal_type/default,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Clutter Collector
execute if entity @s[scores={modifierID=14},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/clutter_collector/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=14},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/clutter_collector/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Chaos
execute if entity @s[scores={modifierID=15},tag=Chaos,tag=!ChaosOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=15},tag=!Chaos,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=15},tag=ChaosOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Collision Control
execute if entity @s[scores={modifierID=16},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/collision_control/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=16},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/collision_control/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Punchable TNT
execute if entity @s[scores={modifierID=17},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/punchable_tnt/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=17},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/punchable_tnt/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Unstable TNT
execute if entity @s[scores={modifierID=18},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/unstable_tnt/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=18},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/unstable_tnt/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Hobbits
execute if entity @s[scores={modifierID=19},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/hobbits/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=19},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/hobbits/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#Instant TNT
execute if entity @s[scores={modifierID=20},predicate=!game:gamemode_components/settings_locked] if predicate game:modifiers/instant_tnt_explosions/on run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=20},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifiers/instant_tnt_explosions/on run setblock -69 191 75 crimson_wall_sign[facing=east]

#All locked
execute if entity @s[predicate=game:gamemode_components/settings_locked] unless entity @s[scores={modifierID=8},tag=WindDownForce] run setblock -69 191 75 crimson_wall_sign[facing=east]

##MODIFIER SELECTION
function modifiers:modifierselect

tag @s add SignsRefreshed