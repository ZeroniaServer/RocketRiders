##Gives executor a Chronullifier
#Antidupe check
execute store result score @s HasNull run clear @s *[custom_data~{id:"missile/chronullifier"}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasNull %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasNull=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasNull 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasNull=1..},tag=!fullHotbar,tag=!BackNull,tag=!itemDeducted] actionbar {"text":"Chronullifier already obtained.","color":"aqua"}
execute if entity @s[scores={HasNull=1..},tag=!fullHotbar,tag=!BackNull,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackNull,tag=itemDeducted] actionbar {"text":"Chronullifier already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackNull,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasNull=0},tag=!fullHotbar,tag=!BackNull,tag=!itemDeducted] actionbar {"text":"Chronullifier obtained.","color":"aqua"}
execute if entity @s[scores={HasNull=0},tag=!fullHotbar] run function items:give/missile/chronullifier {count:1}

#Game tracking
execute unless entity @s[tag=BackNull] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenNull
execute unless entity @s[tag=BackNull] run tag @e[x=0,type=armor_stand,tag=Bot] add HasNull