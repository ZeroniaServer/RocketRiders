##Gives executor a Broadsword
#Antidupe check
execute store result score @s HasBroad run clear @s *[custom_data~{id:"missile/broadsword"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasBroad %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasBroad=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasBroad 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBroad=1..},tag=!fullHotbar,tag=!BackBroad,tag=!itemDeducted] actionbar {"text":"Broadsword already obtained.","color":"light_purple"}
execute if entity @s[scores={HasBroad=1..},tag=!fullHotbar,tag=!BackBroad,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackBroad,tag=itemDeducted] actionbar {"text":"Broadsword already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=!BackBroad,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBroad=0},tag=!fullHotbar,tag=!BackBroad,tag=!itemDeducted] actionbar {"text":"Broadsword obtained.","color":"light_purple"}
execute if entity @s[scores={HasBroad=0},tag=!fullHotbar] run function items:give/missile/broadsword {count:1}

#Game tracking
execute unless entity @s[tag=BackBroad] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenBroad
execute unless entity @s[tag=BackBroad] run tag @e[x=0,type=armor_stand,tag=Bot] add HasBroad