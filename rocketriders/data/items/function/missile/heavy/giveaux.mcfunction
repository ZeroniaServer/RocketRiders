##Gives executor an Auxiliary
#Antidupe check
execute store result score @s HasAux run clear @s *[custom_data~{id:"missile/auxiliary"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasAux %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasAux=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasAux 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasAux=1..},tag=!fullHotbar,tag=!BackAux,tag=!itemDeducted] actionbar {"text":"Auxiliary already obtained.","color":"aqua"}
execute if entity @s[scores={HasAux=1..},tag=!fullHotbar,tag=!BackAux,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackAux,tag=itemDeducted] actionbar {"text":"Auxiliary already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackAux,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasAux=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/giveaux) Gave Auxiliary to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasAux=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/giveaux) Failed to give Auxiliary to ",{selector:"@s"}]}
title @s[scores={HasAux=0},tag=!fullHotbar,tag=!BackAux,tag=!itemDeducted] actionbar {"text":"Auxiliary obtained.","color":"aqua"}
execute if entity @s[scores={HasAux=0},tag=!fullHotbar] run function items:give/missile/auxiliary {count:1}

#Game tracking
execute unless entity @s[tag=BackAux] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenAux
execute unless entity @s[tag=BackAux] run tag @e[x=0,type=armor_stand,tag=Bot] add HasAux