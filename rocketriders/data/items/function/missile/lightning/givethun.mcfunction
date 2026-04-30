##Gives executor a Thunderbolt
#Antidupe check
execute store result score @s HasBolt run clear @s *[custom_data~{id:"missile/thunderbolt"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasBolt %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasBolt=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasBolt 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBolt=1..},tag=!fullHotbar,tag=!BackBolt,tag=!itemDeducted] actionbar {"text":"Thunderbolt already obtained.","color":"aqua"}
execute if entity @s[scores={HasBolt=1..},tag=!fullHotbar,tag=!BackBolt,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackBolt,tag=itemDeducted] actionbar {"text":"Thunderbolt already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackBolt,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasBolt=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/givethun) Gave Thunderbolt to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasBolt=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/givethun) Failed to give Thunderbolt to ",{selector:"@s"}]}
title @s[scores={HasBolt=0},tag=!fullHotbar,tag=!BackBolt,tag=!itemDeducted] actionbar {"text":"Thunderbolt obtained.","color":"aqua"}
execute if entity @s[scores={HasBolt=0},tag=!fullHotbar] run function items:give/missile/thunderbolt {count:1}

#Game tracking
execute unless entity @s[tag=BackBolt] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenBolt
execute unless entity @s[tag=BackBolt] run tag @e[x=0,type=armor_stand,tag=Bot] add HasBolt