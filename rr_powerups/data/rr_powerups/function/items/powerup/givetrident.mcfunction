#Antidupe check
execute unless predicate game:game_rules/item_stacking/on store result score @s HasTrident run clear @s trident 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasTrident 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasTrident=1..},tag=!itemDeducted] actionbar {"text":"Trident repaired.","color":"light_purple"}
execute if entity @s[scores={HasTrident=1..},tag=!itemDeducted] at @s run playsound minecraft:block.grindstone.use master @s ~ ~ ~ 0.6 1
title @s[tag=itemDeducted] actionbar {"text":"Trident repaired.","color":"light_purple"}
execute if entity @s[tag=itemDeducted] at @s run playsound minecraft:block.grindstone.use master @s ~ ~ ~ 0.6 1
clear @s[scores={HasTrident=1..}] trident 1
tag @s[scores={HasTrident=1..}] remove fullHotbar

execute if predicate game:game_rules/show_debug_logs/on if entity @s[tag=!fullHotbar] run function custom:log {message:["(rr_powerups:items/powerup/givetrident) Gave Trident to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[tag=!fullHotbar] run function custom:log {message:["(rr_powerups:items/powerup/givetrident) Failed to give Trident to ",{selector:"@s"}]}
title @s[scores={HasTrident=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Trident obtained.","color":"light_purple"}
loot give @s[tag=!fullHotbar] loot items:misc/trident
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasTrident=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenTrident