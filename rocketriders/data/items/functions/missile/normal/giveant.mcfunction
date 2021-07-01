##Gives executor an A.N.T.
#Antidupe check
execute store result score @s HasAnt run clear @s bat_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasAnt %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasAnt=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasAnt 0

#Title/giving
title @s[scores={HasAnt=1..},tag=!fullHotbar,tag=!BackAnt] actionbar {"text":"A.N.T. already obtained.","color":"aqua"}
execute as @s[scores={HasAnt=1..},tag=!fullHotbar,tag=!BackAnt] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasAnt=0},tag=!fullHotbar,tag=!BackAnt] actionbar {"text":"A.N.T. obtained.","color":"aqua"}
loot give @s[scores={HasAnt=0},tag=!fullHotbar] loot items:normal/ant
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasAnt=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackAnt] run tag @e[tag=Selection,type=armor_stand] add givenAnt
execute unless entity @s[tag=BackAnt] run tag @e[tag=Bot,type=armor_stand] add BotHasAnt