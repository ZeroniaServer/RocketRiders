#Antidupe check
execute store result score @s HasLavaSplash run clear @s *[custom_data~{id:"lava_splash"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasLavaSplash %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasLavaSplash=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasLavaSplash 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasLavaSplash=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Lava Splash already obtained.","color":"light_purple"}
execute if entity @s[scores={HasLavaSplash=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Lava Splash already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasLavaSplash=0},tag=!fullHotbar] run function custom:log {message:["(rr_powerups:items/powerup/givelavasplash) Gave Lava Splash to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasLavaSplash=0},tag=!fullHotbar] run function custom:log {message:["(rr_powerups:items/powerup/givelavasplash) Failed to give Lava Splash to ",{selector:"@s"}]}
title @s[scores={HasLavaSplash=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Lava Splash obtained.","color":"light_purple"}
loot give @s[scores={HasLavaSplash=0},tag=!fullHotbar] loot items:item/lava_splash
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasLavaSplash=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenLavaSplash