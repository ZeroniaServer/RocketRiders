##Gives executor a Lifter
#Antidupe check
execute store result score @s HasLift run clear @s dolphin_spawn_egg 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasLift %= 64 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasLift=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasLift 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasLift=1..},tag=!fullHotbar,tag=!BackLift,tag=!itemDeducted] actionbar {"text":"Lifter already obtained.","color":"aqua"}
execute if entity @s[scores={HasLift=1..},tag=!fullHotbar,tag=!BackLift,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackLift,tag=itemDeducted] actionbar {"text":"Lifter already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackLift,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasLift=0},tag=!fullHotbar,tag=!BackLift,tag=!itemDeducted] actionbar {"text":"Lifter obtained.","color":"aqua"}
loot give @s[scores={HasLift=0},tag=!fullHotbar] loot items:normal/lifter
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasLift=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackLift] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenLift
execute unless entity @s[tag=BackLift] run tag @e[x=0,type=armor_stand,tag=Bot] add HasLift