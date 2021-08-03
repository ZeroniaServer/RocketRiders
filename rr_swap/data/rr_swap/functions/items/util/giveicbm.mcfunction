#Antidupe check
execute store result score @s HasVortex run clear @s egg{CustomModelData:3} 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasVortex %= 16 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasVortex=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasVortex 0

#Title/giving
title @s[scores={HasVortex=1..},tag=!fullHotbar] actionbar {"text":"ICBM already obtained.","color":"aqua"}
execute if entity @s[scores={HasVortex=1..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasVortex=0},tag=!fullHotbar] actionbar {"text":"ICBM obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasVortex=0},tag=!fullHotbar] egg{CustomModelData:3,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"ICBM","color":"gold","bold":true}]',Lore:['{"text":"Short for \\"intercontinental ballistic missile\\".","color":"gray"}','{"text":"Blows up upon impact or after short flight.","color":"gray"}']},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:7} 1
give @s[team=Blue,scores={HasVortex=0},tag=!fullHotbar] egg{CustomModelData:3,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"ICBM","color":"blue","bold":true}]',Lore:['{"text":"Short for \\"intercontinental ballistic missile\\".","color":"gray"}','{"text":"Blows up upon impact or after short flight.","color":"gray"}']},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:7} 1

tag @e[type=armor_stand,tag=Selection] add givenICBM