##Operator command - tests valid arenaclear based on enabled items
execute unless predicate game:game_running unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning] run tag @s add validClear
#Check how many categories are disabled (locked)/off (mutually exclusive) - if 3 or more then don't clear
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!rngNormal] run scoreboard players add $test ClearArena 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=normalOff] run scoreboard players add $test ClearArena 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!rngHeavy] run scoreboard players add $test ClearArena 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=heavyOff] run scoreboard players add $test ClearArena 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!rngLightning] run scoreboard players add $test ClearArena 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=lightningOff] run scoreboard players add $test ClearArena 1
execute if score $test ClearArena matches 3.. run tag @s remove validClear
scoreboard players reset $test ClearArena
execute if predicate game:game_running run tellraw @s {"text":"You can only run this when the game has ended","color":"red"}
execute unless predicate game:game_running if entity @s[tag=!validClear] run tellraw @s {"text":"You must have at least one Missile enabled to start the game","color":"red"}
execute if entity @s[tag=validClear] at @s run playsound minecraft:ui.button.click master @a[x=0] ~ ~ ~ 1 1
execute if entity @s[tag=validClear] as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=!needsForceClear] run function arenaclear:areaclear
execute if entity @s[tag=validClear] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=needsForceClear] run tellraw @s {"text":"Warning: Force clearing arena since previous gamemode was uninstalled.","color":"red"}
execute if entity @s[tag=validClear] as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=needsForceClear] run function arenaclear:forceareaclear
execute if entity @s[tag=validClear] unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled] run tellraw @s {"text":"Error: Cannot clear arena because no gamemodes are installed/enabled.","color":"red"}
tag @s remove validClear
