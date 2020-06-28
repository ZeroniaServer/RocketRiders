##Refreshes signs for individual Game Modifiers (warped/crimson)
#Reset counter
scoreboard players set @s[scores={modifierID=13..}] modifierID 0

#Instamine
execute as @s[scores={modifierID=0},tag=Instamine,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=0},tag=!Instamine,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#No Fall
execute as @s[scores={modifierID=1},tag=NoFall,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=1},tag=!NoFall,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Explosive
execute as @s[scores={modifierID=2},tag=Explosive,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=2},tag=!Explosive,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Rocket Residers
execute as @s[scores={modifierID=3},tag=Residers,tag=!ResidersOff,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=3},tag=!Residers,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Sonar
execute as @s[scores={modifierID=4},tag=Sonar,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=4},tag=!Sonar,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Molerat
execute as @s[scores={modifierID=5},tag=Molerat,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=5},tag=!Molerat,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Minute Mix
execute as @s[scores={modifierID=6},tag=Minute,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=6},tag=!Minute,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Surprise Eggs
execute as @s[scores={modifierID=7},tag=SurpriseEgg,tag=!SurpriseEggOff,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=7},tag=!SurpriseEgg,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Wind Down
execute as @s[scores={modifierID=8},tag=WindDown,tag=!Minute,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=8},tag=!WindDown,tag=!Minute,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute as @s[scores={modifierID=8},tag=Minute,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Splash Streams
execute as @s[scores={modifierID=9},tag=SplashStreams,tag=!SplashStreamsOff,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=9},tag=!SplashStreams,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Spam Click
execute as @s[scores={modifierID=10},tag=SpamClick,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=10},tag=!SpamClick,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Ninja Jump
execute as @s[scores={modifierID=11},tag=NinjaJump,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=11},tag=!NinjaJump,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Hardcore
execute as @s[scores={modifierID=12},tag=Hardcore,tag=!HardcoreOff,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=12},tag=!Hardcore,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#All locked
execute as @s[tag=settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]