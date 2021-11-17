##Gives executor an Elder Guardian
#Antidupe check
execute store result score @s HasGuard run clear @s elder_guardian_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasGuard %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasGuard=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasGuard 0

#Title/giving
title @s[scores={HasGuard=1..},tag=!fullHotbar,tag=!BackGuard,tag=!itemDeducted] actionbar {"text":"Elder Guardian already obtained.","color":"aqua"}
execute if entity @s[scores={HasGuard=1..},tag=!fullHotbar,tag=!BackGuard,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasGuard=0},tag=!fullHotbar,tag=!BackGuard,tag=!itemDeducted] actionbar {"text":"Elder Guardian obtained.","color":"aqua"}
loot give @s[scores={HasGuard=0},tag=!fullHotbar] loot items:normal/eguard
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasGuard=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackGuard] run tag @e[type=armor_stand,tag=Selection] add givenGuard
execute unless entity @s[tag=BackGuard] run tag @e[type=armor_stand,tag=Bot] add BotHasGuard