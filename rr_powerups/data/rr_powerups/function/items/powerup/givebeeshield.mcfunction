#Antidupe check
execute store result score @s HasBeeShield run clear @s snowball[custom_data~{BeeShield:1b}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasBeeShield %= 64 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasBeeShield=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasBeeShield 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBeeShield=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Stinging Shield already obtained.","color":"light_purple"}
execute if entity @s[scores={HasBeeShield=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Stinging Shield already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBeeShield=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Stinging Shield obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasBeeShield=0},tag=!fullHotbar] minecraft:snowball[max_stack_size=64,custom_model_data={floats:[2]},custom_name='[{"text":"[Utility] ","color":"dark_purple","bold":true},{"text":"Stinging Shield","color":"gold","bold":true}]',lore=['{"text":"Throw to deploy a Shield made of","color":"gray"}','{"text":"beehives and unstable TNT!","color":"gray"}'],hide_additional_tooltip={},custom_data={BeeShield:1b},item_model="minecraft:honeycomb"] 1
give @s[team=Blue,scores={HasBeeShield=0},tag=!fullHotbar] minecraft:snowball[max_stack_size=64,custom_model_data={floats:[1]},custom_name='[{"text":"[Utility] ","color":"dark_purple","bold":true},{"text":"Stinging Shield","color":"blue","bold":true}]',lore=['{"text":"Throw to deploy a Shield made of","color":"gray"}','{"text":"beehives and unstable TNT!","color":"gray"}'],hide_additional_tooltip={},custom_data={BeeShield:1b},item_model="minecraft:honeycomb"] 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenBee