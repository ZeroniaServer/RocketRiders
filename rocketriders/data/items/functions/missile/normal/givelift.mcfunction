##Gives executor a Lifter
#Antidupe check
execute store result score @s HasLift run clear @s dolphin_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasLift %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasLift=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasLift 0

#Title/giving
title @s[scores={HasLift=1..},tag=!fullHotbar,tag=!BackLift] actionbar {"text":"Lifter already obtained.","color":"aqua"}
execute as @s[scores={HasLift=1..},tag=!fullHotbar,tag=!BackLift] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasLift=0},tag=!fullHotbar,tag=!BackLift] actionbar {"text":"Lifter obtained.","color":"aqua"}
loot give @s[scores={HasLift=0},tag=!fullHotbar] loot items:normal/lifter
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasLift=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackLift] run tag @e[tag=Selection,type=armor_stand] add givenLift
execute unless entity @s[tag=BackLift] run tag @e[tag=Bot,type=armor_stand] add BotHasLift