title @s[scores={HasBeeShield=1..},tag=!fullHotbar] actionbar {"text":"Stinging Shield already obtained.","color":"light_purple"}
title @s[scores={HasBeeShield=0},tag=!fullHotbar] actionbar {"text":"Stinging Shield obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasBeeShield=0},tag=!fullHotbar] honey_bottle{display:{Name:'[{"text":"[Utility] ","color":"dark_purple","bold":"true"},{"text":"Stinging Shield","color":"gold","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Drink to deploy a Bee Shield","color":"gray"}','{"text":"in the direction you are looking.","color":"gray"}']},HideFlags:63,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
give @s[team=Blue,scores={HasBeeShield=0},tag=!fullHotbar] honey_bottle{display:{Name:'[{"text":"[Utility] ","color":"dark_purple","bold":"true"},{"text":"Stinging Shield","color":"blue","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Drink to deploy a Bee Shield","color":"gray"}','{"text":"in the direction you are looking.","color":"gray"}']},HideFlags:63,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
tag @e[tag=Selection] add givenBee