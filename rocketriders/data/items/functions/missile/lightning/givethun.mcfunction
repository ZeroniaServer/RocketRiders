##Gives executor a Thunderbolt
#Antidupe check
execute store result score @s HasBolt run clear @s vex_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasBolt %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasBolt=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasBolt 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBolt=1..},tag=!fullHotbar,tag=!BackBolt,tag=!itemDeducted] actionbar {"text":"Thunderbolt already obtained.","color":"aqua"}
execute if entity @s[scores={HasBolt=1..},tag=!fullHotbar,tag=!BackBolt,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackBolt,tag=itemDeducted] actionbar {"text":"Thunderbolt already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackBolt,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBolt=0},tag=!fullHotbar,tag=!BackBolt,tag=!itemDeducted] actionbar {"text":"Thunderbolt obtained.","color":"aqua"}
loot give @s[scores={HasBolt=0},tag=!fullHotbar] loot items:lightning/thunderbolt
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasBolt=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackBolt] run tag @e[type=armor_stand,tag=Selection,tag=tetrisTime] add givenBolt
execute unless entity @s[tag=BackBolt] run tag @e[type=armor_stand,tag=Bot] add HasBolt