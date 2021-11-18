#Antidupe check
execute store result score @s HasICBM run clear @s egg{icbm:1b} 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasICBM %= 16 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasICBM=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasICBM 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasICBM=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"ICBM already obtained.","color":"aqua"}
execute if entity @s[scores={HasICBM=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"ICBM already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasICBM=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"ICBM obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasICBM=0},tag=!fullHotbar] egg{icbm:1b,CustomModelData:3,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"ICBM","color":"gold","bold":true}]',Lore:['{"text":"Short for \\"intercontinental ballistic missile\\".","color":"gray"}','{"text":"Blows up upon impact or after short flight.","color":"gray"}']},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:7} 1
give @s[team=Blue,scores={HasICBM=0},tag=!fullHotbar] egg{icbm:1b,CustomModelData:3,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"ICBM","color":"blue","bold":true}]',Lore:['{"text":"Short for \\"intercontinental ballistic missile\\".","color":"gray"}','{"text":"Blows up upon impact or after short flight.","color":"gray"}']},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:7} 1

tag @e[type=armor_stand,tag=Selection] add givenICBM