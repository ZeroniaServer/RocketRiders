##Gives executor a Vortex
#Antidupe check
execute store result score @s HasVortex run clear @s *[custom_data~{id:"vortex"}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasVortex %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasVortex=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasVortex 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasVortex=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Vortex already obtained","color":"aqua"}
execute if entity @s[scores={HasVortex=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Vortex already obtained","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasVortex=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Vortex obtained","color":"aqua"}
loot give @s[scores={HasVortex=0},tag=!fullHotbar] loot items:util/vortex
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasVortex=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenVortex