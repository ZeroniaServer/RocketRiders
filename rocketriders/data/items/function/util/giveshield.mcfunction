##Gives executor a Shield
#Antidupe check
execute store result score @s HasShield run clear @s snowball[custom_data~{shield:1b}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasShield %=  constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasShield=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasShield 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasShield=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Shield already obtained.","color":"aqua"}
execute if entity @s[scores={HasShield=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Shield already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasShield=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Shield obtained.","color":"aqua"}
loot give @s[scores={HasShield=0},tag=!fullHotbar] loot items:util/shield

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=givenShield,tag=tetrisTime] add givenShieldTwice
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenShield