##Gives executor a Nova Rocket
#Antidupe check
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!doStacking] store result score @s HasNova run clear @s crossbow[custom_data~{nova:1b}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasNova 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasNova=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Nova Rocket already obtained.","color":"aqua"}
execute if entity @s[scores={HasNova=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Nova Rocket already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasNova=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Nova Rocket obtained.","color":"aqua"}
loot give @s[scores={HasNova=0},tag=!fullHotbar] loot items:util/nova
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasNova=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenNova