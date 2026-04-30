##Gives executor a Juggerbuster
#Antidupe check
execute store result score @s HasJug run clear @s *[custom_data~{id:"missile/juggerbuster"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasJug %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasJug=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasJug 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasJug=1..},tag=!fullHotbar,tag=!BackJug,tag=!itemDeducted] actionbar {"text":"Juggerbuster already obtained.","color":"aqua"}
execute if entity @s[scores={HasJug=1..},tag=!fullHotbar,tag=!BackJug,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackJug,tag=itemDeducted] actionbar {"text":"Juggerbuster already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackJug,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasJug=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/heavy/givejbuster) Gave Juggerbuster to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasJug=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/heavy/givejbuster) Failed to give Juggerbuster to ",{selector:"@s"}]}
title @s[scores={HasJug=0},tag=!fullHotbar,tag=!BackJug,tag=!itemDeducted] actionbar {"text":"Juggerbuster obtained.","color":"aqua"}
execute if entity @s[scores={HasJug=0},tag=!fullHotbar] run function items:give/missile/juggerbuster {count:1}

#Game tracking
execute unless entity @s[tag=BackJug] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenJbust
execute unless entity @s[tag=BackJug] run tag @e[x=0,type=armor_stand,tag=Bot] add HasJug