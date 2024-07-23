#Antidupe check
execute store result score @s HasICBM run clear @s egg[custom_data~{icbm:1b}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasICBM %= 16 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasICBM=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasICBM 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasICBM=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"ICBM already obtained.","color":"aqua"}
execute if entity @s[scores={HasICBM=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"ICBM already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasICBM=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"ICBM obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasICBM=0},tag=!fullHotbar] egg[max_stack_size=64,enchantment_glint_override=true,custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"ICBM","color":"gold","bold":true}]',lore=['{"text":"Short for \\"intercontinental ballistic missile\\".","color":"gray"}','{"text":"Blows up upon impact or after short flight.","color":"gray"}'],custom_model_data=3,custom_data={icbm:1b}] 1
give @s[team=Blue,scores={HasICBM=0},tag=!fullHotbar] egg[max_stack_size=64,enchantment_glint_override=true,custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"ICBM","color":"blue","bold":true}]',lore=['{"text":"Short for \\"intercontinental ballistic missile\\".","color":"gray"}','{"text":"Blows up upon impact or after short flight.","color":"gray"}'],custom_model_data=3,custom_data={icbm:1b}] 1

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenICBM