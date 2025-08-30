#Antidupe check
execute store result score @s HasBeeShield run clear @s *[custom_data~{id:"stinging_shield"}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasBeeShield %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasBeeShield=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasBeeShield 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBeeShield=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Stinging Shield already obtained.","color":"light_purple"}
execute if entity @s[scores={HasBeeShield=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Stinging Shield already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBeeShield=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Stinging Shield obtained.","color":"light_purple"}
loot give @s[scores={HasBeeShield=0},tag=!fullHotbar] loot items:util/stinging_shield
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasBeeShield=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenBee