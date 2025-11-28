#Antidupe check
execute store result score @s HasICBM run clear @s *[custom_data~{id:"icbm"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasICBM %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasICBM=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasICBM 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasICBM=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"ICBM already obtained.","color":"aqua"}
execute if entity @s[scores={HasICBM=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"ICBM already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasICBM=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"ICBM obtained.","color":"aqua"}
execute if entity @s[scores={HasICBM=0},tag=!fullHotbar] run function items:give/icbm {count:1}

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenICBM