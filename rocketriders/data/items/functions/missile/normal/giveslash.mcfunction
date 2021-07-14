##Gives executor a Slasher
#Antidupe check
execute store result score @s HasSlash run clear @s shulker_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasSlash %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @s[scores={HasSlash=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasSlash 0

#Title/giving
title @s[scores={HasSlash=1..},tag=!fullHotbar,tag=!BackSlash] actionbar {"text":"Slasher already obtained.","color":"aqua"}
execute as @s[scores={HasSlash=1..},tag=!fullHotbar,tag=!BackSlash] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasSlash=0},tag=!fullHotbar,tag=!BackSlash] actionbar {"text":"Slasher obtained.","color":"aqua"}
loot give @s[scores={HasSlash=0},tag=!fullHotbar] loot items:normal/slasher
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasSlash=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackSlash] run tag @e[type=armor_stand,tag=Selection] add givenSlash
execute unless entity @s[tag=BackSlash] run tag @e[type=armor_stand,tag=Bot] add BotHasSlash