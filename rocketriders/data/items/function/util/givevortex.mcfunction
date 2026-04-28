##Gives executor a Vortex
#Antidupe check
execute store result score @s HasVortex run clear @s *[custom_data~{id:"vortex"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasVortex %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasVortex=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasVortex 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasVortex=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Vortex already obtained","color":"aqua"}
execute if entity @s[scores={HasVortex=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Vortex already obtained","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasVortex=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/util/givevortex) Gave Vortex to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasVortex=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/util/givevortex) Failed to give Vortex to ",{selector:"@s"}]}
title @s[scores={HasVortex=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Vortex obtained","color":"aqua"}
execute if entity @s[scores={HasVortex=0},tag=!fullHotbar] run function items:give/vortex {count:1}

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenVortex