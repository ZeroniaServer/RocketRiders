##Gives executor a Warhead
#Antidupe check
execute store result score @s HasWar run clear @s *[custom_data~{id:"missile/warhead"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasWar %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasWar=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasWar 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasWar=1..},tag=!fullHotbar,tag=!BackWar,tag=!itemDeducted] actionbar {"text":"Warhead already obtained.","color":"aqua"}
execute if entity @s[scores={HasWar=1..},tag=!fullHotbar,tag=!BackWar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackWar,tag=itemDeducted] actionbar {"text":"Warhead already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackWar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasWar=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/heavy/givewar) Gave Warhead to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasWar=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/heavy/givewar) Failed to give Warhead to ",{selector:"@s"}]}
title @s[scores={HasWar=0},tag=!fullHotbar,tag=!BackWar,tag=!itemDeducted] actionbar {"text":"Warhead obtained.","color":"aqua"}
execute if entity @s[scores={HasWar=0},tag=!fullHotbar] run function items:give/missile/warhead {count:1}

#Game tracking
execute unless entity @s[tag=BackWar] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenWar
execute unless entity @s[tag=BackWar] run tag @e[x=0,type=armor_stand,tag=Bot] add HasWar