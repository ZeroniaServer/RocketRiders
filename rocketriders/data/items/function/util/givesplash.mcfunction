##Gives executor a Splash
#Antidupe check
execute store result score @s HasSplash run clear @s *[custom_data~{id:"splash"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasSplash %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasSplash=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasSplash 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasSplash=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Splash already obtained.","color":"aqua"}
execute if entity @s[scores={HasSplash=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Splash already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasSplash=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/util/givesplash) Gave Splash to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasSplash=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/util/givesplash) Failed to give Splash to ",{selector:"@s"}]}
title @s[scores={HasSplash=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Splash obtained.","color":"aqua"}
execute if entity @s[scores={HasSplash=0},tag=!fullHotbar] run function items:give/splash {count:1}

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenSplash