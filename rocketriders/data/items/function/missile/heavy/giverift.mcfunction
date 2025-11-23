##Gives executor a Rifter
#Antidupe check
execute store result score @s HasRift run clear @s *[custom_data~{id:"missile/rifter"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasRift %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasRift=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasRift 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasRift=1..},tag=!fullHotbar,tag=!BackRift,tag=!itemDeducted] actionbar {"text":"Rifter already obtained.","color":"aqua"}
execute if entity @s[scores={HasRift=1..},tag=!fullHotbar,tag=!BackRift,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackRift,tag=itemDeducted] actionbar {"text":"Rifter already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackRift,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasRift=0},tag=!fullHotbar,tag=!BackRift,tag=!itemDeducted] actionbar {"text":"Rifter obtained.","color":"aqua"}
execute if entity @s[scores={HasRift=0},tag=!fullHotbar] run function items:give/missile/rifter {count:1}

#Game tracking
execute unless entity @s[tag=BackRift] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenRift
execute unless entity @s[tag=BackRift] run tag @e[x=0,type=armor_stand,tag=Bot] add HasRift