##Gives executor a Citadel
#Antidupe check
execute store result score @s HasCitadel run clear @s *[custom_data~{id:"missile/citadel"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasCitadel %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasCitadel=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasCitadel 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasCitadel=1..},tag=!fullHotbar,tag=!BackCitadel,tag=!itemDeducted] actionbar {"text":"Citadel already obtained.","color":"aqua"}
execute if entity @s[scores={HasCitadel=1..},tag=!fullHotbar,tag=!BackCitadel,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackCitadel,tag=itemDeducted] actionbar {"text":"Citadel already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackCitadel,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasCitadel=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/givecitadel) Gave Citadel to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasCitadel=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/givecitadel) Failed to give Citadel to ",{selector:"@s"}]}
title @s[scores={HasCitadel=0},tag=!fullHotbar,tag=!BackCitadel,tag=!itemDeducted] actionbar {"text":"Citadel obtained.","color":"aqua"}
execute if entity @s[scores={HasCitadel=0},tag=!fullHotbar] run function items:give/missile/citadel {count:1}

#Game tracking
execute unless entity @s[tag=BackCitadel] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenCita
execute unless entity @s[tag=BackCitadel] run tag @e[x=0,type=armor_stand,tag=Bot] add HasCita