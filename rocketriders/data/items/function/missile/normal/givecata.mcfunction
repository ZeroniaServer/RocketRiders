##Gives executor a Catapult
#Antidupe check
execute store result score @s HasCata run clear @s *[custom_data~{id:"missile/catapult"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasCata %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasCata=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasCata 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasCata=1..},tag=!fullHotbar,tag=!BackCata,tag=!itemDeducted] actionbar {"text":"Catapult already obtained.","color":"aqua"}
execute if entity @s[scores={HasCata=1..},tag=!fullHotbar,tag=!BackCata,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackCata,tag=itemDeducted] actionbar {"text":"Catapult already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackCata,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasCata=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/normal/givecata) Gave Catapult to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasCata=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/normal/givecata) Failed to give Catapult to ",{selector:"@s"}]}
title @s[scores={HasCata=0},tag=!fullHotbar,tag=!BackCata,tag=!itemDeducted] actionbar {"text":"Catapult obtained.","color":"aqua"}
execute if entity @s[scores={HasCata=0},tag=!fullHotbar] run function items:give/missile/catapult {count:1}

#Game tracking
execute unless entity @s[tag=BackCata] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenCata
execute unless entity @s[tag=BackCata] run tag @e[x=0,type=armor_stand,tag=Bot] add HasCata