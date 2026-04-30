##Gives executor a Blade
#Antidupe check
execute store result score @s HasBlade run clear @s *[custom_data~{id:"missile/blade"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasBlade %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasBlade=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasBlade 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBlade=1..},tag=!fullHotbar,tag=!BackBlade,tag=!itemDeducted] actionbar {"text":"Blade already obtained.","color":"aqua"}
execute if entity @s[scores={HasBlade=1..},tag=!fullHotbar,tag=!BackBlade,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackBlade,tag=itemDeducted] actionbar {"text":"Blade already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackBlade,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasBlade=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/giveblade) Gave Blade to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasBlade=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/giveblade) Failed to give Blade to ",{selector:"@s"}]}
title @s[scores={HasBlade=0},tag=!fullHotbar,tag=!BackBlade,tag=!itemDeducted] actionbar {"text":"Blade obtained.","color":"aqua"}
execute if entity @s[scores={HasBlade=0},tag=!fullHotbar] run function items:give/missile/blade {count:1}

#Game tracking
execute unless entity @s[tag=BackBlade] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenBlade
execute unless entity @s[tag=BackBlade] run tag @e[x=0,type=armor_stand,tag=Bot] add HasBlade