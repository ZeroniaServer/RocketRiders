##Gives executor a Hurricane
#Antidupe check
execute store result score @s HasHur run clear @s *[custom_data~{id:"missile/hurricane"}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasHur %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasHur=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasHur 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasHur=1..},tag=!fullHotbar,tag=!BackHur,tag=!itemDeducted] actionbar {"text":"Hurricane already obtained.","color":"aqua"}
execute if entity @s[scores={HasHur=1..},tag=!fullHotbar,tag=!BackHur,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackHur,tag=itemDeducted] actionbar {"text":"Hurricane already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackHur,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasHur=0},tag=!fullHotbar,tag=!BackHur,tag=!itemDeducted] actionbar {"text":"Hurricane obtained.","color":"aqua"}
execute if entity @s[scores={HasHur=0},tag=!fullHotbar] run function items:give/missile/hurricane {count:1}

#Game tracking
execute unless entity @s[tag=BackHur] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenHur
execute unless entity @s[tag=BackHur] run tag @e[x=0,type=armor_stand,tag=Bot] add HasHur