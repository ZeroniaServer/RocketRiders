##Gives executor a Hypersonic
#Antidupe check
execute store result score @s HasHyper run clear @s *[custom_data~{id:"missile/hypersonic"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasHyper %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasHyper=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasHyper 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasHyper=1..},tag=!fullHotbar,tag=!BackHyper,tag=!itemDeducted] actionbar {"text":"Hypersonic already obtained.","color":"light_purple"}
execute if entity @s[scores={HasHyper=1..},tag=!fullHotbar,tag=!BackHyper,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackHyper,tag=itemDeducted] actionbar {"text":"Hypersonic already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=!BackHyper,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

title @s[scores={HasHyper=0},tag=!fullHotbar,tag=!BackHyper,tag=!itemDeducted] actionbar {"text":"Hypersonic obtained.","color":"light_purple"}
execute if entity @s[scores={HasHyper=0},tag=!fullHotbar] run function items:give/missile/hypersonic {count:1}

#Game tracking
execute unless entity @s[tag=BackHyper] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenHyper
execute unless entity @s[tag=BackHyper] run tag @e[x=0,type=armor_stand,tag=Bot] add HasHyper