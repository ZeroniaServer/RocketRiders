##Gives executor an Obsidian Shield
#Antidupe check
execute store result score @s HasObshield run clear @s enderman_spawn_egg 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasObshield %= 64 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasObshield=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasObshield 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasObshield=1..},tag=!fullHotbar,tag=!BackObshield,tag=!itemDeducted] actionbar {"text":"Obsidian Shield already obtained.","color":"aqua"}
execute if entity @s[scores={HasObshield=1..},tag=!fullHotbar,tag=!BackObshield,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackObshield,tag=itemDeducted] actionbar {"text":"Obsidian Shield already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackObshield,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasObshield=0},tag=!fullHotbar,tag=!BackObshield,tag=!itemDeducted] actionbar {"text":"Obsidian Shield obtained.","color":"aqua"}
loot give @s[scores={HasObshield=0},tag=!fullHotbar] loot items:util/obsidian_shield
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasObshield=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenObshield