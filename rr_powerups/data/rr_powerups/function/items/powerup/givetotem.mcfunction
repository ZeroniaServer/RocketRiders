#Antidupe check
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!doStacking] store result score @s HasTotem run clear @s totem_of_undying 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasTotem 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasTotem=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Totem of Undying already obtained.","color":"light_purple"}
execute if entity @s[scores={HasTotem=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Totem of Undying already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasTotem=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Totem of Undying obtained.","color":"light_purple"}
loot give @s[scores={HasTotem=0},tag=!fullHotbar] loot items:misc/totem_of_undying
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasTotem=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenTotem