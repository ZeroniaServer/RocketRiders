##Prints info/enabled status about the selected Modifier

#Instamine
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=0},tag=Instamine] run tellraw @s ["",{"text":"Instamine","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players receive Haste 255 and can mine (most) blocks instantly.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=0},tag=!Instamine] run tellraw @s ["",{"text":"Instamine","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#No Fall
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=1},tag=NoFall] run tellraw @s ["",{"text":"No Fall","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players are immune to fall damage.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=1},tag=!NoFall] run tellraw @s ["",{"text":"No Fall","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Explosive
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=2},tag=Explosive] run tellraw @s ["",{"text":"Explosive","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" TNT, Fireballs, Nova Rockets, and the Vortex all do more explosion damage.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=2},tag=!Explosive] run tellraw @s ["",{"text":"Explosive","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Rocket Residers
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=3},tag=Residers] run tellraw @s ["",{"text":"Rocket Residers","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players cannot leave their bases.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=3},tag=!Residers] run tellraw @s ["",{"text":"Rocket Residers","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Sonar
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=4},tag=Sonar] run tellraw @s ["",{"text":"Sonar","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players lose Night Vision so they cannot see blocks. Other players, projectiles, TNT, and utilities have glowing outlines.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=4},tag=!Sonar] run tellraw @s ["",{"text":"Sonar","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Molerat
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=5},tag=Molerat] run tellraw @s ["",{"text":"Molerat","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" A big block of glass spawns in the center of the map, which players must break through to damage the other base.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=5},tag=!Molerat] run tellraw @s ["",{"text":"Molerat","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=5},tag=Molerat,tag=!WasMolerat] run tellraw @s ["",{"text":"[WARNING]","color":"red","bold":true},{"text":" Toggling this causes lag due to fill commands."}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=5},tag=!Molerat,tag=WasMolerat] run tellraw @s ["",{"text":"[WARNING]","color":"red","bold":true},{"text":" Toggling this causes lag due to fill commands."}]

#Minute Mix
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=6},tag=Minute] run tellraw @s ["",{"text":"Minute Mix","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players receive a new set of 8 items every minute.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=6},tag=!Minute] run tellraw @s ["",{"text":"Minute Mix","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Surprise Eggs
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=7},tag=SurpriseEgg] run tellraw @s ["",{"text":"Surprise Eggs","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players can receive a spawn egg that spawns a random missile. These can stack up to 3.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=7},tag=!SurpriseEgg] run tellraw @s ["",{"text":"Surprise Eggs","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Wind Down
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=8},tag=WindDown] run tellraw @s ["",{"text":"Wind Down","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" After every item given, the time between receiving items decreases, intensifying the game as it continues.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=8},tag=!WindDown] run tellraw @s ["",{"text":"Wind Down","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Splash Streams
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=9},tag=SplashStreams] run tellraw @s ["",{"text":"Splash Streams","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Liquids placed by Splash bottles are permanent.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=9},tag=!SplashStreams] run tellraw @s ["",{"text":"Splash Streams","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Spam Click
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=10},tag=SpamClick] run tellraw @s ["",{"text":"Spam Click","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players have no delay between melee attacks on enemies.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=10},tag=!SpamClick] run tellraw @s ["",{"text":"Spam Click","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Ninja Jump
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=11},tag=NinjaJump] run tellraw @s ["",{"text":"Ninja Jump","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players have increased speed and jump height.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=11},tag=!NinjaJump] run tellraw @s ["",{"text":"Ninja Jump","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Hardcore
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=12},tag=Hardcore] run tellraw @s ["",{"text":"Hardcore","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players have three hearts of health and bases are one block thick.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=12},tag=!Hardcore] run tellraw @s ["",{"text":"Hardcore","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Double Portal
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=13},tag=DoublePortal] run tellraw @s ["",{"text":"Double Portal","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Both portals must be broken to win the game.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=13},tag=!DoublePortal] run tellraw @s ["",{"text":"Double Portal","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Clutter Collector
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=14},tag=ClutterCollector] run tellraw @s ["",{"text":"Clutter Collector","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Explosions do no block damage between the bases.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=14},tag=!ClutterCollector] run tellraw @s ["",{"text":"Clutter Collector","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Chaos
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=15},tag=Chaos] run tellraw @s ["",{"text":"Chaos","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Special Missiles are obtainable in regular gameplay.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=15},tag=!Chaos] run tellraw @s ["",{"text":"Chaos","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Collision Control
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=16},tag=CollisionControl] run tellraw @s ["",{"text":"Collision Control","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Missiles cannot be spawned inside the enemy base.","color":"gray","italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=16},tag=!CollisionControl] run tellraw @s ["",{"text":"Collision Control","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]