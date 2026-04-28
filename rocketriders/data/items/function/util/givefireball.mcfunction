##Gives executor a Fireball
#Antidupe check
execute store result score @s HasFireball run clear @s *[custom_data~{id:"fireball"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasFireball %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasFireball=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasFireball 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasFireball=1..},tag=!fullHotbar,tag=!BackFireball,tag=!itemDeducted] actionbar {"text":"Fireball already obtained.","color":"aqua"}
execute if entity @s[scores={HasFireball=1..},tag=!fullHotbar,tag=!BackFireball,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackFireball,tag=itemDeducted] actionbar {"text":"Fireball already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackFireball,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasFireball=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/util/givefireball) Gave Fireball to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasFireball=0},tag=!fullHotbar] run function custom:log {message:["(items:missile/util/givefireball) Failed to give Fireball to ",{selector:"@s"}]}
title @s[scores={HasFireball=0},tag=!fullHotbar,tag=!BackFireball,tag=!itemDeducted] actionbar {"text":"Fireball obtained.","color":"aqua"}
execute if entity @s[scores={HasFireball=0},tag=!fullHotbar] run function items:give/fireball {count:1}

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=givenFireball,tag=tetrisTime] add givenFireballTwice
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenFireball