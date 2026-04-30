##Gives executor a Bullet
#Antidupe check
execute store result score @s HasBullet run clear @s *[custom_data~{id:"missile/bullet"}] 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasBullet %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasBullet=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasBullet 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBullet=1..},tag=!fullHotbar,tag=!BackBull,tag=!itemDeducted] actionbar {"text":"Bullet already obtained.","color":"light_purple"}
execute if entity @s[scores={HasBullet=1..},tag=!fullHotbar,tag=!BackBull,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackBull,tag=itemDeducted] actionbar {"text":"Bullet already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=!BackBull,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if entity @s[scores={HasBullet=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/givebull) Gave Bullet to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless entity @s[scores={HasBullet=0},tag=!fullHotbar] run function custom:log {message:["(items:item/missile/givebull) Failed to give Bullet to ",{selector:"@s"}]}
title @s[scores={HasBullet=0},tag=!fullHotbar,tag=!BackBull,tag=!itemDeducted] actionbar {"text":"Bullet obtained.","color":"light_purple"}
execute if entity @s[scores={HasBullet=0},tag=!fullHotbar] run function items:give/missile/bullet {count:1}

#Game tracking
execute unless entity @s[tag=BackBull] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenBull
execute unless entity @s[tag=BackBull] run tag @e[x=0,type=armor_stand,tag=Bot] add HasBullet