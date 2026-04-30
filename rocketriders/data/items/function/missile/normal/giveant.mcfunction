##Gives executor an A.N.T.
#Antidupe check
execute store result score @s HasAnt run clear @s *[custom_data~{id:"missile/ant"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasAnt %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasAnt=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasAnt 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasAnt=1..},tag=!fullHotbar,tag=!BackAnt,tag=!itemDeducted] actionbar {"text":"A.N.T. already obtained.","color":"aqua"}
execute if entity @s[scores={HasAnt=1..},tag=!fullHotbar,tag=!BackAnt,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackAnt,tag=itemDeducted] actionbar {"text":"A.N.T. already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackAnt,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasAnt=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/giveant) Gave A.N.T. to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasAnt=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/giveant) Failed to give A.N.T. to ",{selector:"@s"}]}
title @s[scores={HasAnt=0},tag=!fullHotbar,tag=!BackAnt,tag=!itemDeducted] actionbar {"text":"A.N.T. obtained.","color":"aqua"}
execute if entity @s[scores={HasAnt=0},tag=!fullHotbar] run function items:give/missile/ant {count:1}

#Game tracking
execute unless entity @s[tag=BackAnt] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenAnt
execute unless entity @s[tag=BackAnt] run tag @e[x=0,type=armor_stand,tag=Bot] add HasAnt