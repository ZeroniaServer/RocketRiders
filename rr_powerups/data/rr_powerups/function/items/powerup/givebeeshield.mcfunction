#Antidupe check
execute store result score @s HasBeeShield run clear @s honey_bottle 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasBeeShield %= 16 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasBeeShield=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasBeeShield 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBeeShield=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Stinging Shield already obtained.","color":"light_purple"}
execute if entity @s[scores={HasBeeShield=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Stinging Shield already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBeeShield=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Stinging Shield obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasBeeShield=0},tag=!fullHotbar] minecraft:honey_bottle[custom_model_data=2,custom_name='[{"text":"[Utility] ","color":"dark_purple","bold":true},{"text":"Stinging Shield","color":"gold","bold":true}]',lore=['{"text":"Drink to deploy a Bee Shield","color":"gray"}','{"text":"in the direction you are looking.","color":"gray"}'],enchantments={levels:{"minecraft:unbreaking":1},show_in_tooltip:0b},hide_additional_tooltip={}] 1
give @s[team=Blue,scores={HasBeeShield=0},tag=!fullHotbar] minecraft:honey_bottle[custom_model_data=1,custom_name='[{"text":"[Utility] ","color":"dark_purple","bold":true},{"text":"Stinging Shield","color":"blue","bold":true}]',lore=['{"text":"Drink to deploy a Bee Shield","color":"gray"}','{"text":"in the direction you are looking.","color":"gray"}'],enchantments={levels:{"minecraft:unbreaking":1},show_in_tooltip:0b},hide_additional_tooltip={}] 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenBee