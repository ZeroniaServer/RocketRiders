##Gives executor a Blue Surprise Egg
#Antidupe check
execute store result score @s[tag=!itemDeducted] HasSurprise run clear @s #custom:missile[custom_data~{spawn_egg:{type:"surprise_missile"}}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasSurprise %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasSurprise=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasSurprise 0
execute unless predicate game:game_rules/item_stacking/on if entity @s[scores={HasSurprise=1..3},tag=fullHotbar] run tag @s remove fullHotbar

#Title/giving
title @s[scores={HasSurprise=3..},tag=!fullHotbar,tag=!BackSurprise] actionbar {"text":"Surprise Egg already obtained.","color":"aqua"}
execute if entity @s[scores={HasSurprise=3..},tag=!fullHotbar,tag=!BackSurprise] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasSurprise=..2},tag=!fullHotbar,tag=!BackSurprise] actionbar {"text":"Surprise Egg obtained.","color":"aqua"}
execute if entity @s[predicate=custom:team/blue,scores={HasSurprise=..2},tag=!fullHotbar] run function items:give/surprise_missile/all {count:1}
