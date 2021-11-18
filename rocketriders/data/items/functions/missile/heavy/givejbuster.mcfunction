##Gives executor a Juggerbuster
#Antidupe check
execute store result score @s HasJug run clear @s zombie_horse_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasJug %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasJug=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasJug 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasJug=1..},tag=!fullHotbar,tag=!BackJug,tag=!itemDeducted] actionbar {"text":"Juggerbuster already obtained.","color":"aqua"}
execute if entity @s[scores={HasJug=1..},tag=!fullHotbar,tag=!BackJug,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackJug,tag=itemDeducted] actionbar {"text":"Juggerbuster already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackJug,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasJug=0},tag=!fullHotbar,tag=!BackJug,tag=!itemDeducted] actionbar {"text":"Juggerbuster obtained.","color":"aqua"}
loot give @s[scores={HasJug=0},tag=!fullHotbar] loot items:heavy/jbuster
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasJug=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackJug] run tag @e[type=armor_stand,tag=Selection] add givenJbust
execute unless entity @s[tag=BackJug] run tag @e[type=armor_stand,tag=Bot] add BotHasJug