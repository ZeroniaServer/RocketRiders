#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasTotem run clear @s totem_of_undying 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasTotem 0

#Title/giving
title @s[scores={HasTotem=1..},tag=!fullHotbar] actionbar {"text":"Totem of Undying already obtained.","color":"light_purple"}
execute as @s[scores={HasTotem=1..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasTotem=0},tag=!fullHotbar] actionbar {"text":"Totem of Undying obtained.","color":"light_purple"}
give @s[scores={HasTotem=0},tag=!fullHotbar] totem_of_undying{display:{Name:'{"text":"Totem of Undying","color":"dark_purple","bold":true,"italic":true}',Lore:['{"text":"Hold to survive certain death.","color":"gray"}','{"text":"Only good for one use.","color":"gray"}','{"text":"(Does not include void deaths.)","color":"gray"}']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1
tag @e[tag=Selection,type=armor_stand] add givenTotem