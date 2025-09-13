##Gives executor a Blade
#Antidupe check
execute store result score @s HasBlade run clear @s *[custom_data~{id:"missile/blade"}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasBlade %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasBlade=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasBlade 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBlade=1..},tag=!fullHotbar,tag=!BackBlade,tag=!itemDeducted] actionbar {"text":"Blade already obtained.","color":"aqua"}
execute if entity @s[scores={HasBlade=1..},tag=!fullHotbar,tag=!BackBlade,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackBlade,tag=itemDeducted] actionbar {"text":"Blade already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackBlade,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBlade=0},tag=!fullHotbar,tag=!BackBlade,tag=!itemDeducted] actionbar {"text":"Blade obtained.","color":"aqua"}
execute if entity @s[scores={HasBlade=0},tag=!fullHotbar] run function items:give/missile/blade {count:1}

#Game tracking
execute unless entity @s[tag=BackBlade] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenBlade
execute unless entity @s[tag=BackBlade] run tag @e[x=0,type=armor_stand,tag=Bot] add HasBlade