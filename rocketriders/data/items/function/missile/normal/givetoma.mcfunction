##Gives executor a TomaTwo
#Antidupe check
execute store result score @s HasToma run clear @s *[custom_data~{id:"missile/tomatwo"}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasToma %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasToma=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasToma 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasToma=1..},tag=!fullHotbar,tag=!BackToma,tag=!itemDeducted] actionbar {"text":"TomaTwo already obtained.","color":"aqua"}
execute if entity @s[scores={HasToma=1..},tag=!fullHotbar,tag=!BackToma,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackToma,tag=itemDeducted] actionbar {"text":"TomaTwo already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackToma,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasToma=0},tag=!fullHotbar,tag=!BackToma,tag=!itemDeducted] actionbar {"text":"TomaTwo obtained.","color":"aqua"}
execute if entity @s[scores={HasToma=0},tag=!fullHotbar] run function items:give/missile/tomatwo {count:1}

#Game tracking
execute unless entity @s[tag=BackToma] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenToma
execute unless entity @s[tag=BackToma] run tag @e[x=0,type=armor_stand,tag=Bot] add HasToma