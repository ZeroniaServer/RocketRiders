##Gives executor a Duplex
#Antidupe check
execute store result score @s HasDuplex run clear @s parrot_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasDuplex %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasDuplex=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasDuplex 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasDuplex=1..},tag=!fullHotbar,tag=!BackDuplex,tag=!itemDeducted] actionbar {"text":"Duplex already obtained.","color":"light_purple"}
execute if entity @s[scores={HasDuplex=1..},tag=!fullHotbar,tag=!BackDuplex,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackDuplex,tag=itemDeducted] actionbar {"text":"Duplex already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=!BackDuplex,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasDuplex=0},tag=!fullHotbar,tag=!BackDuplex,tag=!itemDeducted] actionbar {"text":"Duplex obtained.","color":"light_purple"}
loot give @s[scores={HasDuplex=0},tag=!fullHotbar] loot items:special/duplex
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasDuplex=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackDuplex] run tag @e[type=armor_stand,tag=Selection,tag=tetrisTime] add givenDuplex
execute unless entity @s[tag=BackDuplex] run tag @e[type=armor_stand,tag=Bot] add BotHasDuplex