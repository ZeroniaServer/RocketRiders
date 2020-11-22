#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasBeeShield run clear @s honey_bottle 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasBeeShield 0

#Title/giving
title @s[scores={HasBeeShield=1..},tag=!fullHotbar] actionbar {"text":"Stinging Shield already obtained.","color":"light_purple"}
title @s[scores={HasBeeShield=0},tag=!fullHotbar] actionbar {"text":"Stinging Shield obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasBeeShield=0},tag=!fullHotbar] honey_bottle{display:{Name:'[{"text":"[Utility] ","color":"dark_purple","bold":"true"},{"text":"Stinging Shield","color":"gold","bold":"true"}]',Lore:['{"text":"Drink to deploy a Bee Shield","color":"gray"}','{"text":"in the direction you are looking.","color":"gray"}']},HideFlags:63,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
give @s[team=Blue,scores={HasBeeShield=0},tag=!fullHotbar] honey_bottle{display:{Name:'[{"text":"[Utility] ","color":"dark_purple","bold":"true"},{"text":"Stinging Shield","color":"blue","bold":"true"}]',Lore:['{"text":"Drink to deploy a Bee Shield","color":"gray"}','{"text":"in the direction you are looking.","color":"gray"}']},HideFlags:63,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
tag @e[tag=Selection,type=armor_stand] add givenBee