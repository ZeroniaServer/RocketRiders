##Gives executor a Duplex
#Antidupe check
execute store result score @s HasDuplex run clear @s *[custom_data~{id:"missile/duplex"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasDuplex %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasDuplex=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasDuplex 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasDuplex=1..},tag=!fullHotbar,tag=!BackDuplex,tag=!itemDeducted] actionbar {"text":"Duplex already obtained.","color":"light_purple"}
execute if entity @s[scores={HasDuplex=1..},tag=!fullHotbar,tag=!BackDuplex,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackDuplex,tag=itemDeducted] actionbar {"text":"Duplex already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=!BackDuplex,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasDuplex=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/giveduplex) Gave Duplex to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasDuplex=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/giveduplex) Failed to give Duplex to ",{selector:"@s"}]}
title @s[scores={HasDuplex=0},tag=!fullHotbar,tag=!BackDuplex,tag=!itemDeducted] actionbar {"text":"Duplex obtained.","color":"light_purple"}
execute if entity @s[scores={HasDuplex=0},tag=!fullHotbar] run function items:give/missile/duplex {count:1}

#Game tracking
execute unless entity @s[tag=BackDuplex] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenDuplex
execute unless entity @s[tag=BackDuplex] run tag @e[x=0,type=armor_stand,tag=Bot] add HasDuplex