#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasVortex run clear @s egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasVortex 0

#Title/giving
title @s[scores={HasVortex=1..},tag=!fullHotbar] actionbar {"text":"ICBM already obtained.","color":"aqua"}
title @s[scores={HasVortex=0},tag=!fullHotbar] actionbar {"text":"ICBM obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasVortex=0},tag=!fullHotbar] egg{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"ICBM","color":"gold","bold":"true"}]',Lore:['{"text":"An intercontinental ballistic missile.","color":"gray"}','{"text":"Blows up upon impact.","color":"gray"}']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1
give @s[team=Blue,scores={HasVortex=0},tag=!fullHotbar] egg{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"ICBM","color":"blue","bold":"true"}]',Lore:['{"text":"An intercontinental ballistic missile.","color":"gray"}','{"text":"Blows up upon impact.","color":"gray"}']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1

tag @e[tag=Selection,type=armor_stand] add givenICBM