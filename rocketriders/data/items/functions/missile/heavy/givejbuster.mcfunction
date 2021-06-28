##Gives executor a Juggerbuster
#Antidupe check
execute store result score @s HasJug run clear @s zombie_horse_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasJug %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasJug=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasJug 0

#Title/giving
title @s[scores={HasJug=1..},tag=!fullHotbar,tag=!BackJug] actionbar {"text":"Juggerbuster already obtained.","color":"aqua"}
execute as @s[scores={HasJug=1..},tag=!fullHotbar,tag=!BackJug] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasJug=0},tag=!fullHotbar,tag=!BackJug] actionbar {"text":"Juggerbuster obtained.","color":"aqua"}
loot give @s[scores={HasJug=0},tag=!fullHotbar] loot items:heavy/jbuster
playsound minecraft:entity.item.pickup player @s[scores={HasJug=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackJug] run tag @e[tag=Selection,type=armor_stand] add givenJbust
execute unless entity @s[tag=BackJug] run tag @e[tag=Bot,type=armor_stand] add BotHasJug