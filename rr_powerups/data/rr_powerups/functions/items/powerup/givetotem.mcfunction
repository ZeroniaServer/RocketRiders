#Antidupe check
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!doStacking] store result score @s HasTotem run clear @s totem_of_undying 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasTotem 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasTotem=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Totem of Undying already obtained.","color":"light_purple"}
execute if entity @s[scores={HasTotem=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Totem of Undying already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasTotem=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Totem of Undying obtained.","color":"light_purple"}
give @s[scores={HasTotem=0},tag=!fullHotbar] minecraft:totem_of_undying[custom_name='{"text":"Totem of Undying","color":"dark_purple","bold":true,"italic":true}',lore=['{"text":"Hold to survive certain death.","color":"gray"}','{"text":"Only good for one use.","color":"gray"}','{"text":"(Does not include void deaths.)","color":"gray"}'],enchantments={levels:{"minecraft:unbreaking":1},show_in_tooltip:0b}] 1
tag @e[x=0,type=armor_stand,tag=Selection,tag=tetrisTime] add givenTotem