##Operator command - tests valid arenaclear based on enabled items
execute if entity @e[type=marker,tag=CancelJoin,limit=1] if entity @e[type=armor_stand,tag=Selection] unless entity @e[type=armor_stand,tag=Selection,tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning] run tag @s add validClear
#Check how many categories are disabled (locked)/off (mutually exclusive) - if 3 or more then don't clear
execute if entity @e[type=armor_stand,tag=Selection,tag=!rngNormal] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=normalOff] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!rngHeavy] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=heavyOff] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!rngLightning] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=lightningOff] run scoreboard players add $test ClearArena 1
execute if score $test ClearArena matches 3.. run tag @s remove validClear
scoreboard players reset $test ClearArena
execute as @s[tag=!validClear] run tellraw @s {"text":"You must have at least one Missile enabled to start the game","color":"red"}
execute as @s[tag=validClear] as @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=!needsForceClear] run function arenaclear:areaclear
execute as @s[tag=validClear] if entity @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=needsForceClear] run tellraw @s {"text":"Warning: Force clearing arena since previous gamemode was uninstalled. Arena may not be perfectly cleared.","color":"red"}
execute as @s[tag=validClear] as @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=needsForceClear] run function arenaclear:forceareaclear
execute as @s[tag=validClear] unless entity @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled] run tellraw @s {"text":"Error: Cannot clear arena because no gamemodes are installed/enabled.","color":"red"}
tag @s remove validClear