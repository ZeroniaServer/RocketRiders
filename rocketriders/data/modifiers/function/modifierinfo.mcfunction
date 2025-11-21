##Prints info/enabled status about the selected Modifier

#Instamine
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=0},tag=Instamine] run tellraw @s ["",{"text":"Instamine","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players can mine (most) blocks instantly.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=0},tag=!Instamine] run tellraw @s ["",{"text":"Instamine","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#No Fall
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=1}] if predicate game:modifiers/no_fall_damage/on run tellraw @s ["",{"text":"No Fall","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players are immune to fall damage.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=1}] unless predicate game:modifiers/no_fall_damage/on run tellraw @s ["",{"text":"No Fall","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Explosive
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=2}] if predicate game:modifiers/explosive/on run tellraw @s ["",{"text":"Explosive","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" TNT, Fireballs, Nova Rockets, and the Vortex all do more explosion damage.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=2}] unless predicate game:modifiers/explosive/on run tellraw @s ["",{"text":"Explosive","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Rocket Residers
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=3}] if predicate game:modifiers/rocket_residers/on run tellraw @s ["",{"text":"Rocket Residers","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players cannot leave their bases.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=3}] unless predicate game:modifiers/rocket_residers/on run tellraw @s ["",{"text":"Rocket Residers","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Sonar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=4}] if predicate game:modifiers/sonar/on run tellraw @s ["",{"text":"Sonar","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players lose Night Vision so they cannot see blocks. Other players, projectiles, TNT, and utilities have glowing outlines.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=4}] unless predicate game:modifiers/sonar/on run tellraw @s ["",{"text":"Sonar","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Molerat
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=5}] if predicate game:modifiers/molerat/on run tellraw @s ["",{"text":"Molerat","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" A big block of glass spawns in the center of the map, which players must break through to damage the other base.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=5}] unless predicate game:modifiers/molerat/on run tellraw @s ["",{"text":"Molerat","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Minute Mix
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=6}] if predicate game:modifiers/minute_mix/on run tellraw @s ["",{"text":"Minute Mix","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players receive a new set of 8 items every minute.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=6}] unless predicate game:modifiers/minute_mix/on run tellraw @s ["",{"text":"Minute Mix","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Surprise Eggs
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=7}] if predicate game:modifiers/special_treatment/on run tellraw @s ["",{"text":"Surprise Eggs","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players can receive a spawn egg that spawns a random missile. These can stack up to 3.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=7}] unless predicate game:modifiers/special_treatment/on run tellraw @s ["",{"text":"Surprise Eggs","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Wind Down
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=8},tag=WindDown] run tellraw @s ["",{"text":"Wind Down","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" After every item given, the time between receiving items decreases, intensifying the game as it continues.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=8},tag=!WindDown] run tellraw @s ["",{"text":"Wind Down","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Splash Streams
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=9}] if predicate game:modifiers/splash_streams/on run tellraw @s ["",{"text":"Splash Streams","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Liquids placed by Splash bottles are permanent.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=9}] unless predicate game:modifiers/splash_streams/on run tellraw @s ["",{"text":"Splash Streams","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Spam Click
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=10}] if predicate game:modifiers/spam_click/on run tellraw @s ["",{"text":"Spam Click","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players have no delay between melee attacks on enemies.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=10}] unless predicate game:modifiers/spam_click/on run tellraw @s ["",{"text":"Spam Click","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Ninja Jump
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=11}] if predicate game:modifiers/ninja_jump/on run tellraw @s ["",{"text":"Ninja Jump","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players have increased speed and jump height.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=11}] unless predicate game:modifiers/ninja_jump/on run tellraw @s ["",{"text":"Ninja Jump","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Hardcore
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=12}] if predicate game:modifiers/hardcore/on run tellraw @s ["",{"text":"Hardcore","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players have three hearts of health and bases are one block thick.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=12}] unless predicate game:modifiers/hardcore/on run tellraw @s ["",{"text":"Hardcore","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Double Portal
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=13}] if predicate game:modifiers/double_portal/on run tellraw @s ["",{"text":"Double Portal","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Both portals must be broken to win the game.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=13}] unless predicate game:modifiers/double_portal/on run tellraw @s ["",{"text":"Double Portal","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Clutter Collector
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=14}] if predicate game:modifiers/clutter_collector/on run tellraw @s ["",{"text":"Clutter Collector","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Explosions do no block damage between the bases.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=14}] unless predicate game:modifiers/clutter_collector/on run tellraw @s ["",{"text":"Clutter Collector","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Special Treatment
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=15}] if predicate game:modifiers/special_treatment/on run tellraw @s ["",{"text":"Special Treatment","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Special Missiles are obtainable in regular gameplay.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=15}] unless predicate game:modifiers/special_treatment/on run tellraw @s ["",{"text":"Special Treatment","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Collision Control
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=16}] if predicate game:modifiers/collision_control/on run tellraw @s ["",{"text":"Collision Control","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Missiles cannot be spawned inside the enemy base.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=16}] unless predicate game:modifiers/collision_control/on run tellraw @s ["",{"text":"Collision Control","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Punchable TNT
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=17}] if predicate game:modifiers/punchable_tnt/on run tellraw @s ["",{"text":"Punchable TNT","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Primed TNT can be punched forward.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=17}] unless predicate game:modifiers/punchable_tnt/on run tellraw @s ["",{"text":"Punchable TNT","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Unstable TNT
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=18}] if predicate game:modifiers/unstable_tnt/on run tellraw @s ["",{"text":"Unstable TNT","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Breaking TNT blocks immediately ignites them.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=18}] unless predicate game:modifiers/unstable_tnt/on run tellraw @s ["",{"text":"Unstable TNT","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Instant TNT
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=19}] if predicate game:modifiers/instant_tnt_explosions/on run tellraw @s ["",{"text":"Instant TNT","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Primed TNT instantly explodes.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=19}] unless predicate game:modifiers/instant_tnt_explosions/on run tellraw @s ["",{"text":"Instant TNT","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Hobbits
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=20}] if predicate game:modifiers/hobbits/on run tellraw @s ["",{"text":"Hobbits","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" Players are 2/3 their normal size, and can sneak under 1-block-tall gaps.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=20}] unless predicate game:modifiers/hobbits/on run tellraw @s ["",{"text":"Hobbits","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]

#Long Arms
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=21}] if predicate game:modifiers/long_arms/on run tellraw @s ["",{"text":"Long Arms","color":"aqua","bold":true},{"text":" Enabled:","color":"green","bold":true},{"text":" You can reach blocks and players from twice as far away.","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={modifierID=21}] unless predicate game:modifiers/long_arms/on run tellraw @s ["",{"text":"Long Arms","color":"aqua","bold":true},{"text":" Disabled!","color":"red","bold":true}]
