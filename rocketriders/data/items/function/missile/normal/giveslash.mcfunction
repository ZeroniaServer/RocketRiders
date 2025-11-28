##Gives executor a Slasher
#Antidupe check
execute store result score @s HasSlash run clear @s *[custom_data~{id:"missile/slasher"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasSlash %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasSlash=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasSlash 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasSlash=1..},tag=!fullHotbar,tag=!BackSlash,tag=!itemDeducted] actionbar {"text":"Slasher already obtained.","color":"aqua"}
execute if entity @s[scores={HasSlash=1..},tag=!fullHotbar,tag=!BackSlash,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackSlash,tag=itemDeducted] actionbar {"text":"Slasher already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackSlash,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasSlash=0},tag=!fullHotbar,tag=!BackSlash,tag=!itemDeducted] actionbar {"text":"Slasher obtained.","color":"aqua"}
execute if entity @s[scores={HasSlash=0},tag=!fullHotbar] run function items:give/missile/slasher {count:1}

#Game tracking
execute unless entity @s[tag=BackSlash] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenSlash
execute unless entity @s[tag=BackSlash] run tag @e[x=0,type=armor_stand,tag=Bot] add HasSlash