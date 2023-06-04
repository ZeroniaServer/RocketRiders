#Antidupe check
execute store result score @s HasFireball run clear @s blaze_spawn_egg 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasFireball %= 64 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasFireball=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasFireball 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasFireball=1..},tag=!fullHotbar,tag=!BackFireball,tag=!itemDeducted] actionbar {"text":"Cluster Fireball already obtained.","color":"aqua"}
execute if entity @s[scores={HasFireball=1..},tag=!fullHotbar,tag=!BackFireball,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackFireball,tag=itemDeducted] actionbar {"text":"Cluster Fireball already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackFireball,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasFireball=0},tag=!fullHotbar,tag=!BackFireball,tag=!itemDeducted] actionbar {"text":"Cluster Fireball obtained.","color":"aqua"}
loot give @s[scores={HasFireball=0},tag=!fullHotbar] loot rr_swap:util/cluster_fireball
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasFireball=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

tag @e[x=0,type=armor_stand,tag=Selection] add givenFireball