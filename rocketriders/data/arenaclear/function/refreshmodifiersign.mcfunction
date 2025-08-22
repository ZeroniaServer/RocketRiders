##Refreshes signs for individual Game Modifiers (warped/crimson)
#Reset counter
scoreboard players set @s[scores={modifierID=20..}] modifierID 0

#Instamine
execute if entity @s[scores={modifierID=0},tag=Instamine,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=0},tag=!Instamine,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#No Fall
execute if entity @s[scores={modifierID=1},tag=NoFall,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=1},tag=!NoFall,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Explosive
execute if entity @s[scores={modifierID=2},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifier/explosive run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=2},predicate=!game:gamemode_components/settings_locked] if predicate game:modifier/explosive if predicate game:modifier/is_locked/explosive run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=2},predicate=!game:gamemode_components/settings_locked] if predicate game:modifier/explosive unless predicate game:modifier/is_locked/explosive run setblock -69 191 75 warped_wall_sign[facing=east]

#Rocket Residers
execute if entity @s[scores={modifierID=3},tag=Residers,tag=!ResidersOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=3},tag=!Residers,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=3},tag=ResidersOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Sonar
execute if entity @s[scores={modifierID=4},tag=Sonar,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=4},tag=!Sonar,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Molerat
execute if entity @s[scores={modifierID=5},tag=Molerat,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=5},tag=!Molerat,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=5},tag=MoleratOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

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
execute if entity @s[scores={modifierID=12},tag=Hardcore,tag=!HardcoreOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=12},tag=!Hardcore,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=12},tag=HardcoreOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Double Portal
execute if entity @s[scores={modifierID=13},tag=DoublePortal,predicate=!game:gamemode_components/no_portal,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=13},tag=!DoublePortal,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=13},predicate=game:gamemode_components/no_portal,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Clutter Collector
execute if entity @s[scores={modifierID=14},tag=ClutterCollector,tag=!Residers,tag=!Molerat,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=14},tag=!ClutterCollector,tag=!Residers,tag=!Molerat,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=14},tag=Residers,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=14},tag=Molerat,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=14},tag=ClutterCollectorOff] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Chaos
execute if entity @s[scores={modifierID=15},tag=Chaos,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=15},tag=!Chaos,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=15},tag=ChaosOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Collision Control
execute if entity @s[scores={modifierID=16},tag=CollisionControl,tag=!CollisionControlOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute if entity @s[scores={modifierID=16},tag=!CollisionControl,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=16},tag=CollisionControlOff,predicate=!game:gamemode_components/settings_locked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Punchable TNT
execute if entity @s[scores={modifierID=17},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifier/punchable_tnt run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=17},predicate=!game:gamemode_components/settings_locked] if predicate game:modifier/punchable_tnt if predicate game:modifier/is_locked/punchable_tnt run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=17},predicate=!game:gamemode_components/settings_locked] if predicate game:modifier/punchable_tnt unless predicate game:modifier/is_locked/punchable_tnt run setblock -69 191 75 warped_wall_sign[facing=east]

#Unstable TNT
execute if entity @s[scores={modifierID=18},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifier/unstable_tnt run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=18},predicate=!game:gamemode_components/settings_locked] if predicate game:modifier/unstable_tnt if predicate game:modifier/is_locked/unstable_tnt run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=18},predicate=!game:gamemode_components/settings_locked] if predicate game:modifier/unstable_tnt unless predicate game:modifier/is_locked/unstable_tnt run setblock -69 191 75 warped_wall_sign[facing=east]

#Hobbits
execute if entity @s[scores={modifierID=19},predicate=!game:gamemode_components/settings_locked] unless predicate game:modifier/hobbits run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=19},predicate=!game:gamemode_components/settings_locked] if predicate game:modifier/hobbits if predicate game:modifier/is_locked/hobbits run setblock -69 191 75 crimson_wall_sign[facing=east]
execute if entity @s[scores={modifierID=19},predicate=!game:gamemode_components/settings_locked] if predicate game:modifier/hobbits unless predicate game:modifier/is_locked/hobbits run setblock -69 191 75 warped_wall_sign[facing=east]

#All locked
execute if entity @s[predicate=game:gamemode_components/settings_locked] unless entity @s[scores={modifierID=8},tag=WindDownForce] run setblock -69 191 75 crimson_wall_sign[facing=east]

##MODIFIER SELECTION
function modifiers:modifierselect

tag @s add SignsRefreshed