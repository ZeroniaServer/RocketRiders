#Antidupe check
execute store result score @s HasICBM run clear @s egg[custom_data~{icbm:1b}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasICBM %=  constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasICBM=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasICBM 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasICBM=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"ICBM already obtained.","color":"aqua"}
execute if entity @s[scores={HasICBM=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"ICBM already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasICBM=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"ICBM obtained.","color":"aqua"}
loot give @s[scores={HasICBM=0},tag=!fullHotbar] loot items:util/icbm

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenICBM