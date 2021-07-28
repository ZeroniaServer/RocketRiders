##Operator command - tests valid arenaclear based on enabled items
execute if entity @e[type=armor_stand,tag=Selection,tag=!GameStarted] unless entity @e[type=armor_stand,tag=Selection,tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning] run tag @s add validClear
#Check how many categories are disabled (locked)/off (mutually exclusive) - if 3 or more then don't clear
execute if entity @e[type=armor_stand,tag=Selection,tag=!rngNormal] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=normalOff] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!rngHeavy] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=heavyOff] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!rngLightning] run scoreboard players add $test ClearArena 1
execute if entity @e[type=armor_stand,tag=Selection,tag=lightningOff] run scoreboard players add $test ClearArena 1
execute if score $test ClearArena matches 3.. run tag @s remove validClear
scoreboard players reset $test ClearArena
execute unless entity @e[type=armor_stand,tag=Selection,tag=!GameStarted] run tellraw @s {"text":"You can only run this when the game has ended","color":"red"}
execute if entity @e[type=armor_stand,tag=Selection,tag=!GameStarted] if entity @s[tag=!validClear] run tellraw @s {"text":"You must have at least one Missile enabled to start the game","color":"red"}
execute if entity @s[tag=validClear] as @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=!needsForceClear] run function arenaclear:areaclear
execute if entity @s[tag=validClear] if entity @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=needsForceClear] run tellraw @s {"text":"Warning: Force clearing arena since previous gamemode was uninstalled.","color":"red"}
execute if entity @s[tag=validClear] as @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=needsForceClear] run function arenaclear:forceareaclear
execute if entity @s[tag=validClear] unless entity @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled] run tellraw @s {"text":"Error: Cannot clear arena because no gamemodes are installed/enabled.","color":"red"}
tag @s remove validClear