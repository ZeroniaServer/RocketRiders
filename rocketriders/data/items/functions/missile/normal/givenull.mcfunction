##Gives executor a Nullifier
#Antidupe check
execute store result score @s HasNull run clear @s phantom_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasNull %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasNull=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasNull 0

#Title/giving
title @s[scores={HasNull=1..},tag=!fullHotbar,tag=!BackNull] actionbar {"text":"Chronullifier already obtained.","color":"aqua"}
execute as @s[scores={HasNull=1..},tag=!fullHotbar,tag=!BackNull] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasNull=0},tag=!fullHotbar,tag=!BackNull] actionbar {"text":"Chronullifier obtained.","color":"aqua"}
loot give @s[scores={HasNull=0},tag=!fullHotbar] loot items:normal/chronull
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasNull=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackNull] run tag @e[tag=Selection,type=armor_stand] add givenNull
execute unless entity @s[tag=BackNull] run tag @e[tag=Bot,type=armor_stand] add BotHasNull