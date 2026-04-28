##Gives executor a Nova Rocket
#Antidupe check
execute unless predicate game:game_rules/item_stacking/on store result score @s HasNova run clear @s *[custom_data~{id:"nova_rocket"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasNova 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasNova=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Nova Rocket already obtained.","color":"aqua"}
execute if entity @s[scores={HasNova=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Nova Rocket already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasNova=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/util/givenova) Gave Nova Rocket to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasNova=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/util/givenova) Failed to give Nova Rocket to ",{selector:"@s"}]}
title @s[scores={HasNova=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Nova Rocket obtained.","color":"aqua"}
execute if entity @s[scores={HasNova=0},tag=!fullHotbar] run function items:give/nova_rocket {count:1}

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenNova