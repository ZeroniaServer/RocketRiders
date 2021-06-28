##Gives executor a Thunderbolt
#Antidupe check
execute store result score @s HasBolt run clear @s vex_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasBolt %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasBolt=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasBolt 0

#Title/giving
title @s[scores={HasBolt=1..},tag=!fullHotbar,tag=!BackBolt] actionbar {"text":"Thunderbolt already obtained.","color":"aqua"}
execute as @s[scores={HasBolt=1..},tag=!fullHotbar,tag=!BackBolt] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBolt=0},tag=!fullHotbar,tag=!BackBolt] actionbar {"text":"Thunderbolt obtained.","color":"aqua"}
loot give @s[scores={HasBolt=0},tag=!fullHotbar] loot items:lightning/thunderbolt
playsound minecraft:entity.item.pickup player @s[scores={HasThun=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackBolt] run tag @e[tag=Selection,type=armor_stand] add givenBolt
execute unless entity @s[tag=BackBolt] run tag @e[tag=Bot,type=armor_stand] add BotHasBolt