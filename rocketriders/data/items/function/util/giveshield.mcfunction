##Gives executor a Shield
#Antidupe check
execute store result score @s HasShield run clear @s *[custom_data~{id:"shield"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasShield %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasShield=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasShield 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasShield=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Shield already obtained.","color":"aqua"}
execute if entity @s[scores={HasShield=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Shield already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasShield=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Shield obtained.","color":"aqua"}
execute if entity @s[scores={HasShield=0},tag=!fullHotbar] run function items:give/shield {count:1}

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=givenShield,tag=tetrisTime] add givenShieldTwice
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenShield