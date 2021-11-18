##Gives executor a Nullifier
#Antidupe check
execute store result score @s HasNull run clear @s phantom_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasNull %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasNull=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasNull 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasNull=1..},tag=!fullHotbar,tag=!BackNull,tag=!itemDeducted] actionbar {"text":"Chronullifier already obtained.","color":"aqua"}
execute if entity @s[scores={HasNull=1..},tag=!fullHotbar,tag=!BackNull,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackNull,tag=itemDeducted] actionbar {"text":"Chronullifier already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackNull,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasNull=0},tag=!fullHotbar,tag=!BackNull,tag=!itemDeducted] actionbar {"text":"Chronullifier obtained.","color":"aqua"}
loot give @s[scores={HasNull=0},tag=!fullHotbar] loot items:normal/chronull
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasNull=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackNull] run tag @e[type=armor_stand,tag=Selection] add givenNull
execute unless entity @s[tag=BackNull] run tag @e[type=armor_stand,tag=Bot] add BotHasNull