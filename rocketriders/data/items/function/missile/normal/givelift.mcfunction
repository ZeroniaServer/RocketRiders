##Gives executor a Lifter
#Antidupe check
execute store result score @s HasLift run clear @s *[custom_data~{id:"missile/lifter"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasLift %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasLift=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasLift 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasLift=1..},tag=!fullHotbar,tag=!BackLift,tag=!itemDeducted] actionbar {"text":"Lifter already obtained.","color":"aqua"}
execute if entity @s[scores={HasLift=1..},tag=!fullHotbar,tag=!BackLift,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackLift,tag=itemDeducted] actionbar {"text":"Lifter already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackLift,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasLift=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/normal/givelift) Gave Lifter to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasLift=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/normal/givelift) Failed to give Lifter to ",{selector:"@s"}]}
title @s[scores={HasLift=0},tag=!fullHotbar,tag=!BackLift,tag=!itemDeducted] actionbar {"text":"Lifter obtained.","color":"aqua"}
execute if entity @s[scores={HasLift=0},tag=!fullHotbar] run function items:give/missile/lifter {count:1}

#Game tracking
execute unless entity @s[tag=BackLift] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenLift
execute unless entity @s[tag=BackLift] run tag @e[x=0,type=armor_stand,tag=Bot] add HasLift